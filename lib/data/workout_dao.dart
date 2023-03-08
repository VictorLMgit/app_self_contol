import 'package:app_self_control/data/database.dart';
import 'package:app_self_control/models/Workout.dart';
import 'package:sqflite/sqflite.dart';

class WorkOutDao {
  static const tableSql =
      "CREATE TABLE activities_workout(id INTEGER PRIMARY KEY, type TEXT, workout_type TEXT, intensity TEXT, mood TEXT, time_workout TEXT, avaliation INTEGER, additional TEXT, notes TEXT, date TEXT)";

  static const String _tableName = "activities_workout";

  Map<String, dynamic> toMap(Workout workout) {
    print("Convertendo para map: ");
    final Map<String, dynamic> workoutMap = Map();
    workoutMap['type'] = workout.type;
    workoutMap['workout_type'] = workout.workout_type;
    workoutMap['intensity'] = workout.intensity;
    workoutMap['mood'] = workout.mood;
    workoutMap['time_workout'] = workout.time_workout;
    workoutMap['avaliation'] = workout.avaliation;
    workoutMap['additional'] = workout.additional;
    workoutMap['notes'] = workout.notes;
    workoutMap['date'] = workout.date;
    print("Mapa de Workout: $workoutMap");
    return workoutMap;
  }

  save(Workout workout) async {
    print("Iniciando o Save...");
    final Database dbConnection = await getDatabase();
    Map<String, dynamic> workoutMap = toMap(workout);
    return await dbConnection.insert(_tableName, workoutMap);
  }

  List<Workout> toList(List<Map<String, dynamic>> workoutMap) {
    print("Convertendo To list...");
    final List<Workout> workouts = [];

    for (Map<String, dynamic> line in workoutMap) {
      final Workout workout = Workout(
          id: line['id'],
          type: line['type'],
          workout_type: line['workout_type'],
          intensity: line['intensity'],
          mood: line['mood'],
          time_workout: line['time_workout'],
          avaliation: line['avaliation'],
          additional: line['additional'],
          notes: line['notes'],
          date: line['date']);

      workouts.add(workout);
    }
    return workouts;
  }

  Future<List<Workout>> findAll() async {
    print("Acessando o findAll: ");
    final Database db_connection = await getDatabase();
    final List<Map<String, dynamic>> result =
        await db_connection.query(_tableName);
    print("Procurando dados no banco de dados... Encontrado: $result");
    return toList(result);
  }

  Future<List<Workout>> find(int id) async {
    print("Acessando o find: ");
    final Database dbConnection = await getDatabase();
    final List<Map<String, dynamic>> result =
        await dbConnection.query(_tableName, where: "id = ?", whereArgs: [id]);
    print("Procurando dados no banco de dados... Encontrado: $result");
    return toList(result);
  }

  delete(String id) async {
    print("Deletando Alimentacao $id");
    final Database dbConnection = await getDatabase();
    return dbConnection.delete(_tableName, where: 'id = ?', whereArgs: [id]);
  }
}

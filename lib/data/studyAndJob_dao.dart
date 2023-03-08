import 'package:app_self_control/data/database.dart';
import 'package:app_self_control/models/StudyAndJob.dart';
import 'package:sqflite/sqflite.dart';

class StudyAndJobDao {
  static const tableSql =
      "CREATE TABLE activities_studyAndJob(id INTEGER PRIMARY KEY, type TEXT, work_activity TEXT, study_activity TEXT, mental_health TEXT, avaliation INTEGER, additional TEXT, notes TEXT, date TEXT)";

  static const String _tableName = "activities_studyAndJob";

  Map<String, dynamic> toMap(StudyAndJob studyAndJob) {
    print("Convertendo para map: ");
    final Map<String, dynamic> studyAndJobMap = Map();
    studyAndJobMap['type'] = studyAndJob.type;
    studyAndJobMap['work_activity'] = studyAndJob.work_activity;
    studyAndJobMap['study_activity'] = studyAndJob.study_activity;
    studyAndJobMap['mental_health'] = studyAndJob.mental_health;

    studyAndJobMap['avaliation'] = studyAndJob.avaliation;
    studyAndJobMap['additional'] = studyAndJob.additional;
    studyAndJobMap['notes'] = studyAndJob.notes;
    studyAndJobMap['date'] = studyAndJob.date;
    print("Mapa de StudyAndJob: $studyAndJobMap");
    return studyAndJobMap;
  }

  save(StudyAndJob studyAndJob) async {
    print("Iniciando o Save...");
    final Database dbConnection = await getDatabase();
    Map<String, dynamic> studyAndJobMap = toMap(studyAndJob);
    return await dbConnection.insert(_tableName, studyAndJobMap);
  }

  List<StudyAndJob> toList(List<Map<String, dynamic>> studyAndJobMap) {
    print("Convertendo To list...");
    final List<StudyAndJob> studyAndJobs = [];

    for (Map<String, dynamic> line in studyAndJobMap) {
      final StudyAndJob studyAndJob = StudyAndJob(
          id: line['id'],
          type: line['type'],
          work_activity: line['work_activity'],
          study_activity: line['study_activity'],
          mental_health: line['mental_health'],
          avaliation: line['avaliation'],
          additional: line['additional'],
          notes: line['notes'],
          date: line['date']);

      studyAndJobs.add(studyAndJob);
    }
    return studyAndJobs;
  }

  Future<List<StudyAndJob>> findAll() async {
    print("Acessando o findAll: ");
    final Database db_connection = await getDatabase();
    final List<Map<String, dynamic>> result =
        await db_connection.query(_tableName);
    print("Procurando dados no banco de dados... Encontrado: $result");
    return toList(result);
  }

  Future<List<StudyAndJob>> find(int id) async {
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

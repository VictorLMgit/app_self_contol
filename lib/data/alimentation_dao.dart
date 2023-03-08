import 'package:app_self_control/components/alimentationComponents/AlimentationItem.dart';
import 'package:app_self_control/data/database.dart';
import 'package:app_self_control/models/Alimentation.dart';
import 'package:sqflite/sqflite.dart';

class AlimentationDao {
  static const String tableSql =
      "CREATE TABLE $_tableName(id INTEGER PRIMARY KEY, type TEXT, ref1 TEXT, ref2 TEXT, ref3 TEXT, ref4 TEXT, avaliation INTEGER, additional TEXT, notes TEXT, date TEXT)";

  static const String _tableName = "activities_alimentation";

  Map<String, dynamic> toMap(AlimentationItem alimentationItem) {
    print("Convertendo para map: ");
    final Map<String, dynamic> alimentationItemMap = Map();
    alimentationItemMap['type'] = alimentationItem.type;
    alimentationItemMap['ref1'] = alimentationItem.ref1;
    alimentationItemMap['ref2'] = alimentationItem.ref2;
    alimentationItemMap['ref3'] = alimentationItem.ref3;
    alimentationItemMap['ref4'] = alimentationItem.ref4;
    alimentationItemMap['avaliation'] = alimentationItem.avaliation;
    alimentationItemMap['additional'] = alimentationItem.additional;
    alimentationItemMap['notes'] = alimentationItem.notes;
    alimentationItemMap['date'] = alimentationItem.date;
    print("Mapa de alimentação: $alimentationItemMap");
    return alimentationItemMap;
  }

  save(AlimentationItem alimentationItem) async {
    print("Iniciando o Save...");
    final Database db_connection = await getDatabase();
    Map<String, dynamic> alimentationItemMap = toMap(alimentationItem);
    return await db_connection.insert(_tableName, alimentationItemMap);
  }

  List<AlimentationItem> toList(List<Map<String, dynamic>> alimentationItemMap) {
    print("Convertendo To list...");
    final List<AlimentationItem> alimentationItems = [];

    for (Map<String, dynamic> line in alimentationItemMap) {
      final AlimentationItem alimentationItem = AlimentationItem(
          id: line['id'],
          type: line['type'],
          ref1: line['ref1'],
          ref2: line['ref2'],
          ref3: line['ref3'],
          ref4: line['ref4'],
          avaliation: line['avaliation'],
          additional: line['additional'],
          notes: line['notes'],
          date: line['date']);

      alimentationItems.add(alimentationItem);
    }
    return alimentationItems;
  }

  Future<List<AlimentationItem>> findAll() async {
    print("Acessando o findAll: ");
    final Database db_connection = await getDatabase();
    final List<Map<String, dynamic>> result =
        await db_connection.query(_tableName);
    print("Procurando dados no banco de dados... Encontrado: $result");
    return toList(result);
  }

  Future<List<AlimentationItem>> find(int id) async {
    print("Acessando o find: ");
    final Database db_connection = await getDatabase();
    final List<Map<String, dynamic>> result =
        await db_connection.query(_tableName, where: "id = ?", whereArgs: [id]);
    print("Procurando dados no banco de dados... Encontrado: $result");
    return toList(result);
  }

  delete(String id) async {
    print("Deletando Alimentacao $id");
    final Database db_connection = await getDatabase();
    return db_connection.delete(_tableName, where: 'id = ?', whereArgs: [id]);
  }
}

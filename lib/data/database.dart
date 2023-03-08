

import 'package:app_self_control/data/alimentation_dao.dart';
import 'package:app_self_control/data/studyAndJob_dao.dart';
import 'package:app_self_control/data/workout_dao.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

Future<Database> getDatabase() async {
  final String path = join(await getDatabasesPath(), 'activity');
  return openDatabase(path, onCreate: (db, version) {
    db.execute(AlimentationDao.tableSql);
    db.execute(StudyAndJobDao.tableSql);
    db.execute(WorkOutDao.tableSql);
  }, version: 1);
}
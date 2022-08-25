import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'ClientModel.dart';

class DBProvider {
  DBProvider._();

  static final DBProvider db = DBProvider._();

  Database? _database;

  Future<Database?> get database async {
    if (_database != null) return _database;
    _database = await initDB();
    return _database;
  }

  initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "StudentList.db");
    return await openDatabase(path, version: 1, onOpen: (db) {},
        onCreate: (Database db, int version) async {
      await db.execute("CREATE TABLE StudentDataBase ("
          "id DOUBLE PRIMARY KEY,"
          "courseID DOUBLE,"
          "topicID DOUBLE,"
          "courseName TEXT,"
          "courseDescription TEXT,"
          "videoURl TEXT"
          "StudentName TEXT,"
          "CLassId DOUBLE,"
          "StudentGrade TEXT,"
          "StudentQuestion TEXT"
          ")");
    });
  }

  newDatabase(StudentDatabase newDatabase) async {
    final db = await database;
    var raw = await db?.insert("StudentDatabase", newDatabase.toMap());

   // print("videos $raw");
    return raw;
  }

  updateDatabase(StudentDatabase newDatabase) async {
    final db = await database;
    var res = await db?.update("Student oDatabase", newDatabase.toMap(),
        where: "id = ?", whereArgs: [newDatabase.id]);
    return res;
  }

  Future<StudentDatabase> findVideoByCourseId(double courseId)async{
    final db = await database;
    var res = await db?.query("StudentDatabase", where: "courseID = ?", whereArgs: [courseId]);
    //print("videos $res");
    return res!.isNotEmpty ? StudentDatabase.fromMap(res.first) : null;
  }

  getDatabase(double id) async {
    final db = await database;
    var res = await db?.query("StudentDatabase", where: "id = ?", whereArgs: [id]);
    //print("videos $res");
    return res!.isNotEmpty ? StudentDatabase.fromMap(res.first) : null;

  }
  Future<List<StudentDatabase>> getAllVideos() async {
    final db = await database;
    var res = await db?.query("StudentDatabase");
    List<StudentDatabase> list =
        res!.isNotEmpty ? res.map((c) => StudentDatabase.fromMap(c)).toList() : [];
    //print("list is ${list.length}");
    return list;
  }

   deleteVideos(double id) async {
    final db = await database;
    return db?.delete("StudentDatabase", where: "id = ?", whereArgs: [id]);
  }

  deleteAll() async {
    final db = await database;
    db?.rawQuery("Delete * from StudentDatabase");
  }
}

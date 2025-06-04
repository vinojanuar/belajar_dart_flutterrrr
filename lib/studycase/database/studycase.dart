import 'package:belajar_dart_flutter/studycase/model/siswa_model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  static Future<Database> db() async {
    final dbPath = await getDatabasesPath();
    return openDatabase(
      join(dbPath, 'siswa.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE siswa (id INTEGER PRIMARY KEY AUTOINCREMENT, nama TEXT, umur INTEGER)',
        );
      },
    );
  }

  Future<void> insertSiswa(Siswa siswa) async {
    final db = await DBHelper.db();
    await db.insert(
      'siswa',
      siswa.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }
}

//membuat fungsi get
Future<List<Siswa>> getAllSiswa() async {
  final db = await DBHelper.db();
  final List<Map<String, dynamic>> maps = await db.query('siswa');

  return List.generate(maps.length, (i) => Siswa.fromMap(maps[i]));
}

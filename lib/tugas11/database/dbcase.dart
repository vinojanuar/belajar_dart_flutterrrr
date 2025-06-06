import 'package:belajar_dart_flutter/tugas11/model/model_kost.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Dbkost {
  static Future<Database> db() async {
    final dbPath = await getDatabasesPath();
    return openDatabase(
      join(dbPath, 'kost.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE anakkost (id INTEGER PRIMARY KEY AUTOINCREMENT, nama TEXT, nomorhandphone INTEGER, nomorkamar INTEGER, umur INTEGER)',
        );
      },
      onUpgrade: (db, oldVersion, newVersion) {},
      version: 1,
    );
  }

  Future<void> insertSiswa(Kost anakkost) async {
    final db = await Dbkost.db();
    await db.insert(
      'anakkost',
      anakkost.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  static Future<List<Kost>> getAllKost() async {
    final db = await Dbkost.db();
    final List<Map<String, dynamic>> maps = await db.query('anakkost');

    return List.generate(maps.length, (i) => Kost.fromMap(maps[i]));
  }

  Future<void> updateKost(Kost anakkost) async {
    final db = await Dbkost.db();
    await db.update(
      'anakkost',
      anakkost.toMap(),
      where: 'id = ?',
      whereArgs: [anakkost.id],
    );
  }

  Future<void> deleteKost(int id) async {
    final db = await Dbkost.db();
    await db.delete('anakkost', where: 'id = ?', whereArgs: [id]);
  }
}

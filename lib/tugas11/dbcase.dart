import 'package:sqflite/sqflite.dart';

class Dbcase {
  static Future<Database> db() async {
    final dbPath = await getDatabasesPath();
    return openDatabase(
      join(dbPath, 'siswa.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE siswa(id INTEGER PRIMARY KEY AUTOINCREMENT, nama TEXT, umur INTEGER)',
        );
      },
      onUpgrade: (db, oldVersion, newVersion) {},
      version: 1,
    );
  }
}

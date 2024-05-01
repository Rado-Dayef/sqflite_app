import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class AppDatabase {
  static Database? _database;
  static final AppDatabase instance = AppDatabase.constructor();

  AppDatabase.constructor();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await initDatabase();
    return _database!;
  }

  /// To initialize the database.
  initDatabase() async {
    String path = join(await getDatabasesPath(), "database.db");
    return await openDatabase(
      path,
      version: 1,
      onCreate: (Database db, int version) async {
        await db.execute('''
          CREATE TABLE Person (
            personID INTEGER PRIMARY KEY,
            name TEXT,
            age REAL,
            nationalityID INTEGER,
            birthDate TEXT
          )
        ''');
      },
    );
  }

  /// To get the persons
  Future<List<Map<String, dynamic>>> getPersons() async {
    final Database db = await database;
    return await db.query('Person');
  }

  /// To add data into the database.
  Future<void> insertPerson(Map<String, dynamic> person) async {
    final Database db = await database;
    await db.insert(
      'Person',
      person,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }
}

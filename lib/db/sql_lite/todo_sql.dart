import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class TodoSQL {
  static final TodoSQL instance = TodoSQL._init();

  static Database? _database;

  TodoSQL._init();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('notes.db');
    return _database!;
  }

  Future<Database> _initDB(String fileName) async {
    final path = await getDatabasesPath();
    final dbPath = join(path, fileName);

    return await openDatabase(dbPath, version: 1, onCreate: _onCreateDB);
  }

  Future _onCreateDB(Database db, int version) async {}

  Future closeDB() async {
    final Database db = await instance.database;
    db.close();
  }
}

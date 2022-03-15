import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:todo_flutter_moor/db/sql_lite/todo_model.dart';

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

  Future _onCreateDB(Database db, int version) async {
    const numType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    const textType = 'TEXT NOT NULL';
    /*const timeType = 'DATETIME NULL';*/
    const boolType = 'BOOLEAN NOT NULL DEFAULT FALSE';

    await db.execute('''CREATE TABLE $tableName (
    ${TodoFields.id} $numType ,
    ${TodoFields.title} $textType,
    ${TodoFields.targetTime} $textType,
    ${TodoFields.isCompleted} $boolType,
   
    )''');
  }

  Future<SQLTodo> create(SQLTodo todo) async {
    final db = await instance.database;

    final id = await db.insert(tableName, todo.toJson());
    return todo.copy({id: id});
  }

  Future closeDB() async {
    final Database db = await instance.database;
    db.close();
  }
}

import 'package:drift/drift.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:todo_flutter_moor/db/drift/todo_table_drift.dart';

part 'database_drift.g.dart';

@DriftDatabase(tables: [DTodos])
class TodoDriftDatabase extends _$TodoDriftDatabase {
  TodoDriftDatabase()
      : super(
          FlutterQueryExecutor.inDatabaseFolder(
            path: 'todoDB.sqlite',
            logStatements: true,
          ),
        );

  @override
  int get schemaVersion => 1;

  Future<List<DTodo>> getAllTasks() => select(dTodos).get();
  Stream<List<DTodo>> watchAllTasks() => select(dTodos).watch();

  Future insertTodo(Insertable<DTodo> todo) => into(dTodos).insert(todo);
  Future updateTodo(Insertable<DTodo> todo) => update(dTodos).replace(todo);
  Future deleteTodo(Insertable<DTodo> todo) => delete(dTodos).delete(todo);
}

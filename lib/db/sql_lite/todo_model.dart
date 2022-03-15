const String tableName = "SQLTodoTable";

class TodoFields {
  static const String id = '_id';
  static const String title = 'title';
  static const String targetTime = 'targetTime';
  static const String isCompleted = 'isCompleted';
}

class SQLTodo {
  final int? id;
  final String title;
  final DateTime? targetTime;
  final bool isCompleted;

  const SQLTodo({
    this.id,
    required this.title,
    this.targetTime,
    required this.isCompleted,
  });

  Map<String, Object?> toJson() => {
        TodoFields.id: id,
        TodoFields.title: title,
        TodoFields.targetTime: targetTime?.toIso8601String(),
        TodoFields.isCompleted: isCompleted ? 1 : 0,
      };

  Future<SQLTodo> copy({
    int? id,
    String? title,
  }) {}
}

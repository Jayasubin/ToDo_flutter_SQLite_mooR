// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database_drift.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class DTodo extends DataClass implements Insertable<DTodo> {
  final int todoID;
  final String title;
  final bool isCompleted;
  final DateTime? targetTime;
  DTodo(
      {required this.todoID,
      required this.title,
      required this.isCompleted,
      this.targetTime});
  factory DTodo.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return DTodo(
      todoID: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}todo_i_d'])!,
      title: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}title'])!,
      isCompleted: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_completed'])!,
      targetTime: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}target_time']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['todo_i_d'] = Variable<int>(todoID);
    map['title'] = Variable<String>(title);
    map['is_completed'] = Variable<bool>(isCompleted);
    if (!nullToAbsent || targetTime != null) {
      map['target_time'] = Variable<DateTime?>(targetTime);
    }
    return map;
  }

  DTodosCompanion toCompanion(bool nullToAbsent) {
    return DTodosCompanion(
      todoID: Value(todoID),
      title: Value(title),
      isCompleted: Value(isCompleted),
      targetTime: targetTime == null && nullToAbsent
          ? const Value.absent()
          : Value(targetTime),
    );
  }

  factory DTodo.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DTodo(
      todoID: serializer.fromJson<int>(json['todoID']),
      title: serializer.fromJson<String>(json['title']),
      isCompleted: serializer.fromJson<bool>(json['isCompleted']),
      targetTime: serializer.fromJson<DateTime?>(json['targetTime']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'todoID': serializer.toJson<int>(todoID),
      'title': serializer.toJson<String>(title),
      'isCompleted': serializer.toJson<bool>(isCompleted),
      'targetTime': serializer.toJson<DateTime?>(targetTime),
    };
  }

  DTodo copyWith(
          {int? todoID,
          String? title,
          bool? isCompleted,
          DateTime? targetTime}) =>
      DTodo(
        todoID: todoID ?? this.todoID,
        title: title ?? this.title,
        isCompleted: isCompleted ?? this.isCompleted,
        targetTime: targetTime ?? this.targetTime,
      );
  @override
  String toString() {
    return (StringBuffer('DTodo(')
          ..write('todoID: $todoID, ')
          ..write('title: $title, ')
          ..write('isCompleted: $isCompleted, ')
          ..write('targetTime: $targetTime')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(todoID, title, isCompleted, targetTime);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DTodo &&
          other.todoID == this.todoID &&
          other.title == this.title &&
          other.isCompleted == this.isCompleted &&
          other.targetTime == this.targetTime);
}

class DTodosCompanion extends UpdateCompanion<DTodo> {
  final Value<int> todoID;
  final Value<String> title;
  final Value<bool> isCompleted;
  final Value<DateTime?> targetTime;
  const DTodosCompanion({
    this.todoID = const Value.absent(),
    this.title = const Value.absent(),
    this.isCompleted = const Value.absent(),
    this.targetTime = const Value.absent(),
  });
  DTodosCompanion.insert({
    this.todoID = const Value.absent(),
    required String title,
    this.isCompleted = const Value.absent(),
    this.targetTime = const Value.absent(),
  }) : title = Value(title);
  static Insertable<DTodo> custom({
    Expression<int>? todoID,
    Expression<String>? title,
    Expression<bool>? isCompleted,
    Expression<DateTime?>? targetTime,
  }) {
    return RawValuesInsertable({
      if (todoID != null) 'todo_i_d': todoID,
      if (title != null) 'title': title,
      if (isCompleted != null) 'is_completed': isCompleted,
      if (targetTime != null) 'target_time': targetTime,
    });
  }

  DTodosCompanion copyWith(
      {Value<int>? todoID,
      Value<String>? title,
      Value<bool>? isCompleted,
      Value<DateTime?>? targetTime}) {
    return DTodosCompanion(
      todoID: todoID ?? this.todoID,
      title: title ?? this.title,
      isCompleted: isCompleted ?? this.isCompleted,
      targetTime: targetTime ?? this.targetTime,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (todoID.present) {
      map['todo_i_d'] = Variable<int>(todoID.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (isCompleted.present) {
      map['is_completed'] = Variable<bool>(isCompleted.value);
    }
    if (targetTime.present) {
      map['target_time'] = Variable<DateTime?>(targetTime.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DTodosCompanion(')
          ..write('todoID: $todoID, ')
          ..write('title: $title, ')
          ..write('isCompleted: $isCompleted, ')
          ..write('targetTime: $targetTime')
          ..write(')'))
        .toString();
  }
}

class $DTodosTable extends DTodos with TableInfo<$DTodosTable, DTodo> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DTodosTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _todoIDMeta = const VerificationMeta('todoID');
  @override
  late final GeneratedColumn<int?> todoID = GeneratedColumn<int?>(
      'todo_i_d', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String?> title = GeneratedColumn<String?>(
      'title', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 3, maxTextLength: 25),
      type: const StringType(),
      requiredDuringInsert: true);
  final VerificationMeta _isCompletedMeta =
      const VerificationMeta('isCompleted');
  @override
  late final GeneratedColumn<bool?> isCompleted = GeneratedColumn<bool?>(
      'is_completed', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (is_completed IN (0, 1))',
      defaultValue: const Constant(false));
  final VerificationMeta _targetTimeMeta = const VerificationMeta('targetTime');
  @override
  late final GeneratedColumn<DateTime?> targetTime = GeneratedColumn<DateTime?>(
      'target_time', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [todoID, title, isCompleted, targetTime];
  @override
  String get aliasedName => _alias ?? 'd_todos';
  @override
  String get actualTableName => 'd_todos';
  @override
  VerificationContext validateIntegrity(Insertable<DTodo> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('todo_i_d')) {
      context.handle(_todoIDMeta,
          todoID.isAcceptableOrUnknown(data['todo_i_d']!, _todoIDMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('is_completed')) {
      context.handle(
          _isCompletedMeta,
          isCompleted.isAcceptableOrUnknown(
              data['is_completed']!, _isCompletedMeta));
    }
    if (data.containsKey('target_time')) {
      context.handle(
          _targetTimeMeta,
          targetTime.isAcceptableOrUnknown(
              data['target_time']!, _targetTimeMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {todoID};
  @override
  DTodo map(Map<String, dynamic> data, {String? tablePrefix}) {
    return DTodo.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $DTodosTable createAlias(String alias) {
    return $DTodosTable(attachedDatabase, alias);
  }
}

abstract class _$TodoDriftDatabase extends GeneratedDatabase {
  _$TodoDriftDatabase(QueryExecutor e)
      : super(SqlTypeSystem.defaultInstance, e);
  late final $DTodosTable dTodos = $DTodosTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [dTodos];
}

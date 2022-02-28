// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database_drift.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class DTodo extends DataClass implements Insertable<DTodo> {
  final int todoID;
  final int userID;
  final String title;
  final String? description;
  final bool isCompleted;
  final DateTime? targetTime;
  final DateTime? completedTime;
  DTodo(
      {required this.todoID,
      required this.userID,
      required this.title,
      this.description,
      required this.isCompleted,
      this.targetTime,
      this.completedTime});
  factory DTodo.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return DTodo(
      todoID: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}todo_i_d'])!,
      userID: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}user_i_d'])!,
      title: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}title'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      isCompleted: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_completed'])!,
      targetTime: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}target_time']),
      completedTime: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}completed_time']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['todo_i_d'] = Variable<int>(todoID);
    map['user_i_d'] = Variable<int>(userID);
    map['title'] = Variable<String>(title);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String?>(description);
    }
    map['is_completed'] = Variable<bool>(isCompleted);
    if (!nullToAbsent || targetTime != null) {
      map['target_time'] = Variable<DateTime?>(targetTime);
    }
    if (!nullToAbsent || completedTime != null) {
      map['completed_time'] = Variable<DateTime?>(completedTime);
    }
    return map;
  }

  DTodosCompanion toCompanion(bool nullToAbsent) {
    return DTodosCompanion(
      todoID: Value(todoID),
      userID: Value(userID),
      title: Value(title),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      isCompleted: Value(isCompleted),
      targetTime: targetTime == null && nullToAbsent
          ? const Value.absent()
          : Value(targetTime),
      completedTime: completedTime == null && nullToAbsent
          ? const Value.absent()
          : Value(completedTime),
    );
  }

  factory DTodo.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DTodo(
      todoID: serializer.fromJson<int>(json['todoID']),
      userID: serializer.fromJson<int>(json['userID']),
      title: serializer.fromJson<String>(json['title']),
      description: serializer.fromJson<String?>(json['description']),
      isCompleted: serializer.fromJson<bool>(json['isCompleted']),
      targetTime: serializer.fromJson<DateTime?>(json['targetTime']),
      completedTime: serializer.fromJson<DateTime?>(json['completedTime']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'todoID': serializer.toJson<int>(todoID),
      'userID': serializer.toJson<int>(userID),
      'title': serializer.toJson<String>(title),
      'description': serializer.toJson<String?>(description),
      'isCompleted': serializer.toJson<bool>(isCompleted),
      'targetTime': serializer.toJson<DateTime?>(targetTime),
      'completedTime': serializer.toJson<DateTime?>(completedTime),
    };
  }

  DTodo copyWith(
          {int? todoID,
          int? userID,
          String? title,
          String? description,
          bool? isCompleted,
          DateTime? targetTime,
          DateTime? completedTime}) =>
      DTodo(
        todoID: todoID ?? this.todoID,
        userID: userID ?? this.userID,
        title: title ?? this.title,
        description: description ?? this.description,
        isCompleted: isCompleted ?? this.isCompleted,
        targetTime: targetTime ?? this.targetTime,
        completedTime: completedTime ?? this.completedTime,
      );
  @override
  String toString() {
    return (StringBuffer('DTodo(')
          ..write('todoID: $todoID, ')
          ..write('userID: $userID, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('isCompleted: $isCompleted, ')
          ..write('targetTime: $targetTime, ')
          ..write('completedTime: $completedTime')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(todoID, userID, title, description,
      isCompleted, targetTime, completedTime);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DTodo &&
          other.todoID == this.todoID &&
          other.userID == this.userID &&
          other.title == this.title &&
          other.description == this.description &&
          other.isCompleted == this.isCompleted &&
          other.targetTime == this.targetTime &&
          other.completedTime == this.completedTime);
}

class DTodosCompanion extends UpdateCompanion<DTodo> {
  final Value<int> todoID;
  final Value<int> userID;
  final Value<String> title;
  final Value<String?> description;
  final Value<bool> isCompleted;
  final Value<DateTime?> targetTime;
  final Value<DateTime?> completedTime;
  const DTodosCompanion({
    this.todoID = const Value.absent(),
    this.userID = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.isCompleted = const Value.absent(),
    this.targetTime = const Value.absent(),
    this.completedTime = const Value.absent(),
  });
  DTodosCompanion.insert({
    this.todoID = const Value.absent(),
    required int userID,
    required String title,
    this.description = const Value.absent(),
    this.isCompleted = const Value.absent(),
    this.targetTime = const Value.absent(),
    this.completedTime = const Value.absent(),
  })  : userID = Value(userID),
        title = Value(title);
  static Insertable<DTodo> custom({
    Expression<int>? todoID,
    Expression<int>? userID,
    Expression<String>? title,
    Expression<String?>? description,
    Expression<bool>? isCompleted,
    Expression<DateTime?>? targetTime,
    Expression<DateTime?>? completedTime,
  }) {
    return RawValuesInsertable({
      if (todoID != null) 'todo_i_d': todoID,
      if (userID != null) 'user_i_d': userID,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (isCompleted != null) 'is_completed': isCompleted,
      if (targetTime != null) 'target_time': targetTime,
      if (completedTime != null) 'completed_time': completedTime,
    });
  }

  DTodosCompanion copyWith(
      {Value<int>? todoID,
      Value<int>? userID,
      Value<String>? title,
      Value<String?>? description,
      Value<bool>? isCompleted,
      Value<DateTime?>? targetTime,
      Value<DateTime?>? completedTime}) {
    return DTodosCompanion(
      todoID: todoID ?? this.todoID,
      userID: userID ?? this.userID,
      title: title ?? this.title,
      description: description ?? this.description,
      isCompleted: isCompleted ?? this.isCompleted,
      targetTime: targetTime ?? this.targetTime,
      completedTime: completedTime ?? this.completedTime,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (todoID.present) {
      map['todo_i_d'] = Variable<int>(todoID.value);
    }
    if (userID.present) {
      map['user_i_d'] = Variable<int>(userID.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String?>(description.value);
    }
    if (isCompleted.present) {
      map['is_completed'] = Variable<bool>(isCompleted.value);
    }
    if (targetTime.present) {
      map['target_time'] = Variable<DateTime?>(targetTime.value);
    }
    if (completedTime.present) {
      map['completed_time'] = Variable<DateTime?>(completedTime.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DTodosCompanion(')
          ..write('todoID: $todoID, ')
          ..write('userID: $userID, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('isCompleted: $isCompleted, ')
          ..write('targetTime: $targetTime, ')
          ..write('completedTime: $completedTime')
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
  final VerificationMeta _userIDMeta = const VerificationMeta('userID');
  @override
  late final GeneratedColumn<int?> userID = GeneratedColumn<int?>(
      'user_i_d', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String?> title = GeneratedColumn<String?>(
      'title', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 3, maxTextLength: 25),
      type: const StringType(),
      requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 5, maxTextLength: 50),
      type: const StringType(),
      requiredDuringInsert: false);
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
  final VerificationMeta _completedTimeMeta =
      const VerificationMeta('completedTime');
  @override
  late final GeneratedColumn<DateTime?> completedTime =
      GeneratedColumn<DateTime?>('completed_time', aliasedName, true,
          type: const IntType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        todoID,
        userID,
        title,
        description,
        isCompleted,
        targetTime,
        completedTime
      ];
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
    if (data.containsKey('user_i_d')) {
      context.handle(_userIDMeta,
          userID.isAcceptableOrUnknown(data['user_i_d']!, _userIDMeta));
    } else if (isInserting) {
      context.missing(_userIDMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
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
    if (data.containsKey('completed_time')) {
      context.handle(
          _completedTimeMeta,
          completedTime.isAcceptableOrUnknown(
              data['completed_time']!, _completedTimeMeta));
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

class DUser extends DataClass implements Insertable<DUser> {
  final int userID;
  final String name;
  final String? password;
  final Uint8List? profileImage;
  DUser(
      {required this.userID,
      required this.name,
      this.password,
      this.profileImage});
  factory DUser.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return DUser(
      userID: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}user_i_d'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      password: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}password']),
      profileImage: const BlobType()
          .mapFromDatabaseResponse(data['${effectivePrefix}profile_image']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['user_i_d'] = Variable<int>(userID);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || password != null) {
      map['password'] = Variable<String?>(password);
    }
    if (!nullToAbsent || profileImage != null) {
      map['profile_image'] = Variable<Uint8List?>(profileImage);
    }
    return map;
  }

  DUsersCompanion toCompanion(bool nullToAbsent) {
    return DUsersCompanion(
      userID: Value(userID),
      name: Value(name),
      password: password == null && nullToAbsent
          ? const Value.absent()
          : Value(password),
      profileImage: profileImage == null && nullToAbsent
          ? const Value.absent()
          : Value(profileImage),
    );
  }

  factory DUser.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DUser(
      userID: serializer.fromJson<int>(json['userID']),
      name: serializer.fromJson<String>(json['name']),
      password: serializer.fromJson<String?>(json['password']),
      profileImage: serializer.fromJson<Uint8List?>(json['profileImage']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userID': serializer.toJson<int>(userID),
      'name': serializer.toJson<String>(name),
      'password': serializer.toJson<String?>(password),
      'profileImage': serializer.toJson<Uint8List?>(profileImage),
    };
  }

  DUser copyWith(
          {int? userID,
          String? name,
          String? password,
          Uint8List? profileImage}) =>
      DUser(
        userID: userID ?? this.userID,
        name: name ?? this.name,
        password: password ?? this.password,
        profileImage: profileImage ?? this.profileImage,
      );
  @override
  String toString() {
    return (StringBuffer('DUser(')
          ..write('userID: $userID, ')
          ..write('name: $name, ')
          ..write('password: $password, ')
          ..write('profileImage: $profileImage')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(userID, name, password, profileImage);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DUser &&
          other.userID == this.userID &&
          other.name == this.name &&
          other.password == this.password &&
          other.profileImage == this.profileImage);
}

class DUsersCompanion extends UpdateCompanion<DUser> {
  final Value<int> userID;
  final Value<String> name;
  final Value<String?> password;
  final Value<Uint8List?> profileImage;
  const DUsersCompanion({
    this.userID = const Value.absent(),
    this.name = const Value.absent(),
    this.password = const Value.absent(),
    this.profileImage = const Value.absent(),
  });
  DUsersCompanion.insert({
    this.userID = const Value.absent(),
    required String name,
    this.password = const Value.absent(),
    this.profileImage = const Value.absent(),
  }) : name = Value(name);
  static Insertable<DUser> custom({
    Expression<int>? userID,
    Expression<String>? name,
    Expression<String?>? password,
    Expression<Uint8List?>? profileImage,
  }) {
    return RawValuesInsertable({
      if (userID != null) 'user_i_d': userID,
      if (name != null) 'name': name,
      if (password != null) 'password': password,
      if (profileImage != null) 'profile_image': profileImage,
    });
  }

  DUsersCompanion copyWith(
      {Value<int>? userID,
      Value<String>? name,
      Value<String?>? password,
      Value<Uint8List?>? profileImage}) {
    return DUsersCompanion(
      userID: userID ?? this.userID,
      name: name ?? this.name,
      password: password ?? this.password,
      profileImage: profileImage ?? this.profileImage,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userID.present) {
      map['user_i_d'] = Variable<int>(userID.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (password.present) {
      map['password'] = Variable<String?>(password.value);
    }
    if (profileImage.present) {
      map['profile_image'] = Variable<Uint8List?>(profileImage.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DUsersCompanion(')
          ..write('userID: $userID, ')
          ..write('name: $name, ')
          ..write('password: $password, ')
          ..write('profileImage: $profileImage')
          ..write(')'))
        .toString();
  }
}

class $DUsersTable extends DUsers with TableInfo<$DUsersTable, DUser> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DUsersTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _userIDMeta = const VerificationMeta('userID');
  @override
  late final GeneratedColumn<int?> userID = GeneratedColumn<int?>(
      'user_i_d', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _passwordMeta = const VerificationMeta('password');
  @override
  late final GeneratedColumn<String?> password = GeneratedColumn<String?>(
      'password', aliasedName, true,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 6, maxTextLength: 12),
      type: const StringType(),
      requiredDuringInsert: false);
  final VerificationMeta _profileImageMeta =
      const VerificationMeta('profileImage');
  @override
  late final GeneratedColumn<Uint8List?> profileImage =
      GeneratedColumn<Uint8List?>('profile_image', aliasedName, true,
          type: const BlobType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [userID, name, password, profileImage];
  @override
  String get aliasedName => _alias ?? 'd_users';
  @override
  String get actualTableName => 'd_users';
  @override
  VerificationContext validateIntegrity(Insertable<DUser> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('user_i_d')) {
      context.handle(_userIDMeta,
          userID.isAcceptableOrUnknown(data['user_i_d']!, _userIDMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('password')) {
      context.handle(_passwordMeta,
          password.isAcceptableOrUnknown(data['password']!, _passwordMeta));
    }
    if (data.containsKey('profile_image')) {
      context.handle(
          _profileImageMeta,
          profileImage.isAcceptableOrUnknown(
              data['profile_image']!, _profileImageMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {userID};
  @override
  DUser map(Map<String, dynamic> data, {String? tablePrefix}) {
    return DUser.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $DUsersTable createAlias(String alias) {
    return $DUsersTable(attachedDatabase, alias);
  }
}

abstract class _$TodoDriftDatabase extends GeneratedDatabase {
  _$TodoDriftDatabase(QueryExecutor e)
      : super(SqlTypeSystem.defaultInstance, e);
  late final $DTodosTable dTodos = $DTodosTable(this);
  late final $DUsersTable dUsers = $DUsersTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [dTodos, dUsers];
}

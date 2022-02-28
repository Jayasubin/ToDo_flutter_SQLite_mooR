import 'package:drift/drift.dart';

class DTodos extends Table {
  IntColumn get todoID => integer().autoIncrement()();
  IntColumn get userID => integer()();
  TextColumn get title => text().withLength(min: 3, max: 25)();
  TextColumn get description => text().nullable().withLength(min: 5, max: 50)();
  BoolColumn get isCompleted => boolean().withDefault(const Constant(false))();
  DateTimeColumn get targetTime => dateTime().nullable()();
  DateTimeColumn get completedTime => dateTime().nullable()();
}

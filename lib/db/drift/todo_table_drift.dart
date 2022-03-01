import 'package:drift/drift.dart';

class DTodos extends Table {
  IntColumn get todoID => integer().autoIncrement()();
  TextColumn get title => text().withLength(min: 3, max: 25)();
  BoolColumn get isCompleted => boolean().withDefault(const Constant(false))();
  DateTimeColumn get targetTime => dateTime().nullable()();
}

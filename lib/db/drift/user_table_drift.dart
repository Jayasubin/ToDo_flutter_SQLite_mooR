import 'package:drift/drift.dart';

class DUsers extends Table {
  IntColumn get userID => integer().autoIncrement()();
  TextColumn get name => text()();
  //TextColumn get email => text()();
  TextColumn get password => text().nullable().withLength(min: 6, max: 12)();
  //TextColumn get token=>text().nullable()();
  BlobColumn get profileImage => blob().nullable()();
}

import 'package:drift/drift.dart';

class StationsEntity extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get radius => integer().named('radius')();
  TextColumn get longtitude => text().named('longtitude')();
  TextColumn get latitude => text().named('latitude')();
}

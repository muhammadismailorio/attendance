import 'dart:io';

import 'package:blueex_emp_app_flutter/features/attendance/data/drift_entity/stations.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;
part 'db.g.dart';

@DriftDatabase(tables: [StationsEntity])
class MyDatabase extends _$MyDatabase {
  // Your existing constructor, whatever it may be...
  MyDatabase() : super(NativeDatabase.memory());

  // this is the new constructor
  MyDatabase.connect(DatabaseConnection connection) : super.connect(connection);

  // you should bump this number whenever you change or add a table definition.
  // Migrations are covered later in the documentation.
  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(path.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}

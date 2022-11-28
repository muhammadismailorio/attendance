import 'package:drift/drift.dart';
import 'package:drift/native.dart';

DatabaseConnection backgroundConnection() {
  // Construct the database to use. This example uses a non-persistent in-memory
  // database each time. You can use your existing NativeDatabase with a file as
  // well, or a `LazyDatabase` if you need to construct it asynchronously. When
  // using a Flutter plugin like `path_provider` to determine the path, also see
  // the "Initialization on the main thread" section below!
  final database = NativeDatabase.memory();
  return DatabaseConnection(database);
}
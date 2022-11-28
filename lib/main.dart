import 'package:blueex_emp_app_flutter/background_service.dart';
import 'package:blueex_emp_app_flutter/resources/db.dart';
import 'package:blueex_emp_app_flutter/resources/db_background.dart';

import 'package:flutter/material.dart';

import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:blueex_emp_app_flutter/app.dart';
import 'package:path_provider/path_provider.dart';
import 'package:get_it/get_it.dart';

import 'package:drift/isolate.dart';

GetIt getIt = GetIt.instance;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final dir = await getApplicationDocumentsDirectory();

  final isolate = await DriftIsolate.spawn(backgroundConnection);
  final connection = await isolate.connect();
  final db = MyDatabase.connect(connection);

  GetIt.I.registerSingleton<MyDatabase>(db, signalsReady: true);

  final storage = await HydratedStorage.build(
    storageDirectory: dir,
  );

  await initializeService();

  HydratedBlocOverrides.runZoned(
    () => runApp(const MyApp()),
    storage: storage,
  );
}

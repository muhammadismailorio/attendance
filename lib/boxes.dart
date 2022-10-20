import 'package:blueex_emp_app_flutter/features/attendance/data/hive/station_data_model.dart';
import 'package:hive/hive.dart';

class Boxes {
  static Box<StationDataModel> getStations() => Hive.box<StationDataModel>('stations');
}
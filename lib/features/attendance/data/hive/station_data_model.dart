import 'package:hive/hive.dart';

part 'station_data_model.g.dart';

@HiveType(typeId: 0)
class StationDataModel extends HiveObject {
  @HiveField(0)
  final String longitude;
  @HiveField(1)
  final String latitude;
  @HiveField(2)
  final int radius;

  StationDataModel({
    required this.longitude,
    required this.latitude,
    required this.radius,
  });
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'station_data_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StationDataModelAdapter extends TypeAdapter<StationDataModel> {
  @override
  final int typeId = 0;

  @override
  StationDataModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StationDataModel(
      longitude: fields[0] as String,
      latitude: fields[1] as String,
      radius: fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, StationDataModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.longitude)
      ..writeByte(1)
      ..write(obj.latitude)
      ..writeByte(2)
      ..write(obj.radius);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StationDataModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

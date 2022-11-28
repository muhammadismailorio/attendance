// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db.dart';

// **************************************************************************
// DriftDatabaseGenerator
// **************************************************************************

// ignore_for_file: type=lint
class StationsEntityData extends DataClass
    implements Insertable<StationsEntityData> {
  final int id;
  final int radius;
  final String longtitude;
  final String latitude;
  const StationsEntityData(
      {required this.id,
      required this.radius,
      required this.longtitude,
      required this.latitude});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['radius'] = Variable<int>(radius);
    map['longtitude'] = Variable<String>(longtitude);
    map['latitude'] = Variable<String>(latitude);
    return map;
  }

  StationsEntityCompanion toCompanion(bool nullToAbsent) {
    return StationsEntityCompanion(
      id: Value(id),
      radius: Value(radius),
      longtitude: Value(longtitude),
      latitude: Value(latitude),
    );
  }

  factory StationsEntityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return StationsEntityData(
      id: serializer.fromJson<int>(json['id']),
      radius: serializer.fromJson<int>(json['radius']),
      longtitude: serializer.fromJson<String>(json['longtitude']),
      latitude: serializer.fromJson<String>(json['latitude']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'radius': serializer.toJson<int>(radius),
      'longtitude': serializer.toJson<String>(longtitude),
      'latitude': serializer.toJson<String>(latitude),
    };
  }

  StationsEntityData copyWith(
          {int? id, int? radius, String? longtitude, String? latitude}) =>
      StationsEntityData(
        id: id ?? this.id,
        radius: radius ?? this.radius,
        longtitude: longtitude ?? this.longtitude,
        latitude: latitude ?? this.latitude,
      );
  @override
  String toString() {
    return (StringBuffer('StationsEntityData(')
          ..write('id: $id, ')
          ..write('radius: $radius, ')
          ..write('longtitude: $longtitude, ')
          ..write('latitude: $latitude')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, radius, longtitude, latitude);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is StationsEntityData &&
          other.id == this.id &&
          other.radius == this.radius &&
          other.longtitude == this.longtitude &&
          other.latitude == this.latitude);
}

class StationsEntityCompanion extends UpdateCompanion<StationsEntityData> {
  final Value<int> id;
  final Value<int> radius;
  final Value<String> longtitude;
  final Value<String> latitude;
  const StationsEntityCompanion({
    this.id = const Value.absent(),
    this.radius = const Value.absent(),
    this.longtitude = const Value.absent(),
    this.latitude = const Value.absent(),
  });
  StationsEntityCompanion.insert({
    this.id = const Value.absent(),
    required int radius,
    required String longtitude,
    required String latitude,
  })  : radius = Value(radius),
        longtitude = Value(longtitude),
        latitude = Value(latitude);
  static Insertable<StationsEntityData> custom({
    Expression<int>? id,
    Expression<int>? radius,
    Expression<String>? longtitude,
    Expression<String>? latitude,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (radius != null) 'radius': radius,
      if (longtitude != null) 'longtitude': longtitude,
      if (latitude != null) 'latitude': latitude,
    });
  }

  StationsEntityCompanion copyWith(
      {Value<int>? id,
      Value<int>? radius,
      Value<String>? longtitude,
      Value<String>? latitude}) {
    return StationsEntityCompanion(
      id: id ?? this.id,
      radius: radius ?? this.radius,
      longtitude: longtitude ?? this.longtitude,
      latitude: latitude ?? this.latitude,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (radius.present) {
      map['radius'] = Variable<int>(radius.value);
    }
    if (longtitude.present) {
      map['longtitude'] = Variable<String>(longtitude.value);
    }
    if (latitude.present) {
      map['latitude'] = Variable<String>(latitude.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('StationsEntityCompanion(')
          ..write('id: $id, ')
          ..write('radius: $radius, ')
          ..write('longtitude: $longtitude, ')
          ..write('latitude: $latitude')
          ..write(')'))
        .toString();
  }
}

class $StationsEntityTable extends StationsEntity
    with TableInfo<$StationsEntityTable, StationsEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $StationsEntityTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _radiusMeta = const VerificationMeta('radius');
  @override
  late final GeneratedColumn<int> radius = GeneratedColumn<int>(
      'radius', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _longtitudeMeta = const VerificationMeta('longtitude');
  @override
  late final GeneratedColumn<String> longtitude = GeneratedColumn<String>(
      'longtitude', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _latitudeMeta = const VerificationMeta('latitude');
  @override
  late final GeneratedColumn<String> latitude = GeneratedColumn<String>(
      'latitude', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, radius, longtitude, latitude];
  @override
  String get aliasedName => _alias ?? 'stations_entity';
  @override
  String get actualTableName => 'stations_entity';
  @override
  VerificationContext validateIntegrity(Insertable<StationsEntityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('radius')) {
      context.handle(_radiusMeta,
          radius.isAcceptableOrUnknown(data['radius']!, _radiusMeta));
    } else if (isInserting) {
      context.missing(_radiusMeta);
    }
    if (data.containsKey('longtitude')) {
      context.handle(
          _longtitudeMeta,
          longtitude.isAcceptableOrUnknown(
              data['longtitude']!, _longtitudeMeta));
    } else if (isInserting) {
      context.missing(_longtitudeMeta);
    }
    if (data.containsKey('latitude')) {
      context.handle(_latitudeMeta,
          latitude.isAcceptableOrUnknown(data['latitude']!, _latitudeMeta));
    } else if (isInserting) {
      context.missing(_latitudeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  StationsEntityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return StationsEntityData(
      id: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      radius: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}radius'])!,
      longtitude: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}longtitude'])!,
      latitude: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}latitude'])!,
    );
  }

  @override
  $StationsEntityTable createAlias(String alias) {
    return $StationsEntityTable(attachedDatabase, alias);
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(e);
  _$MyDatabase.connect(DatabaseConnection c) : super.connect(c);
  late final $StationsEntityTable stationsEntity = $StationsEntityTable(this);
  @override
  Iterable<TableInfo<Table, dynamic>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [stationsEntity];
}

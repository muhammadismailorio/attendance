import 'package:blueex_emp_app_flutter/resources/db.dart';
import 'package:dartz/dartz.dart';
import 'package:blueex_emp_app_flutter/features/attendance/data/datasource/station_remote_datasource.dart';
import 'package:blueex_emp_app_flutter/features/attendance/data/mapper/station_mapper.dart';
import 'package:blueex_emp_app_flutter/features/attendance/data/model/station_model.dart';
import 'package:blueex_emp_app_flutter/features/attendance/data/repository/station_repository.dart';
import 'package:blueex_emp_app_flutter/features/attendance/domain/entity/station_entitiy.dart';
import 'package:blueex_emp_app_flutter/shared/error/failures.dart';
import 'package:get_it/get_it.dart';

class StationRepositoryImpl extends StationRepository {
  late StationRemoteDataSource _remoteDataSource;
  late StationMapper _mapper;

  StationRepositoryImpl({
    required StationRemoteDataSource stationRemoteDataSource,
    required StationMapper stationMapper,
  }) {
    _remoteDataSource = stationRemoteDataSource;
    _mapper = stationMapper;
  }

  @override
  Future<Either<Failure, List<Station>>> get({required String token}) async {
    try {
      List<StationModel> stationModel = await _remoteDataSource.get(token);
      final MyDatabase db = GetIt.I.get<MyDatabase>();
      db.delete(db.stationsEntity);

      List<Station> result =
          stationModel.map((data) => _mapper.mapModeltoEntity(data)).toList();

      for (var element in result) {
        await db.into(db.stationsEntity).insert(
              StationsEntityCompanion.insert(
                radius: element.radius,
                longtitude: element.longtitude,
                latitude: element.latitude,
              ),
            );
      }

      final stations = await db.select(db.stationsEntity).get();
      print(stations);

      return Right(result);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}

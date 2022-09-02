import 'package:blueex_emp_app_flutter/features/rider/data/datascource/pickup_remote_datasource.dart';
import 'package:blueex_emp_app_flutter/features/rider/data/mapper/pickup_mapper.dart';
import 'package:blueex_emp_app_flutter/features/rider/data/mapper/pickup_status_mapper.dart';
import 'package:blueex_emp_app_flutter/features/rider/data/model/pickup_model.dart';
import 'package:blueex_emp_app_flutter/features/rider/data/model/pickup_status_model.dart';
import 'package:blueex_emp_app_flutter/features/rider/data/repository/pickup_repository.dart';
import 'package:blueex_emp_app_flutter/features/rider/domain/entity/pickup_entity.dart';
import 'package:blueex_emp_app_flutter/features/rider/domain/entity/pickup_status_entity.dart';
import 'package:blueex_emp_app_flutter/shared/params/pickup_params.dart';
import 'package:dartz/dartz.dart';
import 'package:blueex_emp_app_flutter/shared/error/failures.dart';

class PickupRepositoryImpl extends PickupRepository {
  late PickupRemoteDataSource _remoteDataSource;
  late PickupMapper _mapper;
  late PickupStatusMapper _statusMapper;

  PickupRepositoryImpl({
    required PickupRemoteDataSource pickupRemoteDataSource,
    required PickupMapper pickupMapper,
    required PickupStatusMapper statusMapper,
  }) {
    _remoteDataSource = pickupRemoteDataSource;
    _mapper = pickupMapper;
    _statusMapper = statusMapper;
  }

  @override
  Future<Either<Failure, List<Pickup>>> getPickups(
      {required String token}) async {
    try {
      List<PickupModel> pickupModel = await _remoteDataSource.getPickups(token);

      List<Pickup> result =
          pickupModel.map((data) => _mapper.mapModeltoEntity(data)).toList();

      return Right(result);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, PickupStatus>> pickupStatus(
      PickupParams params) async {
    try {
      PickupStatusModel pickupModel =
          await _remoteDataSource.pickupStatus(params);

      PickupStatus result = _statusMapper.mapModeltoEntity(pickupModel);

      return Right(result);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}

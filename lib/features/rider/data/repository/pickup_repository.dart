import 'package:blueex_emp_app_flutter/features/rider/domain/entity/pickup_entity.dart';
import 'package:blueex_emp_app_flutter/features/rider/domain/entity/pickup_status_entity.dart';
import 'package:blueex_emp_app_flutter/shared/params/pickup_params.dart';
import 'package:dartz/dartz.dart';
import 'package:blueex_emp_app_flutter/shared/error/failures.dart';

abstract class PickupRepository {
  Future<Either<Failure, List<Pickup>>> getPickups({required String token});
  Future<Either<Failure, PickupStatus>> pickupStatus(PickupParams params);
}

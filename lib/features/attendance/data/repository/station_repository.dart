import 'package:dartz/dartz.dart';
import 'package:blueex_emp_app_flutter/shared/error/failures.dart';
import 'package:blueex_emp_app_flutter/features/attendance/domain/entity/station_entitiy.dart';

abstract class StationRepository {
  Future<Either<Failure, List<Station>>> get({required String token});
}

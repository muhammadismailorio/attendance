import 'package:dartz/dartz.dart';
import 'package:blueex_emp_app_flutter/features/user/domain/entity/user_entity.dart';
import 'package:blueex_emp_app_flutter/shared/error/failures.dart';

abstract class UserRepository {
  Future<Either<Failure, User>> login({
    required String empId,
  });
}

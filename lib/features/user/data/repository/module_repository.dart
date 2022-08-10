import 'package:blueex_emp_app_flutter/features/user/domain/entity/module_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:blueex_emp_app_flutter/shared/error/failures.dart';

abstract class ModuleRepository {
  Future<Either<Failure, List<Module>>> get({
    required String token,
  });
}

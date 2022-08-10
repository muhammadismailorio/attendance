import 'package:blueex_emp_app_flutter/features/user/domain/entity/slider_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:blueex_emp_app_flutter/shared/error/failures.dart';

abstract class SliderRepository {
  Future<Either<Failure, Slider>> get({
    required String token,
  });
}

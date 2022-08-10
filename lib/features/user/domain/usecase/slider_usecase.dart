import 'package:blueex_emp_app_flutter/features/user/domain/entity/slider_entity.dart';
import 'package:blueex_emp_app_flutter/features/user/domain/repository/slider_repository_impl.dart';
import 'package:blueex_emp_app_flutter/shared/params/token_params.dart';
import 'package:dartz/dartz.dart';
import 'package:blueex_emp_app_flutter/shared/error/failures.dart';
import 'package:blueex_emp_app_flutter/shared/usecase/usecase.dart';

class SliderUseCase extends UseCase<Slider, TokenParams> {
  final SliderRepositoryImpl repository;

  SliderUseCase({required this.repository});

  @override
  Future<Either<Failure, Slider>> call(TokenParams params) {
    return repository.get(token: params.token);
  }
}

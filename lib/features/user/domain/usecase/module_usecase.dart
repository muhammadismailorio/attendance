import 'package:blueex_emp_app_flutter/features/user/domain/entity/module_entity.dart';
import 'package:blueex_emp_app_flutter/features/user/domain/repository/module_repository_impl.dart';
import 'package:blueex_emp_app_flutter/shared/params/token_params.dart';
import 'package:dartz/dartz.dart';
import 'package:blueex_emp_app_flutter/shared/error/failures.dart';
import 'package:blueex_emp_app_flutter/shared/usecase/usecase.dart';

class ModuleUseCase extends UseCase<List<Module>, TokenParams> {
  final ModuleRepositoryImpl repository;

  ModuleUseCase({required this.repository});

  @override
  Future<Either<Failure, List<Module>>> call(TokenParams params) {
    return repository.get(token: params.token);
  }
}

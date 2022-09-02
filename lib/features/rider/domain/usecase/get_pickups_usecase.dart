import 'package:blueex_emp_app_flutter/features/rider/domain/entity/pickup_entity.dart';
import 'package:blueex_emp_app_flutter/features/rider/domain/repository/pickup_repository_impl.dart';
import 'package:dartz/dartz.dart';
import 'package:blueex_emp_app_flutter/shared/error/failures.dart';
import 'package:blueex_emp_app_flutter/shared/params/token_params.dart';
import 'package:blueex_emp_app_flutter/shared/usecase/usecase.dart';

class GetPickupseUseCase extends UseCase<List<Pickup>, TokenParams> {
  final PickupRepositoryImpl repository;

  GetPickupseUseCase({required this.repository});

  @override
  Future<Either<Failure, List<Pickup>>> call(TokenParams params) {
    return repository.getPickups(token: params.token);
  }
}

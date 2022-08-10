import 'package:blueex_emp_app_flutter/features/user/data/datasource/module_remote_datasource.dart';
import 'package:blueex_emp_app_flutter/features/user/data/mapper/module_mapper.dart';
import 'package:blueex_emp_app_flutter/features/user/data/model/module_model.dart';
import 'package:blueex_emp_app_flutter/features/user/data/repository/module_repository.dart';
import 'package:blueex_emp_app_flutter/features/user/domain/entity/module_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:blueex_emp_app_flutter/shared/error/failures.dart';

class ModuleRepositoryImpl extends ModuleRepository {
  late ModuleRemoteDataSource _remoteDataSource;
  late ModuleMapper _mapper;

  ModuleRepositoryImpl({
    required ModuleRemoteDataSource moduleRemoteDataSource,
    required ModuleMapper moduleMapper,
  }) {
    _remoteDataSource = moduleRemoteDataSource;
    _mapper = moduleMapper;
  }

  @override
  Future<Either<Failure, List<Module>>> get({
    required String token,
  }) async {
    try {
      List<ModuleModel> moduleModel = await _remoteDataSource.get(
        token,
      );

      List<Module> modules = moduleModel
          .map<Module>((mod) => _mapper.mapModeltoEntity(mod))
          .toList();

      return Right(modules);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}

import 'package:blueex_emp_app_flutter/features/user/data/datasource/slider_remote_datasource.dart';
import 'package:blueex_emp_app_flutter/features/user/data/mapper/slider_mapper.dart';
import 'package:blueex_emp_app_flutter/features/user/data/model/slider_model.dart';
import 'package:blueex_emp_app_flutter/features/user/data/repository/slider_repository.dart';
import 'package:blueex_emp_app_flutter/features/user/domain/entity/slider_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:blueex_emp_app_flutter/shared/error/failures.dart';

class SliderRepositoryImpl extends SliderRepository {
  late SliderRemoteDataSource _remoteDataSource;
  late SliderMapper _mapper;

  SliderRepositoryImpl({
    required SliderRemoteDataSource sliderRemoteDataSource,
    required SliderMapper sliderMapper,
  }) {
    _remoteDataSource = sliderRemoteDataSource;
    _mapper = sliderMapper;
  }

  @override
  Future<Either<Failure, Slider>> get({
    required String token,
  }) async {
    try {
      SliderModel sliderModel = await _remoteDataSource.get(
        token,
      );

      Slider result = _mapper.mapModeltoEntity(sliderModel);

      return Right(result);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}

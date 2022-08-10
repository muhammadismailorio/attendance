import 'package:blueex_emp_app_flutter/features/user/data/datasource/module_remote_datasource.dart';
import 'package:blueex_emp_app_flutter/features/user/data/datasource/slider_remote_datasource.dart';
import 'package:blueex_emp_app_flutter/features/user/data/mapper/module_mapper.dart';
import 'package:blueex_emp_app_flutter/features/user/data/mapper/slider_mapper.dart';
import 'package:blueex_emp_app_flutter/features/user/domain/repository/module_repository_impl.dart';
import 'package:blueex_emp_app_flutter/features/user/domain/repository/slider_repository_impl.dart';
import 'package:blueex_emp_app_flutter/features/user/domain/usecase/module_usecase.dart';
import 'package:blueex_emp_app_flutter/features/user/domain/usecase/slider_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:blueex_emp_app_flutter/features/user/data/datasource/user_remote_datasource.dart';
import 'package:blueex_emp_app_flutter/features/user/data/mapper/user_mapper.dart';
import 'package:blueex_emp_app_flutter/features/user/domain/repository/user_repository_impl.dart';
import 'package:blueex_emp_app_flutter/features/user/domain/usecase/login_usecase.dart';

class UserRepositoryProviders {
  static List<RepositoryProvider> providers = [
    // Login
    RepositoryProvider<LoginUseCase>(
      create: (context) => LoginUseCase(
        repository: UserRepositoryImpl(
            userMapper: UserMapper(),
            userRemoteDataSource: UserRemoteDataSource()),
      ),
    ),
    // Slider
    RepositoryProvider<SliderUseCase>(
      create: (context) => SliderUseCase(
        repository: SliderRepositoryImpl(
            sliderMapper: SliderMapper(),
            sliderRemoteDataSource: SliderRemoteDataSource()),
      ),
    ),
    // Module
    RepositoryProvider<ModuleUseCase>(
      create: (context) => ModuleUseCase(
        repository: ModuleRepositoryImpl(
            moduleMapper: ModuleMapper(),
            moduleRemoteDataSource: ModuleRemoteDataSource()),
      ),
    ),
  ];
}

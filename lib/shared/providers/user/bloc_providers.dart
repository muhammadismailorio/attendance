import 'package:blueex_emp_app_flutter/features/user/domain/usecase/module_usecase.dart';
import 'package:blueex_emp_app_flutter/features/user/domain/usecase/slider_usecase.dart';
import 'package:blueex_emp_app_flutter/features/user/presentation/cubits/module/module_cubit.dart';
import 'package:blueex_emp_app_flutter/features/user/presentation/cubits/slider/slider_cubit.dart';
import 'package:blueex_emp_app_flutter/features/user/presentation/cubits/user/user_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:blueex_emp_app_flutter/features/user/domain/usecase/login_usecase.dart';

class UserBlocProviders {
  static List<BlocProvider> providers = [
    // Login
    BlocProvider<UserCubit>(
      create: (context) => UserCubit(
        loginUseCase: context.read<LoginUseCase>(),
      ),
    ),
    // Slider
    BlocProvider<SliderCubit>(
      create: (context) => SliderCubit(
        sliderUseCase: context.read<SliderUseCase>(),
      ),
    ),
    // Modules
    BlocProvider<ModuleCubit>(
      create: (context) => ModuleCubit(
        moduleUseCase: context.read<ModuleUseCase>(),
      ),
    ),
  ];
}

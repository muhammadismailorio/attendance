import 'dart:convert';

import 'package:blueex_emp_app_flutter/features/user/domain/entity/module_entity.dart';
import 'package:blueex_emp_app_flutter/features/user/domain/usecase/module_usecase.dart';
import 'package:blueex_emp_app_flutter/shared/error/failures.dart';
import 'package:blueex_emp_app_flutter/shared/params/token_params.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'module_state.dart';

class ModuleCubit extends Cubit<ModuleState> with HydratedMixin {
  final ModuleUseCase moduleUseCase;

  ModuleCubit({
    required this.moduleUseCase,
  }) : super(ModuleState.initial());

  Future<void> get(String token) async {
    final Either<Failure, List<Module>> slider =
        await moduleUseCase.call(TokenParams(token: token));

    slider.fold(
      (Failure failure) {},
      (List<Module> modules) {
        emit(
          state.copyWith(modules: modules),
        );
      },
    );
  }

  @override
  ModuleState? fromJson(Map<String, dynamic> json) {
    return ModuleState.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(ModuleState state) {
    return state.toMap();
  }
}

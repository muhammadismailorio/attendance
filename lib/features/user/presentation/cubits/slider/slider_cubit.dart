import 'dart:convert';

import 'package:blueex_emp_app_flutter/features/user/domain/entity/slider_entity.dart';
import 'package:blueex_emp_app_flutter/features/user/domain/usecase/slider_usecase.dart';
import 'package:blueex_emp_app_flutter/shared/error/failures.dart';
import 'package:blueex_emp_app_flutter/shared/params/token_params.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'slider_state.dart';

class SliderCubit extends Cubit<SliderState> with HydratedMixin {
  final SliderUseCase sliderUseCase;

  SliderCubit({
    required this.sliderUseCase,
  }) : super(SliderState.initial());

  Future<void> get(String token) async {
    final Either<Failure, Slider> slider =
        await sliderUseCase.call(TokenParams(token: token));

    slider.fold(
      (Failure failure) {},
      (Slider slider) {
        emit(
          state.copyWith(images: slider.images),
        );
      },
    );
  }

  @override
  SliderState? fromJson(Map<String, dynamic> json) {
    return SliderState.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(SliderState state) {
    return state.toMap();
  }
}

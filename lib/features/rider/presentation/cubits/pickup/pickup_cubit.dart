import 'dart:convert';

import 'package:blueex_emp_app_flutter/features/rider/domain/entity/pickup_entity.dart';
import 'package:blueex_emp_app_flutter/features/rider/domain/usecase/get_pickups_usecase.dart';
import 'package:blueex_emp_app_flutter/shared/error/failures.dart';
import 'package:blueex_emp_app_flutter/shared/params/token_params.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'pickup_state.dart';

class PickupCubit extends Cubit<PickupState> with HydratedMixin {
  final GetPickupseUseCase getPickupUseCase;
  PickupCubit({
    required this.getPickupUseCase,
  }) : super(PickupState.initial());

  @override
  PickupState? fromJson(Map<String, dynamic> json) {
    return PickupState.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(PickupState state) {
    return state.toMap();
  }

  Future<void> get(String token) async {
    final Either<Failure, List<Pickup>> pickupData =
        await getPickupUseCase.call(TokenParams(token: token));

    pickupData.fold(
      (Failure failure) {},
      (List<Pickup> pickups) {
        emit(state.copyWith(pickups: pickups));
      },
    );
  }
}

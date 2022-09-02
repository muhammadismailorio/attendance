import 'package:blueex_emp_app_flutter/features/rider/domain/usecase/get_pickups_usecase.dart';
import 'package:blueex_emp_app_flutter/features/rider/presentation/cubits/pickup/pickup_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RiderBlocProviders {
  static List<BlocProvider> providers = [
    // Pickup
    BlocProvider<PickupCubit>(
      create: (context) => PickupCubit(
        getPickupUseCase: context.read<GetPickupseUseCase>(),
      ),
    ),
  ];
}

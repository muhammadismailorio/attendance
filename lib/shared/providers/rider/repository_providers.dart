import 'package:blueex_emp_app_flutter/features/rider/data/datascource/pickup_remote_datasource.dart';
import 'package:blueex_emp_app_flutter/features/rider/data/mapper/pickup_mapper.dart';
import 'package:blueex_emp_app_flutter/features/rider/data/mapper/pickup_status_mapper.dart';
import 'package:blueex_emp_app_flutter/features/rider/domain/repository/pickup_repository_impl.dart';
import 'package:blueex_emp_app_flutter/features/rider/domain/usecase/get_pickups_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RiderRepositoryProviders {
  static List<RepositoryProvider> providers = [
    // Get Pickups
    RepositoryProvider<GetPickupseUseCase>(
      create: (context) => GetPickupseUseCase(
        repository: PickupRepositoryImpl(
          pickupMapper: PickupMapper(),
          statusMapper: PickupStatusMapper(),
          pickupRemoteDataSource: PickupRemoteDataSource(),
        ),
      ),
    ),
  ];
}

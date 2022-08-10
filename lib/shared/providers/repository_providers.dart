import 'package:blueex_emp_app_flutter/shared/providers/attendance/repository_providers.dart';
import 'package:blueex_emp_app_flutter/shared/providers/rider/repository_providers.dart';
import 'package:blueex_emp_app_flutter/shared/providers/user/repository_providers.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RepositoryProviders {
  static List<RepositoryProvider> providers = [
    ...UserRepositoryProviders.providers,
    ...AttendanceRepositoryProviders.providers,
    ...RiderRepositoryProviders.providers,
  ];
}

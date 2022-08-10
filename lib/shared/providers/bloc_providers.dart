import 'package:blueex_emp_app_flutter/shared/providers/attendance/bloc_providers.dart';
import 'package:blueex_emp_app_flutter/shared/providers/rider/bloc_providers.dart';
import 'package:blueex_emp_app_flutter/shared/providers/user/bloc_providers.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocProviders {
  static List<BlocProvider> providers = [
    ...UserBlocProviders.providers,
    ...AttendanceBlocProviders.providers,
    ...RiderBlocProviders.providers,
  ];
}

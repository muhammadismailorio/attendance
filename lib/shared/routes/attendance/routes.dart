import 'package:flutter/material.dart';
import 'package:blueex_emp_app_flutter/features/attendance/presentation/screens/attendance/attendance_screen.dart';
import 'package:blueex_emp_app_flutter/features/attendance/presentation/screens/attendance_data/attendance_data_screen.dart';

class AttendanceRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    AttendanceScreen.id: (context) => const AttendanceScreen(),
    AttendanceDataScreen.id: (context) => const AttendanceDataScreen(),
  };
}

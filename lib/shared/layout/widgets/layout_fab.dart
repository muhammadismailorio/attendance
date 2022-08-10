import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:blueex_emp_app_flutter/features/attendance/presentation/screens/attendance/attendance_screen.dart';
import 'package:blueex_emp_app_flutter/shared/routes/navigate.dart';

class LayoutFAB extends StatelessWidget {
  const LayoutFAB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => Navigate.to(context, AttendanceScreen.id),
      child: SvgPicture.asset('assets/icons/shared/layout/nav_bar/time.svg'),
    );
  }
}

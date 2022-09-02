import 'package:blueex_emp_app_flutter/features/attendance/presentation/screens/attendance/attendance_screen.dart';
import 'package:blueex_emp_app_flutter/features/user/domain/entity/menu_entity.dart';
import 'package:blueex_emp_app_flutter/features/user/domain/entity/module_entity.dart';
import 'package:blueex_emp_app_flutter/features/user/presentation/screens/Home/widgets/carousal.dart';
import 'package:blueex_emp_app_flutter/features/user/presentation/screens/Home/widgets/home_items_grid.dart';
import 'package:blueex_emp_app_flutter/features/user/presentation/screens/Menu/menu_screen.dart';
import 'package:blueex_emp_app_flutter/shared/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:blueex_emp_app_flutter/features/user/presentation/screens/Home/widgets/hi.dart';
import 'package:blueex_emp_app_flutter/shared/layout/layout.dart';

part 'widgets/body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static String id = "home_screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Layout(
      currentTab: 1,
      body: SingleChildScrollView(
        child: Body(),
      ),
    );
  }
}

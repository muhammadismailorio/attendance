import 'package:blueex_emp_app_flutter/shared/layout/layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

part 'widgets/body.dart';

class PickupScreen extends StatelessWidget {
  const PickupScreen({Key? key}) : super(key: key);

  static String id = "pickup_screen";

  @override
  Widget build(BuildContext context) {
    return const Layout(
      body: Body(),
    );
  }
}

import 'package:blueex_emp_app_flutter/shared/layout/layout.dart';
import 'package:blueex_emp_app_flutter/shared/widgets/button.dart';
import 'package:blueex_emp_app_flutter/shared/widgets/top_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'widgets/body.dart';

class UpdatedStatusScreen extends StatelessWidget {
  const UpdatedStatusScreen({Key? key}) : super(key: key);

  static String id = "updated_status_screen";

  @override
  Widget build(BuildContext context) {
    return const Layout(
      body: Body(),
    );
  }
}

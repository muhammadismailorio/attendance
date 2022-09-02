import 'package:blueex_emp_app_flutter/shared/layout/layout.dart';
import 'package:blueex_emp_app_flutter/shared/widgets/button.dart';
import 'package:blueex_emp_app_flutter/shared/widgets/text_field.dart';
import 'package:blueex_emp_app_flutter/shared/widgets/text_field_container.dart';
import 'package:flutter/material.dart';

part 'widgets/body.dart';

class ManualSheetNumberScreen extends StatelessWidget {
  const ManualSheetNumberScreen({Key? key}) : super(key: key);

  static String id = "manual_sheet_number_screen";

  @override
  Widget build(BuildContext context) {
    return const Layout(
      body: SingleChildScrollView(
        child: Body(),
      ),
    );
  }
}

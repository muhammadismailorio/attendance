import 'package:blueex_emp_app_flutter/features/attendance/presentation/screens/attendance_data/widgets/table.dart';
import 'package:blueex_emp_app_flutter/shared/layout/layout.dart';
import 'package:blueex_emp_app_flutter/shared/widgets/app_table.dart';
import 'package:blueex_emp_app_flutter/shared/widgets/button.dart';
import 'package:blueex_emp_app_flutter/shared/widgets/date_selector.dart';
import 'package:blueex_emp_app_flutter/shared/widgets/search_bar.dart';
import 'package:blueex_emp_app_flutter/shared/widgets/text_field_container.dart';
import 'package:blueex_emp_app_flutter/shared/widgets/top_bar.dart';
import 'package:flutter/material.dart';

part 'widgets/body.dart';

class UndeliveredScreen extends StatelessWidget {
  const UndeliveredScreen({Key? key}) : super(key: key);

  static String id = "undelivered_shipments_screen";

  @override
  Widget build(BuildContext context) {
    return const Layout(
      body: SingleChildScrollView(
        child: Body(),
      ),
    );
  }
}

import 'package:blueex_emp_app_flutter/shared/layout/layout.dart';
import 'package:blueex_emp_app_flutter/shared/widgets/button.dart';
import 'package:blueex_emp_app_flutter/shared/widgets/dropdown.dart';
import 'package:blueex_emp_app_flutter/shared/widgets/text_area.dart';
import 'package:blueex_emp_app_flutter/shared/widgets/text_field_container.dart';
import 'package:blueex_emp_app_flutter/shared/widgets/top_bar.dart';
import 'package:flutter/material.dart';

part 'widgets/body.dart';

class ComplaintScreen extends StatelessWidget {
  const ComplaintScreen({Key? key}) : super(key: key);

  static String id = "complaint_screen";

  @override
  Widget build(BuildContext context) {
    return const Layout(
      body: SingleChildScrollView(
        child: Body(),
      ),
    );
  }
}

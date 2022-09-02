import 'package:blueex_emp_app_flutter/features/rider/presentation/screens/re_attempt_inner/re_Attempt_inner_screen.dart';
import 'package:blueex_emp_app_flutter/shared/layout/layout.dart';
import 'package:blueex_emp_app_flutter/shared/routes/navigate.dart';
import 'package:blueex_emp_app_flutter/shared/widgets/card_cell.dart';
import 'package:blueex_emp_app_flutter/shared/widgets/top_bar.dart';
import 'package:flutter/material.dart';

part 'widgets/body.dart';

class ReAttemptCNScreen extends StatelessWidget {
  const ReAttemptCNScreen({Key? key}) : super(key: key);

  static String id = "reattempt_cn_screen";

  @override
  Widget build(BuildContext context) {
    return const Layout(
      body: Body(),
    );
  }
}

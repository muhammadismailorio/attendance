import 'package:blueex_emp_app_flutter/shared/layout/layout.dart';
import 'package:blueex_emp_app_flutter/shared/widgets/top_bar.dart';
import 'package:flutter/material.dart';

part 'widgets/body.dart';

class TutorialScreen extends StatelessWidget {
  const TutorialScreen({Key? key}) : super(key: key);

  static String id = "tutorial_screen";

  @override
  Widget build(BuildContext context) {
    return const Layout(
      body: Body(),
    );
  }
}

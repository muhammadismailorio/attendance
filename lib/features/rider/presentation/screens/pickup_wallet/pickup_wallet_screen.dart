import 'package:blueex_emp_app_flutter/shared/layout/layout.dart';
import 'package:blueex_emp_app_flutter/shared/widgets/app_table.dart';
import 'package:blueex_emp_app_flutter/shared/widgets/button.dart';
import 'package:blueex_emp_app_flutter/shared/widgets/date_selector.dart';
import 'package:blueex_emp_app_flutter/shared/widgets/search_bar.dart';
import 'package:blueex_emp_app_flutter/shared/widgets/top_bar.dart';
import 'package:flutter/material.dart';

part 'widgets/body.dart';

class PickupWalletScreen extends StatelessWidget {
  const PickupWalletScreen({Key? key}) : super(key: key);

  static String id = "pickup_wallet_screen";

  @override
  Widget build(BuildContext context) {
    return const Layout(
      body: SingleChildScrollView(
        child: Body(),
      ),
    );
  }
}

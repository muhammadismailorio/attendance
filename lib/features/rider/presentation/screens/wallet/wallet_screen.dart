
import 'package:blueex_emp_app_flutter/features/rider/presentation/screens/delivery_wallet/delivery_wallet_screen.dart';
import 'package:blueex_emp_app_flutter/features/rider/presentation/screens/pickup_wallet/pickup_wallet_screen.dart';
import 'package:blueex_emp_app_flutter/shared/layout/layout.dart';
import 'package:blueex_emp_app_flutter/shared/routes/navigate.dart';
import 'package:blueex_emp_app_flutter/shared/widgets/button.dart';
import 'package:blueex_emp_app_flutter/shared/widgets/text_field.dart';
import 'package:blueex_emp_app_flutter/shared/widgets/text_field_container.dart';
import 'package:flutter/material.dart';

part 'widgets/body.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({Key? key}) : super(key: key);

  static String id = "wallet_screen";

  @override
  Widget build(BuildContext context) {
    return const Layout(
      body: SingleChildScrollView(
        child: Body(),
      ),
    );
  }
}

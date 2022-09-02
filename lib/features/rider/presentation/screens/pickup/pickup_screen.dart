import 'package:blueex_emp_app_flutter/features/rider/presentation/cubits/pickup/pickup_cubit.dart';
import 'package:blueex_emp_app_flutter/features/rider/presentation/screens/pickup/widgets/pickup_card.dart';
import 'package:blueex_emp_app_flutter/features/user/presentation/cubits/user/user_cubit.dart';
import 'package:blueex_emp_app_flutter/shared/layout/layout.dart';
import 'package:blueex_emp_app_flutter/shared/widgets/top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'widgets/body.dart';

class PickupScreen extends StatelessWidget {
  const PickupScreen({Key? key}) : super(key: key);

  static String id = "pickup_screen";

  @override
  Widget build(BuildContext context) {
    return Layout(
      body: Body(),
    );
  }
}

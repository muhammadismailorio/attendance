import 'package:blueex_emp_app_flutter/features/rider/presentation/screens/Complaint/complaint_screen.dart';
import 'package:blueex_emp_app_flutter/features/rider/presentation/screens/Pickup/pickup_screen.dart';
import 'package:blueex_emp_app_flutter/features/rider/presentation/screens/Tutorial/tutorial_screen.dart';
import 'package:blueex_emp_app_flutter/features/rider/presentation/screens/Verify/verify_screen.dart';
import 'package:blueex_emp_app_flutter/features/rider/presentation/screens/Wallet/wallet_screen.dart';
import 'package:blueex_emp_app_flutter/features/rider/presentation/screens/delivery_wallet/delivery_wallet_screen.dart';
import 'package:blueex_emp_app_flutter/features/rider/presentation/screens/manual_sheet_number/manual_sheet_number_screen.dart';
import 'package:blueex_emp_app_flutter/features/rider/presentation/screens/pickup_wallet/pickup_wallet_screen.dart';
import 'package:blueex_emp_app_flutter/features/rider/presentation/screens/re_attempt_cn/reattempt_screen.dart';
import 'package:blueex_emp_app_flutter/features/rider/presentation/screens/re_attempt_inner/re_Attempt_inner_screen.dart';
import 'package:blueex_emp_app_flutter/features/rider/presentation/screens/undelivered_shipment/undelivered_shipments_screen.dart';
import 'package:blueex_emp_app_flutter/features/rider/presentation/screens/updated_status/updated_status_screen.dart';
import 'package:flutter/material.dart';

class RiderRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    ReAttemptCNScreen.id: (context) => const ReAttemptCNScreen(),
    ReAttemptInnerScreen.id: (context) => const ReAttemptInnerScreen(),
    ManualSheetNumberScreen.id: (context) => const ManualSheetNumberScreen(),
    PickupScreen.id: (context) => const PickupScreen(),
    TutorialScreen.id: (context) => const TutorialScreen(),
    ComplaintScreen.id: (context) => const ComplaintScreen(),
    WalletScreen.id: (context) => const WalletScreen(),
    DeliveryWalletScreen.id: (context) => const DeliveryWalletScreen(),
    PickupWalletScreen.id: (context) => const PickupWalletScreen(),
    UndeliveredScreen.id: (context) => const UndeliveredScreen(),
    VerifyScreen.id: (context) => const VerifyScreen(),
    UpdatedStatusScreen.id: (context) => const UpdatedStatusScreen(),
  };
}

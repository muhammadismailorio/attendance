import 'package:flutter/material.dart';
import 'package:blueex_emp_app_flutter/features/user/presentation/screens/home/home_screen.dart';
import 'package:blueex_emp_app_flutter/features/user/presentation/screens/login/login_screen.dart';
import 'package:blueex_emp_app_flutter/features/user/presentation/screens/otp/otp_screen.dart';
import 'package:blueex_emp_app_flutter/features/user/presentation/screens/splash/splash_screen.dart';

class UserRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    SplashScreen.id: (context) => const SplashScreen(),
    LoginScreen.id: (context) => const LoginScreen(),
    OtpScreen.id: (context) => const OtpScreen(),
    HomeScreen.id: (context) => const HomeScreen(),
  };
}

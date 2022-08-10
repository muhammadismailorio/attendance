import 'package:flutter/material.dart';
import 'package:blueex_emp_app_flutter/features/user/presentation/screens/Home/home_screen.dart';
import 'package:blueex_emp_app_flutter/features/user/presentation/screens/Login/login_screen.dart';
import 'package:blueex_emp_app_flutter/features/user/presentation/screens/Otp/otp_screen.dart';
import 'package:blueex_emp_app_flutter/features/user/presentation/screens/Splash/splash_screen.dart';

class UserRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    SplashScreen.id: (context) => const SplashScreen(),
    LoginScreen.id: (context) => const LoginScreen(),
    OtpScreen.id: (context) => const OtpScreen(),
    HomeScreen.id: (context) => const HomeScreen(),
  };
}

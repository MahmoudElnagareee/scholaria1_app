import 'package:flutter/material.dart';
import 'package:scholaria1_app/features/auth/presentation/views/login_view.dart';
import 'package:scholaria1_app/features/auth/presentation/views/sign_up_view.dart';
import 'package:scholaria1_app/features/splash/presentation/views/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
      case LoginView.routeName:
      return MaterialPageRoute(builder: (context) => const LoginView());
      case SignUpView.routeName:
      return MaterialPageRoute(builder: (context) => const SignUpView());
   default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}

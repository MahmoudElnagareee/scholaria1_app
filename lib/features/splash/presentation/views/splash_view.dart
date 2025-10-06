import 'package:flutter/material.dart';
import 'package:scholaria1_app/constants.dart';
import 'package:scholaria1_app/features/splash/presentation/views/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  static const routeName = 'splash';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryColor,
      body: SafeArea(child: const SplashViewBody()),);
  }
}
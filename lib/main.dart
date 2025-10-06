import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:scholaria1_app/core/helper_function/on_generate_routes.dart';
import 'package:scholaria1_app/features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => ScholariaApp(), 
  ),);
}

class ScholariaApp extends StatelessWidget {
  const ScholariaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routeName,
    );
  }
}

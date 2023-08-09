import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:palm_health/Language/Translation.dart';
import 'package:palm_health/Screens/splash.dart';

void main() {
  runApp(const PalmHealth());
}

class PalmHealth extends StatelessWidget {
  const PalmHealth({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: Translation(),
      locale: const Locale('ar'),
      fallbackLocale: const Locale('ar'),
      home: const SplashScreen(),
    );
  }
}

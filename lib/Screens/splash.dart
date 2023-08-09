import 'dart:async';

import 'package:flutter/material.dart';
import 'package:palm_health/Screens/home.dart';
import 'package:palm_health/colors.dart';
import 'package:palm_health/components.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => const Home()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBeige,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo here
            splashIcon(),
          ],
        ),
      ),
    );
  }
}

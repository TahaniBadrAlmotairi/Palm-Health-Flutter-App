import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:palm_health/Screens/home.dart';
import 'package:palm_health/colors.dart';
import 'package:palm_health/components.dart';

void backToHome() {
  Get.to(Home());
}

class H1 extends StatefulWidget {
  const H1({super.key});

  @override
  State<H1> createState() => _H1State();
}

class _H1State extends State<H1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBeige,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    icon(),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  "H1".tr,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: darkGreen,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Center(
                  child: Container(
                    width: 300.0,
                    height: 200.0,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('image/RPW.jpeg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                keyText(
                  text: "a".tr,
                ),
                const SizedBox(
                  height: 10,
                ),
                keyText(
                  text: "b".tr,
                ),
                const SizedBox(
                  height: 10,
                ),
                keyText(
                  text: "c".tr,
                ),
                const SizedBox(
                  height: 10,
                ),
                keyText(
                  text: "d".tr,
                ),
                const SizedBox(
                  height: 10,
                ),
                keyText(
                  text: "e".tr,
                ),
                const SizedBox(
                  height: 32,
                ),
                Center(
                  child: Container(
                    width: 300.0,
                    height: 300.0,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('image/cycle.jpeg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                keyText(text: 'f'.tr),
                const SizedBox(
                  height: 32,
                ),
                button1(function: backToHome, text: "Home".tr),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class H2 extends StatefulWidget {
  const H2({super.key});

  @override
  State<H2> createState() => _H2State();
}

class _H2State extends State<H2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBeige,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    icon(),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  "H2".tr,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: darkGreen,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Container(
                  width: 250.0,
                  height: 150.0,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('image/Across.jpeg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                keyText(
                  text: "h".tr,
                ),
                const SizedBox(
                  height: 32,
                ),
                button1(function: backToHome, text: "Home".tr),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class H3 extends StatefulWidget {
  const H3({super.key});

  @override
  State<H3> createState() => _H3State();
}

class _H3State extends State<H3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBeige,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    icon(),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  "H3".tr,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: darkGreen,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Center(
                  child: Container(
                    width: 300.0,
                    height: 300.0,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('image/p.jpeg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                keyText(
                  text: "g".tr,
                ),
                const SizedBox(
                  height: 32,
                ),
                button1(function: backToHome, text: "Home".tr),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

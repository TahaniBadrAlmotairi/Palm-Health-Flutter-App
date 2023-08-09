import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:palm_health/Screens/home.dart';
import 'package:palm_health/colors.dart';
import 'package:palm_health/components.dart';
import 'package:palm_health/data.dart';
import 'package:palm_health/more_h.dart';

double largest_H() {
  if (data.CFcombineS1S2_H1 >= data.CFcombineS3S4_H2 &&
      data.CFcombineS1S2_H1 >= data.CFcombineS5S6_H3) {
    return data.CFcombineS1S2_H1;
  } else if (data.CFcombineS3S4_H2 >= data.CFcombineS1S2_H1 &&
      data.CFcombineS3S4_H2 >= data.CFcombineS5S6_H3) {
    return data.CFcombineS3S4_H2;
  } else {
    return data.CFcombineS5S6_H3;
  }
}

String name_H() {
  if (data.CFcombineS1S2_H1 >= data.CFcombineS3S4_H2 &&
      data.CFcombineS1S2_H1 >= data.CFcombineS5S6_H3) {
    return 'H1'.tr;
  } else if (data.CFcombineS3S4_H2 >= data.CFcombineS1S2_H1 &&
      data.CFcombineS3S4_H2 >= data.CFcombineS5S6_H3) {
    return 'H2'.tr;
  } else {
    return 'H3'.tr;
  }
}

more_H() {
  if (data.CFcombineS1S2_H1 >= data.CFcombineS3S4_H2 &&
      data.CFcombineS1S2_H1 >= data.CFcombineS5S6_H3) {
    Get.to(H1());
  } else if (data.CFcombineS3S4_H2 >= data.CFcombineS1S2_H1 &&
      data.CFcombineS3S4_H2 >= data.CFcombineS5S6_H3) {
    Get.to(H2());
  } else {
    Get.to(H3());
  }
}

class Result extends StatefulWidget {
  Result({super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  void backToHome() {
    Get.to(Home());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBeige,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
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
              keyText(text: "Result".tr),
              const SizedBox(
                height: 32,
              ),
              keyText(
                  text: "d_r".tr +
                      ' ' +
                      '${name_H()}' +
                      ' ' +
                      'rate'.tr +
                      ' ' +
                      '${largest_H().round()}' +
                      '%'),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: more_H,
                style: TextButton.styleFrom(
                  backgroundColor: darkBeige,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.info_outline,
                      color: darkGreen,
                      size: 14,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'more'.tr,
                      style: TextStyle(
                        color: darkGreen,
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'clickhere'.tr,
                      style: TextStyle(
                        color: darkGreen,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        decorationColor: darkGreen, // optional
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              button1(function: backToHome, text: "Home".tr),
            ],
          ),
        ),
      ),
    );
  }
}

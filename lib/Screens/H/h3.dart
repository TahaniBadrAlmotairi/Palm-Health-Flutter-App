import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:m_toast/m_toast.dart';
import 'package:palm_health/Screens/H/h2.dart';
import 'package:palm_health/Screens/Result.dart';
import 'package:palm_health/colors.dart';
import 'package:palm_health/components.dart';
import 'package:palm_health/data.dart';

class S5 extends StatefulWidget {
  const S5({super.key});

  @override
  State<S5> createState() => _S5State();
}

class _S5State extends State<S5> {
  int selected = 0;

  void backS5() {
    Get.to(S4(data.CFcombineS3S4_H2));
  }

  void nextS5() {
    if (selected == 0) {
      ShowMToast().errorToast(
        context,
        message: 'p'.tr,
        alignment: Alignment.bottomCenter,
        backgroundColor: darkBeige,
        textColor: darkGreen,
        iconColor: darkGreen,
        width: 30.0,
      );
    }
    if (selected > 0) {
      Get.to(S6(data.CFS5_H3));
    }
  }

  Widget customRadio(String text, int index) {
    return OutlinedButton(
        onPressed: () {
          setState(() {
            selected = index;
            if (index == 1) {
              data.CFS5_H3 = data.CFexpertS5_H3 * data.CFuser1;
            } else if (index == 2) {
              data.CFS5_H3 = data.CFexpertS5_H3 * data.CFuser2;
            } else if (index == 3) {
              data.CFS5_H3 = data.CFexpertS5_H3 * data.CFuser3;
            } else if (index == 4) {
              data.CFS5_H3 = data.CFexpertS5_H3 * data.CFuser4;
            } else if (index == 5) {
              data.CFS5_H3 = data.CFexpertS5_H3 * data.CFuser5;
            }
          });
        },
        style: TextButton.styleFrom(
          backgroundColor: (selected == index) ? darkGreen : lightBeige,
          side: BorderSide(width: 2.0, color: darkGreen),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: (selected == index) ? lightBeige : darkGreen,
          ),
        ));
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
              keyText(text: "S5".tr),
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  customRadio('1'.tr, 1),
                  SizedBox(width: 10),
                  customRadio('2'.tr, 2),
                  SizedBox(width: 10),
                  customRadio('3'.tr, 3),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  customRadio('4'.tr, 4),
                  SizedBox(width: 10),
                  customRadio('5'.tr, 5),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  button1(function: backS5, text: "Back".tr),
                  const SizedBox(
                    width: 10,
                  ),
                  button1(function: nextS5, text: "Next".tr),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class S6 extends StatefulWidget {
  S6(this.cfs5, {super.key});
  final double cfs5;

  @override
  State<S6> createState() => _S6State();
}

class _S6State extends State<S6> {
  int selected = 0;

  void backS6() {
    Get.to(const S5());
  }

  void nextS6() {
    if (selected == 0) {
      ShowMToast().errorToast(
        context,
        message: 'p'.tr,
        alignment: Alignment.bottomCenter,
        backgroundColor: darkBeige,
        textColor: darkGreen,
        iconColor: darkGreen,
        width: 30.0,
      );
    }
    if (selected > 0) {
      Get.to(Result());
    }
  }

  Widget customRadio(String text, int index) {
    return OutlinedButton(
        onPressed: () {
          setState(() {
            selected = index;
            if (index == 1) {
              data.CFS6_H3 = data.CFexpertS6_H3 * data.CFuser1;
              data.CFcombineS5S6_H3 =
                  (widget.cfs5 + data.CFS6_H3 * (1 - widget.cfs5)) * 100;
              debugPrint('${data.CFcombineS5S6_H3}');
            } else if (index == 6) {
              data.CFS6_H3 = data.CFexpertS6_H3 * data.CFuser2;
              data.CFcombineS5S6_H3 =
                  (widget.cfs5 + data.CFS6_H3 * (1 - widget.cfs5)) * 100;
              debugPrint('${data.CFcombineS5S6_H3}');
            } else if (index == 3) {
              data.CFS6_H3 = data.CFexpertS6_H3 * data.CFuser3;
              data.CFcombineS5S6_H3 =
                  (widget.cfs5 + data.CFS6_H3 * (1 - widget.cfs5)) * 100;
            } else if (index == 4) {
              data.CFS6_H3 = data.CFexpertS6_H3 * data.CFuser4;
              data.CFcombineS5S6_H3 =
                  (widget.cfs5 + data.CFS6_H3 * (1 - widget.cfs5)) * 100;
            } else if (index == 5) {
              data.CFS6_H3 = data.CFexpertS6_H3 * data.CFuser5;
              data.CFcombineS5S6_H3 =
                  (widget.cfs5 + data.CFS6_H3 * (1 - widget.cfs5)) * 100;
            }
          });
        },
        style: TextButton.styleFrom(
          backgroundColor: (selected == index) ? darkGreen : lightBeige,
          side: BorderSide(width: 2.0, color: darkGreen),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: (selected == index) ? lightBeige : darkGreen,
          ),
        ));
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
              keyText(text: "S6".tr),
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  customRadio('1'.tr, 1),
                  SizedBox(width: 10),
                  customRadio('2'.tr, 2),
                  SizedBox(width: 10),
                  customRadio('3'.tr, 3),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  customRadio('4'.tr, 4),
                  SizedBox(width: 10),
                  customRadio('5'.tr, 5),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  button1(function: backS6, text: "Back".tr),
                  const SizedBox(
                    width: 10,
                  ),
                  button1(function: nextS6, text: "Result".tr),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

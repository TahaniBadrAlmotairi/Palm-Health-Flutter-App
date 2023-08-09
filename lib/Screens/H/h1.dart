import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:m_toast/m_toast.dart';
import 'package:palm_health/Screens/H/h2.dart';
import 'package:palm_health/Screens/home.dart';
import 'package:palm_health/colors.dart';
import 'package:palm_health/components.dart';
import 'package:palm_health/data.dart';

class S1 extends StatefulWidget {
  const S1({super.key});

  @override
  State<S1> createState() => _S1State();
}

class _S1State extends State<S1> {
  int selected = 0;

  void backS1() {
    Get.to(const Home());
  }

  void nextS1() {
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
      Get.to(S2(data.CFS1_H1));
    }
  }

  Widget customRadio(String text, int index) {
    return OutlinedButton(
        onPressed: () {
          setState(() {
            selected = index;
            if (index == 1) {
              data.CFS1_H1 = data.CFexpertS1_H1 * data.CFuser1;
            } else if (index == 2) {
              data.CFS1_H1 = data.CFexpertS1_H1 * data.CFuser2;
            } else if (index == 3) {
              data.CFS1_H1 = data.CFexpertS1_H1 * data.CFuser3;
            } else if (index == 4) {
              data.CFS1_H1 = data.CFexpertS1_H1 * data.CFuser4;
            } else if (index == 5) {
              data.CFS1_H1 = data.CFexpertS1_H1 * data.CFuser5;
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
              keyText(text: "S1".tr),
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
                  button1(function: backS1, text: "Home".tr),
                  const SizedBox(
                    width: 10,
                  ),
                  button1(function: nextS1, text: "Next".tr),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class S2 extends StatefulWidget {
  S2(this.cfs1, {super.key});
  final double cfs1;

  @override
  State<S2> createState() => _S2State();
}

class _S2State extends State<S2> {
  int selected = 0;

  void backS2() {
    Get.to(const S1());
  }

  void nextS2() {
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
      Get.to(S3());
    }
  }

  Widget customRadio(String text, int index) {
    return OutlinedButton(
        onPressed: () {
          setState(() {
            selected = index;
            if (index == 1) {
              data.CFS2_H1 = data.CFexpertS2_H1 * data.CFuser1;
              data.CFcombineS1S2_H1 =
                  (widget.cfs1 + data.CFS2_H1 * (1 - widget.cfs1)) * 100;
            } else if (index == 6) {
              data.CFS2_H1 = data.CFexpertS2_H1 * data.CFuser2;
              data.CFcombineS1S2_H1 =
                  (widget.cfs1 + data.CFS2_H1 * (1 - widget.cfs1)) * 100;
            } else if (index == 3) {
              data.CFS2_H1 = data.CFexpertS2_H1 * data.CFuser3;
              data.CFcombineS1S2_H1 =
                  (widget.cfs1 + data.CFS2_H1 * (1 - widget.cfs1)) * 100;
            } else if (index == 4) {
              data.CFS2_H1 = data.CFexpertS2_H1 * data.CFuser4;
              data.CFcombineS1S2_H1 =
                  (widget.cfs1 + data.CFS2_H1 * (1 - widget.cfs1)) * 100;
            } else if (index == 5) {
              data.CFS2_H1 = data.CFexpertS2_H1 * data.CFuser5;
              data.CFcombineS1S2_H1 =
                  (widget.cfs1 + data.CFS2_H1 * (1 - widget.cfs1)) * 100;
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
              keyText(text: "S2".tr),
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
                  button1(function: backS2, text: "Back".tr),
                  const SizedBox(
                    width: 10,
                  ),
                  button1(function: nextS2, text: "Next".tr),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:m_toast/m_toast.dart';
import 'package:palm_health/Screens/H/h1.dart';
import 'package:palm_health/Screens/H/h3.dart';
import 'package:palm_health/colors.dart';
import 'package:palm_health/components.dart';
import 'package:palm_health/data.dart';

class S3 extends StatefulWidget {
  const S3({super.key});

  @override
  State<S3> createState() => _S3State();
}

class _S3State extends State<S3> {
  int selected = 0;

  void backS3() {
    Get.to(S2(data.CFcombineS1S2_H1));
  }

  void nextS3() {
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
      Get.to(S4(data.CFS3_H2));
    }
  }

  Widget customRadio(String text, int index) {
    return OutlinedButton(
        onPressed: () {
          setState(() {
            selected = index;
            if (index == 1) {
              data.CFS3_H2 = data.CFexpertS3_H2 * data.CFuser1;
            } else if (index == 2) {
              data.CFS3_H2 = data.CFexpertS3_H2 * data.CFuser2;
            } else if (index == 3) {
              data.CFS3_H2 = data.CFexpertS3_H2 * data.CFuser3;
            } else if (index == 4) {
              data.CFS3_H2 = data.CFexpertS3_H2 * data.CFuser4;
            } else if (index == 5) {
              data.CFS3_H2 = data.CFexpertS3_H2 * data.CFuser5;
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
              keyText(text: "S3".tr),
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
                  button1(function: backS3, text: "Back".tr),
                  const SizedBox(
                    width: 10,
                  ),
                  button1(function: nextS3, text: "Next".tr),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class S4 extends StatefulWidget {
  S4(this.cfs3, {super.key});
  final double cfs3;

  @override
  State<S4> createState() => _S4State();
}

class _S4State extends State<S4> {
  int selected = 0;

  void backS4() {
    Get.to(const S3());
  }

  void nextS4() {
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
      Get.to(S5());
    }
  }

  Widget customRadio(String text, int index) {
    return OutlinedButton(
        onPressed: () {
          setState(() {
            selected = index;
            if (index == 1) {
              data.CFS4_H2 = data.CFexpertS4_H2 * data.CFuser1;
              data.CFcombineS3S4_H2 =
                  (widget.cfs3 + data.CFS4_H2 * (1 - widget.cfs3)) * 100;
              debugPrint('${data.CFcombineS3S4_H2}');
            } else if (index == 6) {
              data.CFS4_H2 = data.CFexpertS4_H2 * data.CFuser2;
              data.CFcombineS3S4_H2 =
                  (widget.cfs3 + data.CFS4_H2 * (1 - widget.cfs3)) * 100;
              debugPrint('${data.CFcombineS3S4_H2}');
            } else if (index == 3) {
              data.CFS4_H2 = data.CFexpertS4_H2 * data.CFuser3;
              data.CFcombineS3S4_H2 =
                  (widget.cfs3 + data.CFS4_H2 * (1 - widget.cfs3)) * 100;
            } else if (index == 4) {
              data.CFS4_H2 = data.CFexpertS4_H2 * data.CFuser4;
              data.CFcombineS3S4_H2 =
                  (widget.cfs3 + data.CFS4_H2 * (1 - widget.cfs3)) * 100;
            } else if (index == 5) {
              data.CFS4_H2 = data.CFexpertS4_H2 * data.CFuser5;
              data.CFcombineS3S4_H2 =
                  (widget.cfs3 + data.CFS4_H2 * (1 - widget.cfs3)) * 100;
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
              keyText(text: "S4".tr),
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
                  button1(function: backS4, text: "Back".tr),
                  const SizedBox(
                    width: 10,
                  ),
                  button1(function: nextS4, text: "Next".tr),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

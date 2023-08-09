import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:group_button/group_button.dart';
import 'package:palm_health/Screens/H/h1.dart';
import 'package:palm_health/colors.dart';
import 'package:palm_health/components.dart';
import 'package:palm_health/more_h.dart';

final controller = GroupButtonController();

String selected = 'ar';
String A = 'ar';
String E = 'en';

trans() {
  if (selected == A) {
    Get.updateLocale(Locale(E));
    selected = 'en';
  } else if (selected == E) {
    Get.updateLocale(Locale(A));
    selected = 'ar';
  }
}

void start() {
  Get.to(const S1());
}

void to_H1() {
  Get.to(const H1());
}

void to_H2() {
  Get.to(const H2());
}

void to_H3() {
  Get.to(const H3());
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  info() {
    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        )),
        builder: ((context) {
          return Container(
            height: double.infinity,
            width: double.infinity,
            color: darkGreen,
            child: Padding(
              padding: const EdgeInsets.all(32),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "About".tr,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                        color: lightBeige,
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Text(
                      "A".tr,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: lightBeige,
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Column(
                      children: [
                        Center(
                          child: Text(
                            'Palm Health v1.0.0 2023',
                            style: TextStyle(color: lightBeige, fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        }));
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
                  Row(
                    children: [
                      GestureDetector(
                        onTap: info,
                        child: Icon(
                          Icons.info_outline,
                          color: darkGreen,
                          size: 32,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      IconButton(
                        onPressed: trans,
                        icon: Icon(
                          Icons.language,
                          color: darkGreen,
                          size: 32,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              keyText(
                text: "L".tr,
              ),
              const SizedBox(
                height: 32,
              ),
              button1(
                function: start,
                text: "start".tr,
              ),
              const SizedBox(
                height: 32,
              ),
              Text(
                "some".tr,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: darkGreen,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Stack(
                      alignment: selected == 'ar'
                          ? Alignment.bottomRight
                          : Alignment.bottomLeft,
                      children: [
                        Container(
                          width: 250.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage('image/RPW.jpeg'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: lightBeige),
                            onPressed: to_H1,
                            child: keyText(text: 'H1'.tr),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Stack(
                      alignment: selected == 'ar'
                          ? Alignment.bottomRight
                          : Alignment.bottomLeft,
                      children: [
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
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: lightBeige),
                            onPressed: to_H2,
                            child: keyText(text: 'H2'.tr),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Stack(
                      alignment: selected == 'ar'
                          ? Alignment.bottomRight
                          : Alignment.bottomLeft,
                      children: [
                        Container(
                          width: 250.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage('image/ppw.jpeg'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: lightBeige),
                            onPressed: to_H3,
                            child: keyText(text: 'H3'.tr),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

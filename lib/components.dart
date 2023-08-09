import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'colors.dart';

Widget icon() => SvgPicture.asset(
      'image/i.svg',
      width: 90,
      height: 90,
    );
Widget splashIcon() => SvgPicture.asset(
      'image/i.svg',
      width: 100,
      height: 200,
    );

Widget button1({
  required var function,
  required var text,
}) =>
    TextButton(
      style: TextButton.styleFrom(
        backgroundColor: darkGreen,
      ),
      onPressed: function,
      child: Text(
        text,
        style: TextStyle(
          color: lightBeige,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );

Widget button2({
  required var function,
  required var text,
}) =>
    TextButton(
      style: TextButton.styleFrom(
        backgroundColor: lightBeige,
        side: BorderSide(width: 2.0, color: darkGreen),
      ),
      onPressed: function,
      child: Text(
        text,
        style: TextStyle(
          color: darkGreen,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );

Widget keyText({
  required var text,
}) =>
    Text(
      text,
      style: TextStyle(
          fontSize: 18, color: darkGreen, fontWeight: FontWeight.bold),
    );

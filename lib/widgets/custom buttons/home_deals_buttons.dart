import 'package:e_commerce_application/constants/default%20consts/consts.dart';
import 'package:flutter/material.dart';

Widget dealsButton({width, height, icon, String? title, onPressed}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        icon,
        width: 26,
      ),
      10.heightBox,
      title!.text.fontFamily(bold).color(darkFontGrey).make()
    ],
  )
      .box
      .rounded
      .color(const Color.fromARGB(255, 236, 234, 234))
      .size(width, height)
      .make();
}

import 'package:e_commerce_application/constants/default%20consts/consts.dart';
import 'package:flutter/material.dart';

Widget profileFeatureButton(
  String? title,
  icon,
) {
  return Row(
    children: [
      Icon(
        icon,
      ),
      10.widthBox,
      title!.text.size(19).align(TextAlign.center).fontFamily(semibold).make()
    ],
  )
      .box
      .color(textfieldGrey)
      .rounded
      .margin(const EdgeInsets.symmetric(horizontal: 4))
      .padding(const EdgeInsets.all(20))
      .width(170)
      .height(70)
      .make();
}

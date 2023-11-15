import 'package:e_commerce_application/constants/default%20consts/consts.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget SavedCards() {
  return Stack(
    children: [
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: "Bandhan Bank"
            .text
            .fontFamily(bold)
            .color(whiteColor)
            .size(1)
            .make(),
      )
          .box
          .color(const Color.fromRGBO(1, 50, 85, 10))
          .width(330)
          .height(200)
          .rounded
          .makeCentered(),
      Positioned(
          top: 150,
          left: 20,
          child: "1223 3456 5757"
              .text
              .fontFamily(semibold)
              .color(whiteColor)
              .size(20)
              .make()),
      Positioned(
          top: 120,
          left: 20,
          child: "SOUMYAJIT MUKHERJEE".text.size(18).color(whiteColor).make()),
      Positioned(
          top: 40,
          left: 220,
          child: Image.asset(imgBankLogo).box.size(55, 55).make()),
      10.widthBox,
    ],
  ).box.margin(const EdgeInsets.all(5)).make();
}

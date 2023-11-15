import 'dart:js';

import 'package:e_commerce_application/constants/default%20consts/consts.dart';
import 'package:flutter/material.dart';

Widget PaymentButton({String? title, icon}) {
  return Container(
    child: Row(
      children: [
        Image.asset(
          icon,
          width: 70,
        ),
        5.widthBox,
        title!.text.make()
      ],
    ),
  ).box.width(200).rounded.make();
}

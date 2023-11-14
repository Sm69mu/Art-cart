import 'package:e_commerce_application/constants/default%20consts/consts.dart';
import 'package:flutter/material.dart';

Widget applogoWidget() {
  return Image.asset(icAppLogo)
      .box
      .size(90, 90)
      .padding(const EdgeInsets.all(8.0))
      .white
      .rounded
      .make();
}

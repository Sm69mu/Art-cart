import 'package:e_commerce_application/constants/default%20consts/consts.dart';
import 'package:flutter/material.dart';

Widget customButton({onPress, color, textColor, required String title}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: color,
      padding: const EdgeInsets.all(12),
    ),
    onPressed: onPress,
    child: title.text.fontFamily(bold).color(textColor).make(),
  );
}

import 'package:e_commerce_application/constants/styleing/colors.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget SearchWidget({String? hint, controller, color}) {
  void updateList(String value) {}

  return TextField(
    decoration: InputDecoration(
      filled: true,
      fillColor: color,
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30), borderSide: BorderSide.none),
      hintText: hint,
      prefixIcon: const Icon(
        Icons.search_outlined,
        color: brownColor,
      ),
      alignLabelWithHint: true,
      // floatingLabelAlignment: FloatingLabelAlignment.start
    ),
  );
}

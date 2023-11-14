import 'package:e_commerce_application/constants/default%20consts/consts.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: " Cart".text.fontFamily(bold).size(22).make(),
      ),
      body: "cart is empty".text.fontFamily(bold).size(30).makeCentered(),
    );
  }
}

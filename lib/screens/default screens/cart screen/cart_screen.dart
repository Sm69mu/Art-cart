import 'package:e_commerce_application/constants/default%20consts/consts.dart';
import 'package:e_commerce_application/screens/default%20screens/home%20screen/home_screen.dart';
import 'package:e_commerce_application/widgets/custom%20buttons/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: " Cart".text.fontFamily(bold).size(22).make(),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.shopping_cart_outlined,
              color: brownColor,
              size: 150,
            ),
            10.heightBox,
            "Your Cart is Empty"
                .text
                .fontFamily(bold)
                .color(fontGrey)
                .size(25)
                .make(),
            25.heightBox,
            customButton(
                title: " Start Shopping ",
                color: brownColor,
                textColor: whiteColor,
                onPress: () {
                  Get.to(() => const HomeScreen());
                }).box.width(150).make()
          ],
        ).box.makeCentered());
  }
}

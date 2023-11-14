import 'package:e_commerce_application/constants/default%20consts/consts.dart';
import 'package:flutter/material.dart';

class WishlistScreen extends StatelessWidget {
const WishlistScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(title: "Wishlist".text.make(),),
    );
  }
}
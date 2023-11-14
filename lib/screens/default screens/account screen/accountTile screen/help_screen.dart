import 'package:e_commerce_application/constants/default%20consts/consts.dart';
import 'package:flutter/material.dart';


class HelpScreen extends StatelessWidget {
  const HelpScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(title: "Help".text.make(),),
    );
  }
}
import 'package:e_commerce_application/constants/default%20consts/consts.dart';
import 'package:flutter/material.dart';

class CoupensScreen extends StatefulWidget {
  const CoupensScreen({ Key? key }) : super(key: key);

  @override
  _CoupensScreenState createState() => _CoupensScreenState();
}

class _CoupensScreenState extends State<CoupensScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(title: "Coupens".text.make(),),
    );
  }
}
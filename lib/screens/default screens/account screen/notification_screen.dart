import 'package:e_commerce_application/constants/default%20consts/consts.dart';
import 'package:flutter/material.dart';


class NotificationScreen extends StatelessWidget {
const NotificationScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return  Scaffold(
backgroundColor: whiteColor,
      appBar: AppBar(
        title: "Notifications".text.fontFamily(bold).make(),
      ),    );
  }
}
import 'package:e_commerce_application/constants/default%20consts/consts.dart';
import 'package:flutter/material.dart';

class CreditsScreen extends StatelessWidget {
  const CreditsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        title: " Credits ".text.fontFamily(bold).make(),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            20.heightBox,
            Row(
              children: [
                "Developed By".text.fontFamily(bold).size(20).make(),
                // CircleAvatar(
                //   backgroundImage: AssetImage(),
                // )
              ],
            ),
            10.heightBox,
            "Soumyajit Mukherjee".text.make(),
            10.heightBox,
            "Contact".text.fontFamily(bold).size(20).make(),
            10.heightBox,
            const Text('soumyajitmukherjee@gmail.com'),
          ],
        ),
      ),
    );
  }
}

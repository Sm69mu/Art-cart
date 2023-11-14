
import 'package:e_commerce_application/constants/default%20consts/consts.dart';
import 'package:flutter/material.dart';

class SavedCardsWalletsScreen extends StatelessWidget {
  const SavedCardsWalletsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        title: "Saved Card & Wallets".text.fontFamily(bold).make(),
      ),
    );
  }
}

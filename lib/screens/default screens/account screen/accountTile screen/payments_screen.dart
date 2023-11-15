import 'package:e_commerce_application/constants/default%20consts/consts.dart';
import 'package:e_commerce_application/widgets/custom%20widgets/saved_card_widget.dart';
import 'package:flutter/material.dart';

class PaymentsScreen extends StatelessWidget {
  const PaymentsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        title: "Payments".text.fontFamily(bold).make(),
      ),
      body: Column(
        children: [
          10.heightBox,
          " Saved Cards"
              .text
              .fontFamily(bold)
              .align(TextAlign.start)
              .size(22)
              .make(),
          15.heightBox,
          10.heightBox,
          VxSwiper.builder(
              enlargeCenterPage: true,
              enableInfiniteScroll: false,
              itemCount: 2,
              itemBuilder: (context, index) {
                return SavedCards()
                    .box
                    .width(context.screenWidth - 2)
                    .height(context.screenHeight / 5.6)
                    .make();
              }),
          15.heightBox,
          const Divider(),
          10.heightBox,
          "Other Payments".text.fontFamily(bold).size(20).make(),
          10.heightBox,
          Stack(children: [
            Row(
              children: [
                20.widthBox,
                Image.asset(
                  imgGpayLogo,
                  width: 60,
                ),
                20.widthBox,
                "Google pay".text.fontFamily(semibold).size(17).make(),
              ],
            )
                .box
                .color(textfieldGrey)
                .height(80)
                .width(context.screenWidth - 30)
                .rounded
                .make(),
            Positioned(
                top: 25,
                left: context.screenWidth - 70,
                child: const Icon(Icons.arrow_forward_ios_rounded))
          ]),
          10.heightBox,
          Stack(children: [
            Row(
              children: [
                20.widthBox,
                Image.asset(
                  imgphonepe,
                  width: 60,
                ),
                20.widthBox,
                " PhonePe ".text.fontFamily(semibold).size(17).make(),
              ],
            )
                .box
                .color(textfieldGrey)
                .height(80)
                .width(context.screenWidth - 30)
                .rounded
                .make(),
            Positioned(
                top: 25,
                left: context.screenWidth - 70,
                child: const Icon(Icons.arrow_forward_ios_rounded))
          ]),
          10.heightBox,
          Stack(children: [
            Row(
              children: [
                20.widthBox,
                Image.asset(
                  igmpaytmlogo,
                  width: 60,
                ),
                20.widthBox,
                " Paytm ".text.fontFamily(semibold).size(17).make(),
              ],
            )
                .box
                .color(textfieldGrey)
                .height(80)
                .width(context.screenWidth - 30)
                .rounded
                .make(),
            Positioned(
                top: 25,
                left: context.screenWidth - 70,
                child: const Icon(Icons.arrow_forward_ios_rounded))
          ]),
        ],
      ),
    );
  }
}

import 'package:e_commerce_application/constants/default%20consts/consts.dart';
import 'package:e_commerce_application/constants/images%20&%20lists%20&%20strings/custom_lists.dart';
import 'package:e_commerce_application/screens/default%20screens/cart%20screen/cart_screen.dart';
import 'package:e_commerce_application/widgets/custom%20buttons/custom_button.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetails extends StatelessWidget {
  final String title;
  const ProductDetails({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(title: title.text.fontFamily(bold).make(), actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share_outlined,
              color: darkFontGrey,
            )),
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border_rounded, color: fontGrey))
      ]),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      VxSwiper.builder(
                          height: 350,
                          aspectRatio: 16 / 9,
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return Image.asset(
                              imgFc1,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            );
                          }),
                      10.heightBox,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            title.text.fontFamily(bold).size(25).make()
                          ],
                        ),
                      ),
                      5.heightBox,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: VxRating(
                          onRatingUpdate: (value) {},
                          normalColor: textfieldGrey,
                          selectionColor: golden,
                          count: 5,
                          size: 22,
                          stepInt: true,
                        ),
                      ),
                      10.heightBox,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: "\$120"
                            .text
                            .fontFamily(semibold)
                            .size(20)
                            .color(brownColor)
                            .make(),
                      ),
                      10.heightBox,
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                "Seller".text.make(),
                                5.heightBox,
                                "In house seller"
                                    .text
                                    .fontFamily(semibold)
                                    .color(darkFontGrey)
                                    .size(16)
                                    .make()
                              ],
                            ),
                          ),
                          const CircleAvatar(
                            child: Icon(
                              Icons.message_rounded,
                              color: darkFontGrey,
                            ),
                          )
                              .box
                              .height(60)
                              .padding(
                                  const EdgeInsets.symmetric(horizontal: 10))
                              .color(textfieldGrey)
                              .make(),
                        ],
                      )
                          .box
                          .height(70)
                          .color(textfieldGrey)
                          .rounded
                          .padding(const EdgeInsets.symmetric(horizontal: 16))
                          .make(),
                      10.heightBox,
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 90,
                                  height: 55,
                                  child: "Colors: "
                                      .text
                                      .size(20)
                                      .fontFamily(semibold)
                                      .make(),
                                ),
                                Row(
                                  children: List.generate(
                                      6,
                                      (index) => VxBox()
                                          .size(40, 40)
                                          .roundedFull
                                          .color(Vx.randomPrimaryColor)
                                          .margin(const EdgeInsets.symmetric(
                                              horizontal: 4))
                                          .make()),
                                )
                              ],
                            ).box.padding(const EdgeInsets.all(8)).make(),
                            Row(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                        Icons.remove_circle_outline_rounded)),
                                3.widthBox,
                                "0"
                                    .text
                                    .fontFamily(bold)
                                    .size(18)
                                    .color(darkFontGrey)
                                    .make(),
                                3.widthBox,
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                        Icons.add_circle_outline_rounded)),
                                5.heightBox,
                                "(O avaiable)".text.make()
                              ],
                            ),
                          ],
                        ).box.color(textfieldGrey).rounded.make(),
                      ),
                      10.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: SizedBox(
                              height: 40,
                              child: "Total Amount:  \$120"
                                  .text
                                  .size(20)
                                  .fontFamily(semibold)
                                  .make(),
                            ),
                          ),
                        ],
                      )
                          .box
                          .width(context.screenWidth - 20)
                          .color(textfieldGrey)
                          .rounded
                          .make(),
                      10.heightBox,
                      Column(
                        children: [
                          Card(
                            child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                    child: ExpandablePanel(
                                        header: "Description"
                                            .text
                                            .size(20)
                                            .fontFamily(semibold)
                                            .make(),
                                        collapsed:
                                            "fwofwoeifjewofjoewfjewojfowefjfiewfowefjowefjewo"
                                                .text
                                                .size(14)
                                                .make(),
                                        expanded:
                                            "fwofwoeifjewofjoewfjewojfowefjfiewfowefjowefjewofwofwoeifjewofjoewfjewojfowefjfiewfowefjowefjewofwofwoeifjewofjoewfjewojfowefjfiewfowefjowefjewofwofwoeifjewofjoewfjewojfowefjfiewfowefjowefjewo"
                                                .text
                                                .size(16)
                                                .make()))
                                .box
                                .color(textfieldGrey)
                                .rounded
                                .make(),
                          )
                        ],
                      ),
                      10.heightBox,
                      ListView(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        children: List.generate(
                            tileNameList.length,
                            (index) => ListTile(
                                  title: tileNameList[index]
                                      .text
                                      .fontFamily(semibold)
                                      .make(),
                                  trailing:
                                      const Icon(Icons.arrow_forward_rounded),
                                )),
                      ).onTap(() {}),
                      20.heightBox,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: "Products You may like"
                            .text
                            .fontFamily(bold)
                            .size(20)
                            .make(),
                      ),
                      10.heightBox,
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(
                              10,
                              (index) => Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        imgP1,
                                        width: 150,
                                        fit: BoxFit.cover,
                                      ),
                                      10.heightBox,
                                      "Laptop "
                                          .text
                                          .color(darkFontGrey)
                                          .fontFamily(semibold)
                                          .make(),
                                      10.heightBox,
                                      "\$550"
                                          .text
                                          .color(brownColor)
                                          .fontFamily(bold)
                                          .size(14)
                                          .make()
                                    ],
                                  )
                                      .box
                                      .rounded
                                      .margin(const EdgeInsets.symmetric(
                                          horizontal: 6))
                                      .white
                                      .padding(const EdgeInsets.all(8))
                                      .make()),
                        ),
                      ),
                      15.heightBox
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: FloatingActionButton(
                      onPressed: () {
                        Get.to(() => const CartScreen());
                      },
                      child: const Icon(
                        Icons.add_shopping_cart_rounded,
                      ),
                    ),
                  ),
                  10.widthBox,
                  customButton(
                          title: "Buy Now",
                          color: brownColor,
                          textColor: whiteColor)
                      .box
                      .width(context.screenWidth - 95)
                      .color(brownColor)
                      .rounded
                      .height(57)
                      .make()
                ],
              ),
            ),
            15.heightBox
          ],
        ),
      ),
    );
  }
}

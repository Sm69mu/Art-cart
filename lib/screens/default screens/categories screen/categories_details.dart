import 'package:e_commerce_application/constants/default%20consts/consts.dart';
import 'package:e_commerce_application/screens/default%20screens/categories%20screen/product_details.dart';
import 'package:e_commerce_application/widgets/custom%20widgets/bg_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoriesDetails extends StatelessWidget {
  final String title;
  const CategoriesDetails({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.white),
        title: title.text.fontFamily(bold).white.make(),
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: Column(children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                  6,
                  (index) => "baby colthing"
                      .text
                      .size(12)
                      .fontFamily(semibold)
                      .color(fontGrey)
                      .makeCentered()
                      .box
                      .white
                      .rounded
                      .size(120, 50)
                      .margin(const EdgeInsets.symmetric(horizontal: 4))
                      .make()),
            ),
          ),
          20.heightBox,
          Expanded(
              child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: 6,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 230,
                      crossAxisSpacing: 7,
                      mainAxisSpacing: 7),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Image.asset(
                          imgP5,
                          height: 130,
                          width: 130,
                          fit: BoxFit.fill,
                        ),
                        "Bags "
                            .text
                            .color(darkFontGrey)
                            .size(25)
                            .fontFamily(semibold)
                            .make(),
                        10.heightBox,
                        "\$50"
                            .text
                            .color(brownColor)
                            .fontFamily(bold)
                            .size(15)
                            .make(),
                        5.heightBox
                      ],
                    ).box.white.outerShadow.rounded.make().onTap(() {
                      Get.to(() => const ProductDetails(title: "Test Title"));
                    });
                  }))
        ]),
      ),
    ));
  }
}

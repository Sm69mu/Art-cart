import 'package:e_commerce_application/constants/default%20consts/consts.dart';
import 'package:e_commerce_application/constants/images%20&%20lists%20&%20strings/custom_lists.dart';
import 'package:e_commerce_application/screens/default%20screens/categories%20screen/categories_details.dart';
import 'package:e_commerce_application/widgets/custom%20widgets/bg_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: catagories.text.fontFamily(bold).size(27).white.make(),
      ),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Container(
          padding: const EdgeInsets.all(12),
          child: GridView.builder(
              physics: const ScrollPhysics(),
              shrinkWrap: true,
              itemCount: 9,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  mainAxisExtent: 185),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Image.asset(
                      catagoriesImgList[index],
                      height: 120,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                    10.heightBox,
                    catagoriesList[index]
                        .text
                        .color(darkFontGrey)
                        .fontFamily(bold)
                        .align(TextAlign.center)
                        .make()
                  ],
                )
                    .box
                    .white
                    .rounded
                    .clip(Clip.antiAlias)
                    .outerShadow
                    .make()
                    .onTap(() {
                  Get.to(() => CategoriesDetails(title: catagoriesList[index]));
                });
              }),
        ),
      ),
    ));
  }
}

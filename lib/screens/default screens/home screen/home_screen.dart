import 'package:e_commerce_application/constants/default%20consts/consts.dart';
import 'package:e_commerce_application/constants/images%20&%20lists%20&%20strings/custom_lists.dart';
import 'package:e_commerce_application/widgets/custom%20buttons/feature_button.dart';
import 'package:e_commerce_application/widgets/custom%20buttons/home_deals_buttons.dart';
import 'package:e_commerce_application/widgets/custom%20widgets/search_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            10.widthBox,
            Image.asset(
              icAppLogo,
              fit: BoxFit.contain,
              width: 68,
            ),
            20.widthBox,
            SearchWidget(
                    hint: searchanything,
                    color: const Color.fromARGB(255, 219, 219, 219))
                .box
                .width(context.screenWidth / 1.6)
                .height(50)
                .alignTopLeft
                .make()
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            10.heightBox,
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    VxSwiper.builder(
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                      height: 150,
                      enlargeCenterPage: true,
                      itemCount: sliderList.length,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          sliderList[index],
                          fit: BoxFit.fill,
                        )
                            .box
                            .rounded
                            .clip(Clip.antiAlias)
                            .margin(const EdgeInsets.symmetric(horizontal: 5))
                            .make();
                      },
                    ),
                    10.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                        2,
                        (index) => dealsButton(
                          height: context.screenHeight * 0.12,
                          width: context.screenWidth / 2.5,
                          icon: index == 0 ? icTodaysDeal : icFlashDeal,
                          title: index == 0 ? todaydeal : flashsale,
                        ),
                      ),
                    ),
                    10.heightBox,
                    VxSwiper.builder(
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                      height: 150,
                      enlargeCenterPage: true,
                      itemCount: secondSliderList.length,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          secondSliderList[index],
                          fit: BoxFit.fill,
                        )
                            .box
                            .rounded
                            .clip(Clip.antiAlias)
                            .margin(const EdgeInsets.symmetric(horizontal: 5))
                            .make();
                      },
                    ),
                    10.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                        3,
                        (index) => dealsButton(
                          height: context.screenHeight * 0.11,
                          width: context.screenWidth / 3.3,
                          icon: index == 0
                              ? icTopCategories
                              : index == 1
                                  ? icBrands
                                  : icTopSeller,
                          title: index == 0
                              ? topcategories
                              : index == 1
                                  ? topbrands
                                  : topartists,
                        ),
                      ),
                    ),
                    20.heightBox,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: featuredCatagories.text
                            .color(darkFontGrey)
                            .fontFamily(bold)
                            .size(20)
                            .make(),
                      ),
                    ),
                    20.heightBox,
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          3,
                          (index) => Column(
                            children: [
                              featureButton(
                                  icon: featureImgList1[index],
                                  title: featureTitle[index]),
                              10.heightBox,
                              featureButton(
                                  icon: featureImgList2[index],
                                  title: featureTitle2[index])
                            ],
                          ),
                        ).toList(),
                      ),
                    ),
                    20.heightBox,
                    Container(
                      padding: const EdgeInsets.all(14),
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          color: brownColor,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          featuredProducts.text
                              .fontFamily(bold)
                              .white
                              .size(18)
                              .make(),
                          10.heightBox,
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(
                                  6,
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
                                          " Vase "
                                              .text
                                              .color(darkFontGrey)
                                              .fontFamily(semibold)
                                              .make(),
                                          10.heightBox,
                                          " \$550"
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
                          )
                        ],
                      ),
                    ),
                    20.heightBox,
                    VxSwiper.builder(
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                      height: 150,
                      enlargeCenterPage: true,
                      itemCount: sliderList.length,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          sliderList[index],
                          fit: BoxFit.fill,
                        )
                            .box
                            .rounded
                            .clip(Clip.antiAlias)
                            .margin(const EdgeInsets.symmetric(horizontal: 5))
                            .make();
                      },
                    ),
                    20.heightBox,
                    GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 6,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: 7,
                                crossAxisSpacing: 7,
                                mainAxisExtent: 230),
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Image.asset(
                                imgP5,
                                height: 130,
                                width: 130,
                                fit: BoxFit.fill,
                              ),
                              const Spacer(),
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
                          ).box.white.rounded.outerShadow.make();
                        })
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

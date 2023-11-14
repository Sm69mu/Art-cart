import 'package:e_commerce_application/constants/default%20consts/consts.dart';
import 'package:e_commerce_application/constants/images%20&%20lists%20&%20strings/custom_lists.dart';
import 'package:e_commerce_application/controllers/auth_controller.dart';
import 'package:e_commerce_application/controllers/profile_controller.dart';
import 'package:e_commerce_application/screens/default%20screens/account%20screen/credits_screen.dart';
import 'package:e_commerce_application/screens/default%20screens/account%20screen/edit_profile_screen.dart';
import 'package:e_commerce_application/screens/startUp screens/login_screen.dart';
import 'package:e_commerce_application/screens/default%20screens/account%20screen/notification_screen.dart';
import 'package:e_commerce_application/screens/default%20screens/account%20screen/saved_address_screen.dart';
import 'package:e_commerce_application/screens/default%20screens/account%20screen/saved_cardsWallets_screen.dart';
import 'package:e_commerce_application/widgets/custom%20buttons/custom_button.dart';
import 'package:e_commerce_application/widgets/custom%20buttons/profile_features_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(ProfileContoller());

    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        toolbarHeight: context.screenHeight / 9,
        automaticallyImplyLeading: false,
        title: " Hey ! Soumyajit".text.fontFamily(bold).size(24).make(),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(() => const EditProfileScreen());
              },
              icon: const CircleAvatar(
                radius: 20,
                foregroundImage: AssetImage(imgProfile2),
                backgroundColor: brownColor,
              ))
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              profileFeatureButton("Payments", Icons.payment_rounded),
              profileFeatureButton('Wishlists', Icons.favorite_rounded),
            ]),
            10.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                profileFeatureButton("Orders", Icons.shopping_bag_rounded),
                profileFeatureButton('History', Icons.history_rounded),
              ],
            ),
            10.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                profileFeatureButton("Coupons", Icons.card_giftcard),
                profileFeatureButton(' Help', Icons.headset_mic_rounded),
              ],
            ),
            20.heightBox,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child:
                      "Account Settings".text.fontFamily(bold).size(20).make()),
            ),
            10.heightBox,
            ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: List.generate(
                profileList.length,
                (index) => ListTile(
                  title: profileList[index]
                      .text
                      .fontFamily(semibold)
                      .size(17)
                      .make(),
                  leading: profileListIcons[index],
                  trailing: const Icon(Icons.arrow_forward_rounded),
                  onTap: () {
                    switch (index) {
                      case 0:
                        Get.to(() => const EditProfileScreen());
                        break;
                      case 1:
                        Get.to(() => const SavedCardsWalletsScreen());
                        break;
                      case 2:
                        Get.to(() => const SavedAddressScreen());
                        break;
                      case 3:
                        Get.to(() => const NotificationScreen());
                        break;
                      case 4:
                        Get.to(() => const CreditsScreen());
                      default:
                        break;
                    }
                  },
                ),
              ),
            ),
            20.heightBox,
            customButton(
                    title: "Log out",
                    color: lightGrey,
                    textColor: brownColor,
                    onPress: () async {
                      await Get.put(AuthController()).signOutMethod(context);
                      Get.offAll(() => const LoginScreen());
                    })
                .box
                .width(context.screenWidth - 200)
                .height(context.screenHeight / 16)
                .make(),
            20.heightBox
          ],
        ),
      ),
    );
  }
}

import 'dart:io';

import 'package:e_commerce_application/constants/default%20consts/consts.dart';
import 'package:e_commerce_application/controllers/profile_controller.dart';
import 'package:e_commerce_application/widgets/custom%20buttons/custom_button.dart';
import 'package:e_commerce_application/widgets/custom%20textfeilds/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<ProfileContoller>();

    return Scaffold(
        backgroundColor: whiteColor,
        appBar: AppBar(
          title: "Edit Profile".text.fontFamily(bold).make(),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              10.heightBox,
              Stack(children: [
                Obx(
                  () => CircleAvatar(
                    radius: 65,
                    backgroundColor: Colors.transparent,
                    backgroundImage: controller.profileImgPath.isEmpty
                        ? Image.asset(imgProfile2).image
                        : Image.file(File(controller.profileImgPath.value))
                            .image,
                  )
                      .box
                      .size(130, 130)
                      .margin(EdgeInsets.symmetric(
                          horizontal: context.screenWidth / 3))
                      .make(),
                ),
                Positioned(
                    top: 97,
                    left: context.screenWidth / 1.8,
                    child: const Icon(
                      Icons.edit_outlined,
                      color: darkFontGrey,
                    )
                        .box
                        .color(textfieldGrey)
                        .roundedFull
                        .size(33, 33)
                        .make()
                        .onTap(() {
                      Get.find<ProfileContoller>().changeImage(context);
                    }))
              ]),
              10.heightBox,
              "Change Your Profile Picture"
                  .text
                  .fontFamily(bold)
                  .size(16)
                  .color(brownColor)
                  .make(),
              25.heightBox,
              CustomTextfield(
                title: changeName,
                hint: nameHints,
                isPass: false,
              ).box.width(context.screenWidth - 40).make(),
              CustomTextfield(
                title: changeemail,
                hint: emailHint,
                isPass: false,
              ).box.width(context.screenWidth - 40).make(),
              CustomTextfield(
                title: passwordchnage,
                hint: passwordHint,
                isPass: true,
              ).box.width(context.screenWidth - 40).make(),
              CustomTextfield(
                title: retypepassword,
                hint: retypepasswordHint,
                isPass: true,
              ).box.width(context.screenWidth - 40).make(),
              20.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  customButton(
                      color: textfieldGrey,
                      textColor: darkFontGrey,
                      title: "Cancel",
                      onPress: () {
                        Get.back();
                      }).box.width(context.screenWidth / 3).height(50).make(),
                  15.widthBox,
                  customButton(
                      color: brownColor,
                      textColor: whiteColor,
                      title: "Save",
                      onPress: () {
                        controller.changeImage(context);
                      }).box.width(context.screenWidth / 3).height(50).make(),
                ],
              ),
              10.heightBox
            ],
          ),
        ));
  }
}

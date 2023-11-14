import 'package:e_commerce_application/constants/default%20consts/consts.dart';
import 'package:e_commerce_application/constants/images%20&%20lists%20&%20strings/custom_lists.dart';
import 'package:e_commerce_application/controllers/auth_controller.dart';
import 'package:e_commerce_application/screens/home.dart';
import 'package:e_commerce_application/screens/startUp screens/signup_screen.dart';
import 'package:e_commerce_application/widgets/custom%20widgets/bg_widget.dart';
import 'package:e_commerce_application/widgets/custom%20widgets/applogo_widget.dart';
import 'package:e_commerce_application/widgets/custom%20textfeilds/custom_textfield.dart';
import 'package:e_commerce_application/widgets/custom%20buttons/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controllers = Get.put(AuthController());

    return bgWidget(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              (context.screenHeight * 0.1).heightBox,
              applogoWidget(),
              17.heightBox,
              "Welcome to $appname".text.fontFamily(bold).size(20).white.make(),
              25.heightBox,
              Obx(
                () => Column(
                  children: [
                    CustomTextfield(
                        hint: emailHint,
                        title: uemail,
                        isPass: false,
                        controller: controllers.emailController),
                    CustomTextfield(
                        hint: passwordHint,
                        title: Upassword,
                        isPass: true,
                        controller: controllers.paswordController),
                    Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            onPressed: () {},
                            child:
                                forgetpassword.text.color(brownColor).make())),
                    5.heightBox,
                    controllers.isloading.value
                        ? const CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation(brownColor),
                          )
                        : customButton(
                            color: brownColor,
                            textColor: whiteColor,
                            title: login,
                            onPress: () async {
                              controllers.isloading(true);

                              await controllers
                                  .loginmethod(context: context)
                                  .then((value) {
                                if (value != null) {
                                  Get.offAll(() => const Home());
                                  VxToast.show(context, msg: toastmsg);
                                } else {
                                  controllers.isloading(false);
                                }
                              });
                            }).box.width(context.screenWidth - 30).make(),
                    5.heightBox,
                    createnewaccount.text.color(fontGrey).make(),
                    5.heightBox,
                    customButton(
                        color: lightGrey,
                        textColor: brownColor,
                        title: signup,
                        onPress: () {
                          Get.to(() => const SignupScreen());
                        }).box.width(context.screenWidth - 30).make(),
                    5.heightBox,
                    loginwith.text.color(fontGrey).make(),
                    7.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          2,
                          (index) => Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  backgroundColor: whiteColor,
                                  radius: 29,
                                  child: Image.asset(
                                    socialIconsList[index],
                                    width: 40,
                                  ),
                                ),
                              )),
                    ),
                    5.heightBox,
                  ],
                )
                    .box
                    .white
                    .rounded
                    .padding(const EdgeInsets.all(16))
                    .width(context.screenWidth - 70)
                    .outerShadow
                    .make(),
              ),
              25.heightBox
            ],
          ),
        ),
      ),
    ));
  }
}

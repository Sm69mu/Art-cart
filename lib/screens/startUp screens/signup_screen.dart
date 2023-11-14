
import 'package:e_commerce_application/constants/default%20consts/consts.dart';
import 'package:e_commerce_application/controllers/auth_controller.dart';
import 'package:e_commerce_application/screens/home.dart';
import 'package:e_commerce_application/widgets/custom%20widgets/applogo_widget.dart';
import 'package:e_commerce_application/widgets/custom%20widgets/bg_widget.dart';
import 'package:e_commerce_application/widgets/custom%20textfeilds/custom_textfield.dart';
import 'package:e_commerce_application/widgets/custom%20buttons/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool isCheck = false;
  var controllers = Get.put(AuthController());

  //text controllers
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var retypeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Obx(
          () => Column(
            children: [
              (context.screenHeight * 0.1).heightBox,
              applogoWidget(),
              17.heightBox,
              "Register to  $appname"
                  .text
                  .fontFamily(bold)
                  .size(20)
                  .white
                  .make(),
              25.heightBox,
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      CustomTextfield(
                          hint: nameHints,
                          title: names,
                          controller: nameController,
                          isPass: false),
                      CustomTextfield(
                          hint: emailHint,
                          title: uemail,
                          controller: emailController,
                          isPass: false),
                      CustomTextfield(
                          hint: passwordHint,
                          title: Upassword,
                          controller: passwordController,
                          isPass: true),
                      CustomTextfield(
                          hint: retypepasswordHint,
                          title: retypepassword,
                          controller: retypeController,
                          isPass: true),
                      3.heightBox,
                      Row(
                        children: [
                          Checkbox(
                              activeColor: brownColor,
                              checkColor: whiteColor,
                              value: isCheck,
                              onChanged: (newValue) {
                                setState(() {
                                  isCheck = newValue!;
                                });
                              }),
                          5.widthBox,
                          Expanded(
                            child: RichText(
                                text: const TextSpan(children: [
                              TextSpan(
                                  text: "I agree to the ",
                                  style: TextStyle(
                                      fontFamily: semibold, color: fontGrey)),
                              TextSpan(
                                  text: termAndCondition,
                                  style: TextStyle(
                                      fontFamily: semibold, color: brownColor)),
                              TextSpan(
                                  text: " & ",
                                  style: TextStyle(
                                      fontFamily: semibold, color: fontGrey)),
                              TextSpan(
                                  text: privacyPolicy,
                                  style: TextStyle(
                                      fontFamily: semibold, color: brownColor))
                            ])),
                          )
                        ],
                      ),
                      10.heightBox,
                      controllers.isloading.value
                          ? const CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation(brownColor),
                            )
                          : customButton(
                              color: isCheck == true ? brownColor : lightGrey,
                              textColor:
                                  isCheck == true ? whiteColor : brownColor,
                              title: signup,
                              onPress: () async {
                                if (isCheck != false) {
                                  controllers.isloading(true);
                                  try {
                                    await controllers.SignUpMethods(
                                            context: context,
                                            email: emailController.text,
                                            password: passwordController.text)
                                        .then((value) {
                                      return controllers.storeUserData(
                                          email: emailController.text,
                                          password: passwordController.text,
                                          name: nameController.text);
                                    }).then((value) {
                                      VxToast.show(context, msg: toastmsg);
                                      Get.offAll(() => const Home());
                                    });
                                  } catch (e) {
                                    auth.signOut();
                                    // ignore: use_build_context_synchronously
                                    VxToast.show(context, msg: e.toString());
                                    controllers.isloading(false);
                                  }
                                }
                              }).box.width(context.screenWidth - 30).make(),
                      20.heightBox,
                      RichText(
                          text: const TextSpan(children: [
                        TextSpan(
                            text: alreadyHavaAcc,
                            style:
                                TextStyle(fontFamily: bold, color: fontGrey)),
                        TextSpan(
                            text: login,
                            style:
                                TextStyle(fontFamily: bold, color: brownColor))
                      ])).onTap(() {
                        Get.back();
                      }),
                      15.heightBox
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
              ),
              30.heightBox
            ],
          ),
        ),
      ),
    ));
  }
}

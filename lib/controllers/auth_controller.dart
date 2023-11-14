import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_application/constants/default%20consts/consts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  //loading variable
  var isloading = false.obs;

  //text controllers
  final emailController = TextEditingController();
  final paswordController = TextEditingController();

  //login method

  Future<UserCredential?> loginmethod({context}) async {
    UserCredential? userCredential;

    try {
      userCredential = await auth.signInWithEmailAndPassword(
          email: emailController.text, password: paswordController.text);
    } on FirebaseAuthException catch (e) {
      VxToast.show(context, msg: e.toString());
    }
    return userCredential;
  }

  //signUp method

  // ignore: non_constant_identifier_names
  Future<UserCredential?> SignUpMethods({email, password, context}) async {
    UserCredential? userCredential;

    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      VxToast.show(context, msg: e.toString());
    }
    return userCredential;
  }

  //storing data method
  storeUserData({
    name,
    password,
    email,
  }) async {
    DocumentReference store =
        firestore.collection(usersCollection).doc(currentuser!.uid);
    store.set({
      'name': name,
      'password': password,
      'email': email,
      'imageUrl': '',
      'id': currentuser!.uid
    });
  }

  //signOut method

  signOutMethod(context) async {
    try {
      await auth.signOut();
      Navigator.pop(context);
    } catch (e) {
      VxToast.show(context, msg: e.toString());
    }
  }
}

import 'package:e_commerce_application/constants/default%20consts/consts.dart';
import 'package:e_commerce_application/controllers/home_controller.dart';
import 'package:e_commerce_application/screens/default%20screens/account%20screen/account_screen.dart';
import 'package:e_commerce_application/screens/default%20screens/cart%20screen/cart_screen.dart';
import 'package:e_commerce_application/screens/default%20screens/categories%20screen/categories_screen.dart';
import 'package:e_commerce_application/screens/default%20screens/home%20screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());

    var navBody = [
      const HomeScreen(),
      const CategoriesScreen(),
      const CartScreen(),
      const AccountScreen()
    ];

    return Scaffold(
      body: Column(
        children: [
          Obx(
            () => Expanded(
              child: navBody.elementAt(controller.currentNavIndex.value),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Obx(
        () => NavigationBar(
          selectedIndex: controller.currentNavIndex.value,
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home_rounded),
              label: home,
            ),
            NavigationDestination(
                icon: Icon(Icons.shopping_bag_rounded), label: catagories),
            NavigationDestination(
                icon: Icon(Icons.shopping_cart_rounded), label: cart),
            NavigationDestination(
                icon: Icon(Icons.person_rounded), label: account),
          ],
          onDestinationSelected: (value) {
            controller.currentNavIndex.value = value;
          },
        ),
      ),
    );
  }
}

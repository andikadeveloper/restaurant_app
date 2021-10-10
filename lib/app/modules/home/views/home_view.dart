import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:restaurant_app/app/modules/home/views/home_favorite.dart';
import 'package:restaurant_app/app/utils/constants.dart';

import '../controllers/home_controller.dart';
import 'home_body.dart';

class HomeView extends GetView<HomeController> {
  final bodyPages = [
    HomeBody(),
    HomeFavorit(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: bodyPages.elementAt(controller.currentIndex.value),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.currentIndex.value,
          selectedIconTheme: IconThemeData(color: primaryColor),
          unselectedIconTheme: IconThemeData(color: Colors.black54),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: 'Favorite',
            )
          ],
          onTap: (value) {
            controller.currentIndex.value = value;
          },
        ),
      ),
    );
  }
}

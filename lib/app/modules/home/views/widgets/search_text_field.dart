import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_app/app/controllers/restaurant_controller.dart';
import 'package:restaurant_app/app/modules/home/controllers/home_controller.dart';
import 'package:restaurant_app/app/utils/constants.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homeController = Get.find<HomeController>();
    final restaurantController = Get.find<RestaurantController>();

    return TextField(
      controller: homeController.searchController,
      style: Get.textTheme.bodyText1,
      cursorColor: primaryColor,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none),
        filled: true,
        fillColor: backgroundColor,
        hintText: 'Search e.g Melting Pot',
        hintStyle: Get.textTheme.bodyText2!.copyWith(color: Colors.grey),
        prefixIcon: Icon(
          Icons.search,
          color: primaryColor,
        ),
      ),
      onChanged: (value) {
        if (homeController.searchController.text.isEmpty) {
          restaurantController.isSearch.value = false;
        } else {
          restaurantController.isSearch.value = true;
        }
        restaurantController.onSearch(value);
      },
    );
  }
}

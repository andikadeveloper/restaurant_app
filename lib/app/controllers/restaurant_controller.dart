import 'package:get/get.dart';
import 'package:restaurant_app/app/data/models/restaurant_model.dart';
import 'package:restaurant_app/app/data/provider/restaurant_provider.dart';
import 'package:restaurant_app/app/utils/constants.dart';
import 'package:flutter/material.dart';

class RestaurantController extends GetxController {
  var restaurants = <Restaurant>[].obs;
  var foundedRestaurant = <Restaurant>[].obs;
  var favoriteRestaurant = <Restaurant>[].obs;

  var isSearch = false.obs;

  // Fetch data
  void fetchRestaurants() async {
    restaurants.value = await RestaurantProvider.getRestaurants();
  }

  void onSearch(String text) {
    if (isSearch.isTrue) {
      foundedRestaurant.value = restaurants
          .where((restaurant) => restaurant.name!.toLowerCase().contains(text))
          .toList();
    } else {
      fetchRestaurants();
      foundedRestaurant.clear();
    }
  }

  void addToFavorite(Restaurant restaurant) {
    bool isDuplicated = false;

    favoriteRestaurant.forEach(
      (element) {
        if (element.id == restaurant.id) {
          isDuplicated = true;
        }
      },
    );

    if (!isDuplicated) {
      favoriteRestaurant.add(restaurant);
      Get.snackbar(
        'Success',
        '${restaurant.name} has added to favorite',
        backgroundColor: Colors.white,
      );
    } else {
      Get.defaultDialog(
        title: 'Notification',
        middleText:
            '${restaurant.name} already on favorite, please add other restaurant.',
        confirm: TextButton(
          style: TextButton.styleFrom(backgroundColor: primaryColor),
          onPressed: () {
            Get.back();
          },
          child: Text(
            'Okay',
            style: Get.textTheme.button!.copyWith(color: Colors.white),
          ),
        ),
      );
    }
  }

  @override
  void onInit() {
    super.onInit();

    fetchRestaurants();
  }
}

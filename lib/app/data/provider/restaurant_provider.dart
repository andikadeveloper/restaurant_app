import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:restaurant_app/app/data/models/restaurant_model.dart';

class RestaurantProvider {
  // Get restaurant list from json file in assets
  static Future<List<Restaurant>> getRestaurants() async {
    final String response = await DefaultAssetBundle.of(Get.context!)
        .loadString('assets/data/local_restaurant.json');
    final data = await jsonDecode(response);

    final List restaurants = data['restaurants'];

    return restaurants.map((e) => Restaurant.fromJson(e)).toList();
  }
}

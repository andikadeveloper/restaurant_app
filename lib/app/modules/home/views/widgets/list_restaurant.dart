import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_app/app/data/models/restaurant_model.dart';

import 'restaurant_item.dart';

class ListRestaurant extends StatelessWidget {
  const ListRestaurant({
    Key? key,
    required this.listRestaurant,
  }) : super(key: key);

  final List<Restaurant> listRestaurant;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ListView.builder(
        itemCount: listRestaurant.length,
        itemBuilder: (context, index) {
          Restaurant restaurant = listRestaurant[index];

          return RestaurantItem(restaurant: restaurant);
        },
      ),
    );
  }
}

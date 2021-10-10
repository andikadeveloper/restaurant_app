import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:restaurant_app/app/controllers/restaurant_controller.dart';
import 'package:restaurant_app/app/data/models/restaurant_model.dart';
import 'package:restaurant_app/app/modules/detail/views/detail_body.dart';
import 'package:restaurant_app/app/modules/detail/views/widgets/favorite_button.dart';

import '../controllers/detail_controller.dart';
import 'widgets/app_bar_with_image.dart';

class DetailView extends GetView<DetailController> {
  @override
  Widget build(BuildContext context) {
    final restaurantController = Get.find<RestaurantController>();

    final Restaurant restaurant = Get.arguments;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          AppBarWithImage(
            title: restaurant.name!,
            image: restaurant.pictureId!,
          ),
          DetailBody(restaurant: restaurant),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 1,
              offset: Offset(0, 0),
              color: Colors.grey,
            )
          ],
        ),
        height: Get.height * 0.1,
        alignment: Alignment.centerRight,
        child: FavoriteButton(
          onPress: () {
            restaurantController.addToFavorite(restaurant);
          },
        ),
      ),
    );
  }
}

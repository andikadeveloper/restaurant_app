import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_app/app/controllers/restaurant_controller.dart';
import 'package:restaurant_app/app/modules/home/views/widgets/list_restaurant.dart';
import 'package:restaurant_app/app/utils/constants.dart';

class HomeFavorit extends StatelessWidget {
  const HomeFavorit({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final restaurantController = Get.find<RestaurantController>();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your favorite restaurant',
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: primaryColor,
      ),
      body: Obx(
        () {
          if (restaurantController.favoriteRestaurant.isEmpty) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: Get.width * 0.5,
                    child: Image.asset('assets/images/no-data.png')),
                Text(
                  'You don\'t have any favorite restaurant. Please add one',
                  textAlign: TextAlign.center,
                ),
              ],
            );
          } else {
            return Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ListRestaurant(
                listRestaurant: restaurantController.favoriteRestaurant,
              ),
            );
          }
        },
      ),
    );
  }
}

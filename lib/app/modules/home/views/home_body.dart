import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_app/app/controllers/restaurant_controller.dart';

import 'widgets/list_restaurant.dart';
import 'widgets/search_restaurant.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final restaurantController = Get.find<RestaurantController>();
    return Column(
      children: [
        SearchRestaurant(),
        Obx(
          () {
            if (restaurantController.isSearch.isTrue) {
              if (restaurantController.foundedRestaurant.isEmpty) {
                return Expanded(
                  child: Container(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              width: Get.width * 0.5,
                              child: Image.asset('assets/images/no-data.png')),
                          Text(
                            'Oops, the restaurant you are looking for doesn\'t exist',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )),
                );
              } else {
                return Expanded(
                  child: ListRestaurant(
                    listRestaurant: restaurantController.foundedRestaurant,
                  ),
                );
              }
            } else {
              return Expanded(
                child: ListRestaurant(
                  listRestaurant: restaurantController.restaurants,
                ),
              );
            }
          },
        ),
      ],
    );
  }
}

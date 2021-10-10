import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_app/app/data/models/restaurant_model.dart';

import 'widgets/city_and_rating_card.dart';
import 'widgets/menu_card.dart';
import 'widgets/name_and_description_card.dart';

class DetailBody extends StatelessWidget {
  const DetailBody({Key? key, required this.restaurant}) : super(key: key);

  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          NameAndDescriptionCard(
            name: restaurant.name!,
            description: restaurant.description!,
          ),
          CityAndRatingCard(
            city: restaurant.city!,
            rating: restaurant.rating.toString(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10),
            child: Text(
              'Foods Menu:',
              style: Get.textTheme.headline6,
            ),
          ),
          MenuCard(
            menuItems: restaurant.menus!['foods'] as List,
            menuIcon: Icons.food_bank,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              'Drinks Menu:',
              style: Get.textTheme.headline6,
            ),
          ),
          MenuCard(
            menuItems: restaurant.menus!['drinks'],
            menuIcon: Icons.local_drink,
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_app/app/data/models/restaurant_model.dart';
import 'package:restaurant_app/app/routes/app_pages.dart';
import 'package:restaurant_app/app/utils/constants.dart';

class RestaurantItem extends StatelessWidget {
  const RestaurantItem({
    Key? key,
    required this.restaurant,
  }) : super(key: key);

  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
      child: ListTile(
        onTap: () {
          Get.toNamed(Routes.DETAIL, arguments: restaurant);
        },
        leading: CircleAvatar(
          backgroundColor: primaryColor,
          backgroundImage: NetworkImage(restaurant.pictureId!),
        ),
        title: Text(
          restaurant.name!,
          style: Get.textTheme.bodyText2,
        ),
        subtitle: Text(restaurant.city!),
        trailing: CircleAvatar(
          backgroundColor: primaryColor,
          radius: 10,
          child: FittedBox(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                restaurant.rating.toString(),
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        tileColor: primaryColor.withOpacity(0.5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

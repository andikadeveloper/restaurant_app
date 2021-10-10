import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_app/app/utils/constants.dart';

import 'search_text_field.dart';

class SearchRestaurant extends StatelessWidget {
  const SearchRestaurant({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.3,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Search your\nFavorite restaurant',
            textAlign: TextAlign.start,
            style: Get.textTheme.headline5!.copyWith(
              color: backgroundColor,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SearchTextField(),
        ],
      ),
    );
  }
}

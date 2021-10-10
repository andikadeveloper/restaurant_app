import 'package:flutter/material.dart';
import 'package:restaurant_app/app/utils/constants.dart';

import 'text_with_icon.dart';

class CityAndRatingCard extends StatelessWidget {
  const CityAndRatingCard({
    Key? key,
    required this.city,
    required this.rating,
  }) : super(key: key);

  final String city;
  final String rating;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        margin: EdgeInsets.zero,
        color: primaryColor.withOpacity(0.5),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              TextWitIcon(
                icon: Icons.location_city,
                title: 'City',
                text: city,
              ),
              TextWitIcon(
                icon: Icons.star,
                text: rating,
                title: 'Rating',
              )
            ],
          ),
        ),
      ),
    );
  }
}

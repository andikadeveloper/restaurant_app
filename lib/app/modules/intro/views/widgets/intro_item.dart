import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IntroItem extends StatelessWidget {
  const IntroItem({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
  }) : super(key: key);

  final String image;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image),
        Column(
          children: [
            Text(
              title,
              style: Get.textTheme.headline6,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                description,
                textAlign: TextAlign.center,
                style: Get.textTheme.bodyText2,
              ),
            ),
          ],
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_app/app/utils/constants.dart';

class AppBarWithImage extends StatelessWidget {
  const AppBarWithImage({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: primaryColor,
      expandedHeight: Get.height * 0.3,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.network(
          image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

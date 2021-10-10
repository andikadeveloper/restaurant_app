import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_app/app/utils/constants.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({Key? key, required this.onPress}) : super(key: key);

  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        width: Get.width * 0.5,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          'Add to favorite',
          style: Get.textTheme.button!.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}

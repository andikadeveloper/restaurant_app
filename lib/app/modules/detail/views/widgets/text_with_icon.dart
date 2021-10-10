import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextWitIcon extends StatelessWidget {
  const TextWitIcon({
    Key? key,
    required this.icon,
    required this.text,
    required this.title,
  }) : super(key: key);

  final IconData icon;
  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.black54,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          '$title: ',
          style: Get.textTheme.bodyText2!.copyWith(color: Colors.black54),
        ),
        Text(
          text,
          style: Get.textTheme.bodyText2,
        ),
      ],
    );
  }
}

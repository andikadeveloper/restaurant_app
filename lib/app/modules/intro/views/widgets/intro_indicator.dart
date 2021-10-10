import 'package:flutter/material.dart';
import 'package:restaurant_app/app/utils/constants.dart';

class IntroIndicator extends StatelessWidget {
  const IntroIndicator({
    Key? key,
    this.isActive = false,
  }) : super(key: key);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: isActive ? 10 : 6,
      decoration: BoxDecoration(
        color: isActive ? primaryColor : Colors.grey,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}

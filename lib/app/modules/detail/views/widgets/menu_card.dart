import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_app/app/utils/constants.dart';

class MenuCard extends StatelessWidget {
  const MenuCard({
    Key? key,
    required this.menuItems,
    required this.menuIcon,
  }) : super(key: key);

  final List menuItems;
  final IconData menuIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.2,
      margin: const EdgeInsets.only(bottom: 5, top: 5),
      padding: const EdgeInsets.only(left: 10),
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          final food = menuItems[index]['name'];

          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Card(
              color: primaryColor.withOpacity(0.5),
              margin: EdgeInsets.zero,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      food,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Icon(menuIcon)
                  ],
                ),
              ),
            ),
          );
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
        ),
      ),
    );
  }
}

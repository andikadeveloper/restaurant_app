import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:restaurant_app/app/routes/app_pages.dart';

import '../controllers/intro_controller.dart';
import 'widgets/intro_indicator.dart';
import 'widgets/intro_item.dart';

class IntroView extends GetView<IntroController> {
  List<IntroIndicator> buildIndicator() {
    List<IntroIndicator> items = [];

    for (int i = 0; i < 3; i++) {
      if (i == controller.currentIndex.value) {
        items.add(
          IntroIndicator(
            isActive: true,
          ),
        );
      } else {
        items.add(IntroIndicator());
      }
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          TextButton(
            onPressed: () {
              Get.offNamed(Routes.HOME);
            },
            child: Text(
              'Skip',
              style: Get.textTheme.bodyText2!.copyWith(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: PageView(
          onPageChanged: (value) {
            controller.currentIndex.value = value;
          },
          controller: controller.pageController,
          children: [
            IntroItem(
              image: 'assets/images/intro-image-1.png',
              title: 'What is Lorem Ipsum?',
              description:
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
            ),
            IntroItem(
              image: 'assets/images/intro-image-2.png',
              title: 'Where does it come from?',
              description:
                  'Contrary to popular belief, Lorem Ipsum is not simply random text',
            ),
            IntroItem(
              image: 'assets/images/intro-image-3.png',
              title: 'Why do we use it?',
              description:
                  'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout',
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: Get.height * 0.1,
        alignment: Alignment.center,
        child: Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: buildIndicator(),
          ),
        ),
      ),
    );
  }
}

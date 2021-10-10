import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  late TextEditingController searchController;
  var currentIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();

    searchController = TextEditingController();
  }

  @override
  void onClose() {
    super.onClose();

    searchController.dispose();
  }
}

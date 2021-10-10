import 'package:get/get.dart';
import 'package:restaurant_app/app/controllers/restaurant_controller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<HomeController>(HomeController());
    Get.put(RestaurantController());
  }
}

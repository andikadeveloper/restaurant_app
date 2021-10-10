import 'package:get/get.dart';

import 'package:restaurant_app/app/modules/detail/bindings/detail_binding.dart';
import 'package:restaurant_app/app/modules/detail/views/detail_view.dart';
import 'package:restaurant_app/app/modules/home/bindings/home_binding.dart';
import 'package:restaurant_app/app/modules/home/views/home_view.dart';
import 'package:restaurant_app/app/modules/intro/bindings/intro_binding.dart';
import 'package:restaurant_app/app/modules/intro/views/intro_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.INTRO;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL,
      page: () => DetailView(),
      binding: DetailBinding(),
    ),
    GetPage(
      name: _Paths.INTRO,
      page: () => IntroView(),
      binding: IntroBinding(),
    ),
  ];
}

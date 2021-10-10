import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:restaurant_app/app/theme/app_theme.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Restaurant App",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: appTheme,
      debugShowCheckedModeBanner: false,
    ),
  );
}

import 'package:bit_wallet/app/modules/home/binding.dart';
import 'package:bit_wallet/app/modules/home/page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/pages.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.HOME,
    defaultTransition: Transition.fade,
    initialBinding: HomeBinding(),
    getPages: AppPages.pages,
    home: HomePage(),
  ));
}

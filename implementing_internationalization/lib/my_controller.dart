import 'package:get/get.dart';
import 'dart:ui';

class MyController extends GetxController {
  void changeLanguage(var prarm1, var param2) {
    var local = Locale(prarm1, param2);
    Get.updateLocale(local);
  }
}

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import 'package:getx_binding/my_controller.dart';

import 'home_controller.dart';

class AllControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyController>(() => MyController());
    Get.lazyPut<HomeController>(() => HomeController());
  }
}

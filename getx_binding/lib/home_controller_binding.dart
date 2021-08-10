import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_binding/home_controller.dart';

class HomeControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}

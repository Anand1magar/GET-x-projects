import 'package:get/get.dart';
import 'package:getx_binding/home_controller.dart';
import 'package:getx_binding/my_controller.dart';

class AllControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<HomeController>(HomeController());
    Get.put<MyController>(MyController());
  }
}

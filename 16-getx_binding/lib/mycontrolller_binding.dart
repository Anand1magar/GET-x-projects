import 'package:get/get.dart';

import 'my_controller.dart';

class MyControllerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyController>(() => MyController());
  }
}

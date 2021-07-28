import 'package:get/get.dart';

class MyController extends GetxController {
  var count = 0;

  void increment() async {
    await Future.delayed(Duration(seconds: 3));
    count++;
    update();
  }

//Best Approach................................

  @override
  void onInit() {
    // TODO: implement onInit
    print("Init called");
    super.onInit();
  }

// -------------When the controller will remove from the memory ------------
  @override
  void onClose() {
    // TODO: implement onClose
    print("Close called");
    super.onClose();
  }
}

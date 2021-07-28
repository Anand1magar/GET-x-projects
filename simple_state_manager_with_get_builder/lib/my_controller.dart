import 'package:get/get.dart';

class MyController extends GetxController {
  var count = 0;
//In case of simple state manager it is not require to declare the variable as reactive

  void counter() {
    count++;
    update(); //it will notify to all the widgets who  are using this count
  }
}

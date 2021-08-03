import 'package:get/get.dart';

class MyController extends GetxController {
  var count = 0.obs;

  void increment() {
    count++;
  }

  @override
  void onInit() {
    super.onInit();
    //call every time when the value of  count variable is changed

    ever(count, (_) => print(count));
    //called everytime when the value of the any variable from the list changed
    everAll([count], (_) => print(count));

    once(
      count,
      (_) => print(count),
    );
    //called when you stop typing inside the text box it will called after 2 second
    debounce(
        count,
        (_) => print(
            "When user stop typing for one second the value of the variable will print"),
        time: Duration(seconds: 2));
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

/* If you want every time when the value of variable changed then all the widgets which use the same 
      variable must update ifself then variable must be reactive or observable and to make it Reactive(RX) 
      .obs is use with variable value
      
      To update the widgets which use Rx variable must be placed inside Obx(() =>  your widgets which uses Rx 
      The widgets will only update if and only if the Rx variable value changeds 

      Other ways of making the variable RX are:
      1- The first is using RX{Type}
      ==============================
      initial value is recomended but not mandatory 
      final name =  RxString('');
      final isLogged = RxBool(false); 

      final count = RxInt(0);
      final balance = RxDouble(0.0);
      final items = RxList<String>([]);
      final myMap =  Rx<Map<String, int>>({});
      //Custome classes  - it can be any class literally
       final user =  Rx<User>();
      */
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var count = 0.obs;
  //once you use the obs this count variable become reactive or obserable

  void increment() {
    count++;
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Reactive state manage",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Reactive state manager"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Obx is used because the text widgets will change when the count value changes
            Obx(
              () => Text(
                "The count value is $count",
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                increment();
              },
              child: Text("Increment"),
            )
          ],
        )),
      ),
    );
  }
}

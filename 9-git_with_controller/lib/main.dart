import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'my_controller.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //If inti property is not used in GetX<Type of Controller> then
//then create the instance of controller as follow:
  // MyController my_controller = Get.put(MyController());
  //NOTE: Get.put() for Dependency injection
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "GetX with controller",
      home: Scaffold(
          appBar: AppBar(
            title: Text("GetX with controller"),
          ),
          body: Center(
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GetX<MyController>(
                  init: MyController(),
                  //It will initialize the MyController it means it  instance of MyController
                  builder: (controller) {
                    //builder will automaticly take instance of Mycontroller
                    return Text("Number start  from ${controller.count}");
                  },
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    //If the instance of the controller is not created on top we use this following:
                    Get.find<MyController>().increment();
                  },
                  child: Text("Increment"),
                ),
              ],
            )),
          )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_controller_lifecycle/my_controller.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //Here i am doing dependency injection
  MyController myController = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("GetX Controller LifeCycle"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GetBuilder<MyController>(
                    //Note: When ever the controller get initialized this initState will work
                    // initState: (_) => myController.increment(),
                    // dispose: (_) => myController.dispose(),
                    builder: (controller) {
                  return Text(
                    "The increment number is ${controller.count}",
                    style: TextStyle(fontSize: 20),
                  );
                }),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    myController.increment();
                  },
                  child: Text("Increment"),
                ),
              ],
            ),
          )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_state_manager_with_get_builder/my_controller.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Simple state manager with GetBuilder"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetBuilder<MyController>(
                  init: MyController(),
                  builder: (controller) {
                    return Text(
                      "This is counter ${controller.count}",
                      style: TextStyle(fontSize: 24),
                    );
                  }),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  //If the instance of the My Controller is not created
                  Get.find<MyController>().counter();
                },
                child: Text(
                  "Increment",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

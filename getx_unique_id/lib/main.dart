import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_unique_id/my_controller.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyController myController = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "GetX Unique Id",
      home: Scaffold(
        appBar: AppBar(
          title: Text("GetX unique id"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetBuilder<MyController>(
                id: "txtCount",
                builder: (controller) {
                  return Text(
                    "The value is ${controller.count}",
                    style: TextStyle(fontSize: 20),
                  );
                },
              ),
              SizedBox(height: 20),
              GetBuilder<MyController>(
                  id: "second Id",
                  builder: (controller) {
                    return Text(
                      "The value is ${controller.count}",
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
        ),
      ),
    );
  }
}

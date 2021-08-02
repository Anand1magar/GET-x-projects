import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_unique_id/my_controller.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyController myController = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX project',
      home: Scaffold(
        appBar: AppBar(
          title: Text("unique Id"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetBuilder<MyController>(
                  id: "text1",
                  builder: (controller) {
                    return Text(
                      "The value is ${controller.count}",
                      style: TextStyle(fontSize: 25),
                    );
                  }),
              SizedBox(height: 18),
              GetBuilder<MyController>(
                id: "text2",
                builder: (controller) {
                  return Text(
                    "The value is ${controller.count}",
                    style: TextStyle(fontSize: 25),
                  );
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    myController.increment();
                  },
                  child: Text("Increment text 1")),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seperating_uicode_/mycontroller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //Create a instance of controller
  Mycontroller myController = Get.put(Mycontroller());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Get x porject"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "My name is ${myController.student.value.name}",
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 18),
            ElevatedButton(
              onPressed: () {
                myController.convertToUpperCase();
              },
              child: Text("Upper case"),
            )
          ],
        )),
      ),
    );
  }
}

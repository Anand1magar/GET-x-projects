import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workers_in_getx/my_controller.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyController _myController = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Workers in GetX',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Workers in GetX"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                _myController.increment();
              },
              child: Text("Increment"),
            ),
            SizedBox(height: 20),
            TextField(
              onChanged: (val) {
                _myController.increment();
              },
            )
          ],
        )),
      ),
    );
  }
}

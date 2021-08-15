import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_binding/all_controller_binding.dart';
import 'package:getx_binding/home_controller_binding.dart';
import 'package:getx_binding/mycontrolller_binding.dart';

import 'home.dart';
import 'my_controller.dart';

void main() {
  MyControllerBinding().dependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // initialBinding: AllControllerBinding(),
      getPages: [
        GetPage(
          name: '/home',
          page: () => Home(),
          binding: HomeControllerBinding(),
        ),
      ],
      title: 'Binding',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Binding"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  "The value is ${Get.find<MyController>().count}",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    Get.find<MyController>().increment();
                  },
                  child: Text("Increment")),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed('/home');
                },
                child: Text("Home"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

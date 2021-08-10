import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_binding/home_controller.dart';
import 'package:getx_binding/my_controller.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Obx(
                () => Text(
                  "The value is ${Get.find<HomeController>().count}",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.find<HomeController>().increment();
                },
                child: Text("Increment"),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text("Back"),
              ),
            ]),
      ),
    );
  }
}

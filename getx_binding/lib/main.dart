import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_binding/all_controller_binding.dart';
import 'package:getx_binding/home_controller_binding.dart';
import 'package:getx_binding/my_controller_binding.dart';
import 'home.dart';
import 'my_controller.dart';

void main() {
  MyAppControllerBinding().dependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Binding",
      // initialBinding: AllControllerBinding(), //initialized both controller

      // If Binding applied on route level
      getPages: [
        GetPage(
            name: '/home',
            page: () => Home(),
            binding: HomeControllerBinding()),
      ],

      home: Scaffold(
        appBar: AppBar(
          title: Text("Binding"),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Obx(
                  () => Text("The value is ${Get.find<MyController>().count}",
                      style: TextStyle(fontSize: 25)),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Get.find<MyController>().increment();
                  },
                  child: Text("Increment"),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    // Get.to(Home());

                    //For name route
                    Get.toNamed('/home');

                    //for normal route
                    // Get.to(Home(), binding: HomeControllerBinding());
                  },
                  child: Text("Home"),
                ),
              ]),
        ),
      ),
    );
  }
}

/*
Smart management 
==================
GetX provide SmartManagement that lets us configure how dependencies behave in terms of memory management.
GetMaterialApp  {
smartManagement: SmartManagement.full  // or keepFactory or .onlyBuilder
}

FullMode
==========
Everything gets disposed as soon as the route is remove from navigation stack, unless declared permanent.


SmartManagement.keepFactory
=========================
Just like SamrtManagement.full, it will remove it's dependencies when it's not being used anymore. However, it will keep theire factory,
which means it will recreate the depedency if you need that instance again. 

*/
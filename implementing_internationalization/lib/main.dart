import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:implementing_internationalization/message.dart';
import 'package:implementing_internationalization/my_controller.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyController myController = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Message(),
      locale: Locale('en', 'US'),
      //Defalut locale //To get the device locale Get.deviceLocale()
      fallbackLocale: Locale('en', 'US'),
      //fallback locale if wrong locale found
      home: Scaffold(
        appBar: AppBar(
          title: Text("Implementing Internationalization"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "hello".tr,
                style: TextStyle(color: Colors.purple, fontSize: 25),
              ),
              ElevatedButton(
                onPressed: () {
                  myController.changeLanguage('hi', 'IN');
                },
                child: Text(
                  "Hindi",
                ),
              ),
              SizedBox(height: 18),
              ElevatedButton(
                onPressed: () {
                  myController.changeLanguage('fr', 'FR');
                },
                child: Text("France"),
              ),
              SizedBox(height: 18),
              ElevatedButton(
                onPressed: () {
                  myController.changeLanguage('en', 'US');
                },
                child: Text("English"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

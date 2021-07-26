import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get.dart';
import 'package:obx_and_custome_class/student.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // var student = Student();

  //For make entire class observable use use obs
  final student = Student("Tom", 30);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Get x project",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Get x project"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  "My name is ${student.name}",
                  style: TextStyle(fontSize: 24),
                ),
              ),
              SizedBox(height: 15),
              ElevatedButton(
                  onPressed: () {
                    //if individual variable is obserable
                    // student.name.value = student.name.value.toUpperCase();

                    // If  class is observable
                    // student.update(() {
                    //   student.name = student.name.toString().toUpperCase();
                    // });
                  },
                  child: Text("UpperCase")),
            ],
          ),
        ),
      ),
    );
  }
}

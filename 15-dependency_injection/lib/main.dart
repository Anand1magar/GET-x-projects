import 'package:dependency_injection/myController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //My controller instance will be created wven if it is not used
    //tag will be used to find the instance with tag name
    //Controller disposed when it is not use but if permanent is true the instance will alive throughtout the app

    MyController myController =
        Get.put(MyController(), tag: 'instance1', permanent: true);

    //----------Using Get.lazyPut() -------------
    //Instance will be create when it is used
    // It is similer to "parmanent", the differences it that hte instances will discarded when it it not used
    //but when it 's use is needed again Get, will recreate the instance

    // Get.lazyPut(() => MyController());
    return GetMaterialApp(
      title: 'Dependency Injection',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dependency injection'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              //Instance will be created with tag
              Get.find(tag: 'instance1');

              //Find the instance
              // Get.find<MyController>();
            },
            child: Text('Click me'),
          ),
        ),
      ),
    );
  }
}

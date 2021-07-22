import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:route_navigation/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'route navigation',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Home Screen'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: Text(
                    "Go Home",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () async {
                    Get.to(
                      Home(),
                      transition: Transition.zoom,
                      duration: Duration(milliseconds: 2000),
                      curve: Curves.bounceInOut,
                      arguments: "Data form main",
                    );
                    //Data came from home as result
                    var data = await Get.to(Home());
                    print("Received the data form the $data");
                  },
                ),
              ],
            ),
          ),
        ));
  }
}

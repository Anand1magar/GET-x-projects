import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:name_routing/home.dart';
import 'package:name_routing/next_screen.dart';
import 'package:name_routing/unknown.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Name Navigation",
      initialRoute: '/',
      defaultTransition: Transition.zoom,
      getPages: [
        GetPage(name: '/', page: () => MyApp()),
        GetPage(name: '/home', page: () => Home()),
        GetPage(
            name: '/next_screen/:somevalue',
            page: () => NextScreen(),
            transition: Transition.leftToRight),
      ],

      //when we are navigating to route which does't exist.
      unknownRoute: GetPage(
        name: '/notfound',
        page: () => Unknown(),
      ),

      home: Scaffold(
        appBar: AppBar(
          title: Text("Main Screen"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Get.toNamed('/home');

                  // Go to home screen but no option to return to previous screen
                  // Get.offNamed('/home');

                  // Go to the home Screen and remove all the previous screen
                  // Get.offAllNamed('/home');

                  //<----Dynamic URL Link ---->
                  //Here we are Na we do in web base applicationvigating to Home screen and navigating we can pass parameter as well as
                  //Here we are passing 2 parameter channel & content
                  Get.toNamed(
                      '/home?channel=Anand Magar&content=Flutter Get x');
                },
                child: Text("Go to Home"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'dart:html';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //GetMaterialApp is provided by GetX libary. we use this to do root management
      // in our app without using the context
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("snack bar"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text("Snack bar demo using Getx")),
            ElevatedButton(
              onPressed: () {
                Get.snackbar(
                  "SnackBar title", "This will be the message of Snack Bar",
                  //This titleText and messageText property will replace the previous title and message
                  titleText: Text("Another snack bar",
                      style: TextStyle(color: Colors.red)),
                  messageText: Text(
                    "This is the another message",
                    style: TextStyle(color: Colors.red),
                  ),
                  snackPosition: SnackPosition.BOTTOM,
                  backgroundColor: Colors.black,
                  maxWidth: 200,
                  animationDuration: Duration(milliseconds: 1200),
                  backgroundGradient:
                      LinearGradient(colors: [Colors.red, Colors.green]),

                  //While using border color ensure that u are using border width otherwise error will generated
                  borderColor: Colors.pink,
                  borderWidth: 4,
                  boxShadows: [
                    BoxShadow(
                      color: Colors.yellow,
                      offset: Offset(
                          10, 20), //x = left and right, y= top and buttom
                      spreadRadius: 20,
                      blurRadius: 8,
                    )
                  ],

                  //Dissmiss the snakbar by draging on virtical or horizental

                  isDismissible: true,
                  dismissDirection: SnackDismissDirection.HORIZONTAL,

                  //Animation in SnakBar
                  forwardAnimationCurve: Curves.bounceIn,
                  icon: Icon(Icons.send),

                  // Left bar indicator
                  leftBarIndicatorColor: Colors.white,
                  mainButton: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Retry",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  onTap: (val) {
                    print("Snack bar on tap");
                  },

                  // overlayBlur: 3,
                  showProgressIndicator: true,
                  progressIndicatorBackgroundColor: Colors.deepOrange,

                  //It will track what is the status of the snack bar  that when thesnackbar is open and close
                  snackbarStatus: (value) {
                    print(value);
                  },

                  //Use text form field: This userInputForm will hide the above or previous property

                  // userInputForm: Form(
                  //   child: Row(
                  //     children: [
                  //       Expanded(
                  //         child: TextField(),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                );
              },
              child: Text("Show snake bar"),
            )
          ],
        ),
      ),
    );
  }
}

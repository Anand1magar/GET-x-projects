import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Show Default Dialog',
      home: Scaffold(
        appBar: AppBar(title: Text("Default dialog")),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: ElevatedButton(
                  child: Text("Default dialog"),
                  onPressed: () {
                    Get.defaultDialog(
                      title: "Dialog Title",
                      titleStyle: TextStyle(fontSize: 24),
                      middleText: "This is middle text",
                      middleTextStyle: TextStyle(fontSize: 20),
                      content: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircularProgressIndicator(),
                          SizedBox(width: 20),
                          Text("Data Loading"),
                        ],
                      ),
                      textConfirm: "Conform",
                      onConfirm: () {
                        print("You press conform");
                      },
                      onCancel: () {
                        print("You press Cancle");
                      },
                      textCancel: "Cancle",
                      confirmTextColor: Colors.white,

                      //color for  default cancle button and confirm button
                      buttonColor: Colors.green,

                      //Customize the default cancle and conform button
                      // override the default cancel and conform button

                      cancel: Text(
                        "cancle",
                        style: TextStyle(color: Colors.black),
                      ),
                      confirm: Text(
                        "Conform",
                        style: TextStyle(color: Colors.green),
                      ),
                      actions: [
                        ElevatedButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: Text("Action-1"),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            print("Action-2");
                          },
                          child: Text("Action-2"),
                        ),
                      ],
                      //Dissmiss the dialog when we press on outside the dialog Which is bydefault true
                      barrierDismissible: false,
                    );
                  },
                ),
              ),
            ]),
      ),
    );
  }
}

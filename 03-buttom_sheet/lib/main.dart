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
      title: 'Buttom Sheets',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Bottom Sheet"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Button Sheet"),
              onPressed: () {
                Get.bottomSheet(
                  Container(
                    child: Wrap(
                      children: [
                        ListTile(
                          leading: Icon(Icons.wb_sunny_outlined),
                          title: Text("Light Theme"),
                          onTap: () {
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.wb_sunny),
                          title: Text("Dark Theme"),
                          onTap: () {
                            Get.changeTheme(ThemeData.dark());
                          },
                        ),
                      ],
                    ),
                  ),
                  barrierColor: Colors.greenAccent.shade100,
                  backgroundColor: Colors.purpleAccent,
                  isDismissible: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(
                      color: Colors.red,
                      style: BorderStyle.solid,
                      width: 4.0,
                    ),
                  ),
                  enableDrag: false, // By Default it will be true
                );
              },
            )
          ],
        )),
      ),
    );
  }
}

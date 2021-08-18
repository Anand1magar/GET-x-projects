import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  //initialize storage driver, GetStorage to access storage driver apis
  // It's important to use await before calling this API, or side effects will occur.
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var storage = GetStorage();
  var emailEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'storage and email varification',
        home: Scaffold(
            appBar: AppBar(
              title: Text("Storage and email varification"),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: TextField(
                      controller: emailEditingController,
                    ),
                  ),
                  SizedBox(height: 15),
                  ElevatedButton(
                      onPressed: () {
                        if (GetUtils.isEmail(emailEditingController.text)) {
                          storage.write('email', emailEditingController.text);
                        } else {
                          Get.snackbar(
                            "Enail is not valid",
                            "you have to enter valid email",
                            colorText: Colors.white,
                            backgroundColor: Colors.red,
                            snackPosition: SnackPosition.BOTTOM,
                          );
                        }
                      },
                      child: Text("Write")),
                  SizedBox(height: 15),
                  ElevatedButton(
                      onPressed: () {
                        var result = storage.read('email');
                        print('The value is $result');
                      },
                      child: Text("Read")),
                ],
              ),
            )));
  }
}

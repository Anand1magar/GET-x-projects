import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "This is Home Screen",
              style: TextStyle(color: Colors.red, fontSize: 20),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Got to next",
              ),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Get.back(result: "Data from Home Screen");
              },
              child: Text("Go back"),
            ),
            Text(
              "${Get.arguments}",
              style: TextStyle(color: Colors.green, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

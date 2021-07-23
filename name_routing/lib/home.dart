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
          children: [
            Text(
              "This is Home Screen",
              style: TextStyle(color: Colors.red, fontSize: 20),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                // Get.toNamed('/next_screen');
                Get.toNamed("/next_screen/1234");
              },
              child: Text("Next Screen"),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text("Go back"),
            ),
            SizedBox(height: 8),
            Text(
              "The chanel name is ${Get.parameters['channel']} and content is ${Get.parameters['content']}",
              style: TextStyle(color: Colors.green, fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}

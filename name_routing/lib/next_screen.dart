import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Next Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text(
            //   "This is Next Screen",
            //   style: TextStyle(color: Colors.bslue, fontSize: 20),
            // ),
            Text(
              "${Get.parameters['somevalue']}",
              style: TextStyle(color: Colors.red, fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}

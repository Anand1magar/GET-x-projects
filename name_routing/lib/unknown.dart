import 'package:flutter/material.dart';

class Unknown extends StatelessWidget {
  const Unknown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Unknown Page"),
      ),
      body: Center(
        child: Text(
          "This is Unknown Page",
          style: TextStyle(color: Colors.red, fontSize: 20),
        ),
      ),
    );
  }
}

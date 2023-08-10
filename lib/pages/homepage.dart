import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  int days = 30;
  String myName = "vikash jha";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My E commerce"),
      ),
      body: Center(
        child: Container(
          child: sayHello(),
        ),
      ),
      drawer: Drawer(),
    );
  }

  sayHello() {
    return Text("vikash");
  }
}

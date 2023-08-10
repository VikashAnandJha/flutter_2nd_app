import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  int days = 30;
  String myName = "vikash jha";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar title"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome Bro you are $days Mr. $myName"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}

import "package:flutter/material.dart";
import 'package:flutter_2nd_app/pages/homepage.dart';
import 'package:flutter_2nd_app/pages/loginpage.dart';
import 'package:flutter_2nd_app/pages/widgets/themes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Mytheme.lightTheme(context),
      initialRoute: "/home",
      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => HomePage(),
      },
    );
  }
}

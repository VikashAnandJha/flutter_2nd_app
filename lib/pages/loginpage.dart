import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Center(
          child: Column(children: [
            Image.asset(
              "assets/images/login.png",
              fit: BoxFit.cover,
            ),
            const Text(
              "Login Page",
              style: TextStyle(fontSize: 20),
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Enter Your Name",
                labelText: "Username",
              ),
            ),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                hintText: "Enter Your Password",
                labelText: "Password",
              ),
            ),
            ElevatedButton(onPressed: () => {}, child: Text("Login "))
          ]),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var name = "";

  final _formKey = GlobalKey<FormState>();

  moveToNext(BuildContext context) {
    if (_formKey.currentState != null && _formKey.currentState!.validate()) {
      Navigator.pushNamed(context, "/home");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(children: [
              Image.asset(
                "assets/images/login.png",
                fit: BoxFit.cover,
              ),
              Text(
                "Login Page $name",
                style: TextStyle(fontSize: 20),
              ),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Username is required";
                  }
                  return null; // Return null when the value is valid
                },
                onChanged: (value) {
                  name = value;
                  setState(() {});
                },
                decoration: const InputDecoration(
                  hintText: "Enter Your Name",
                  labelText: "Username",
                ),
              ),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Password is required";
                  }
                  return null; // Return null when the value is valid
                },
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: "Enter Your Password",
                  labelText: "Password",
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                  onPressed: () => moveToNext(context),
                  style: TextButton.styleFrom(
                    minimumSize: const Size(250, 40),
                  ),
                  child: const Text("Login "))
            ]),
          ),
        ),
      ),
    );
  }
}

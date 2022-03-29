import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userNameController = TextEditingController();
  final passWordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Form(child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: "Enter Username",
                    labelText: "Username",
                    ),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                    ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}

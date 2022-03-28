import 'package:someapp/Pages/loginpage.dart';


import 'package:flutter/material.dart';



void main() {
  runApp(
    MaterialApp(
      title: "Some App",
      home: LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
    ),
  );
}


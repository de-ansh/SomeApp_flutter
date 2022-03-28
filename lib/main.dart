import 'package:someapp/Pages/homepage.dart';


import 'package:flutter/material.dart';



void main() {
  runApp(
    MaterialApp(
      title: "Some App",
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
    ),
  );
}


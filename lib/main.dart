import 'package:shared_preferences/shared_preferences.dart';
import 'package:someapp/Pages/homepage.dart';
import 'package:someapp/Pages/loginpage.dart';

import 'package:flutter/material.dart';
import 'package:someapp/utils/Constants.dart';

Future main() async {
  await WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Some App",
      home: Constants.prefs.getBool("loggedin")==true?HomePage():LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      routes: {
        "/login": (context) => LoginPage(),
        "/home": (context) => HomePage(),
      },
    ),
  );
}

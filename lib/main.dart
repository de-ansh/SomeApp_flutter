import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Some App",
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.teal,
    ),
  ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Some App"),
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(onPressed: ),
    );
  }
}

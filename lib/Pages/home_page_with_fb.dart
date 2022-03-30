import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:someapp/widgets/drawer.dart';
import 'package:http/http.dart' as http;

import 'dart:convert';

import 'package:someapp/utils/Constants.dart';

class HomePageFb extends StatefulWidget {
  const HomePageFb({Key? key}) : super(key: key);

  @override
  State<HomePageFb> createState() => _HomePageFbState();
}

class _HomePageFbState extends State<HomePageFb> {
  TextEditingController _nameController = TextEditingController();
  var myText = "Change me";
  var url = Uri.parse('https://jsonplaceholder.typicode.com/photos');

  var data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdata();
    setState(() {});
  }

  Future getdata() async {
    // ignore: unused_local_variable
    var res = await http.get(url);
    data = jsonDecode(res.body);
    print(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Some App"),
        actions: [
          IconButton(
              onPressed: () {
                Constants.prefs.setBool("loggedin", false);
                Navigator.pushReplacementNamed(context, "/login");
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: data != null
            ? ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ListTile(
                      title: Text(data[index]["title"]),
                      subtitle: Text("ID: ${(data[index]["id"])}"),
                      leading: Image.network(data[index]["url"]),
                    ),
                  );
                },
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _nameController.text;
          setState(() {});
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}

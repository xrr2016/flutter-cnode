import 'package:flutter/material.dart';
import 'package:flutter_cnode/widget/app_drawer.dart';

class AppHome extends StatefulWidget {
  @override
  _AppHomeState createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "CNode",
          style: new TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18.0),
        ),
      ),
      body: new Center(
        child: new Text("home page"),
      ),
      drawer: new AppDrawer(),
      floatingActionButton: new FloatingActionButton(
          child: new Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: () {
            print("press button");
          }),
    );
  }
}

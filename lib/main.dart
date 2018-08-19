import 'package:flutter/material.dart';
import 'package:flutter_cnode/pages/app_home.dart';

void main() {
  runApp(new CNodeApp());
}

class CNodeApp extends StatefulWidget {
  @override
  _CNodeAppState createState() => _CNodeAppState();
}

class _CNodeAppState extends State<CNodeApp> {
  bool isDarkTheme = false;

  void toggleTheme() {
    setState(() {
      isDarkTheme = !isDarkTheme;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "CNode",
        debugShowCheckedModeBanner: false,
        theme: isDarkTheme ? ThemeData.dark() : ThemeData.light(),
        home: new AppHome());
  }
}

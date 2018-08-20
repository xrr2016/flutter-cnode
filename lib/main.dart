import 'package:flutter/material.dart';
import 'package:flutter_cnode/pages/app_home.dart';
import 'package:flutter_cnode/pages/app_new_topic.dart';
import 'package:flutter_cnode/pages/app_topic_collects.dart';
import 'package:flutter_cnode/pages/app_topic_detail.dart';
import 'package:flutter_cnode/pages/app_topic_edit.dart';
import 'package:flutter_cnode/pages/app_user_info.dart';

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
      theme: ThemeData.dark(),
      home: new AppHome(),
      initialRoute: '/',
      routes: {
        '/new_topic': (context) => new AppNewTopic(),
        '/topic_collects': (context) => new AppTopicCollects(),
        '/topic_detail': (context) => new AppTopicDetail(),
        '/topic_edit': (context) => new AppTopicEdit(),
        '/user_info': (context) => new AppUserInfo(),
      },
    );
  }
}

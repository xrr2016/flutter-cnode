import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_cnode/model/topic.dart';
import 'package:flutter_cnode/widget/app_drawer.dart';
import 'package:flutter_cnode/widget/app_topic_card_list.dart';
import 'package:http/http.dart' as http;

//List<Topic> parseTopics(String responseBody) {
//
//  print(responseBody);
//  return parsed.map((json) {
//    Topic.fromJson(json);
//  });
//}

class AppHome extends StatefulWidget {
  @override
  _AppHomeState createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> with SingleTickerProviderStateMixin {
  final List<Tab> _tabs = <Tab>[
    Tab(text: '问答'),
    Tab(text: '分享'),
    Tab(text: '招聘'),
    Tab(text: '精华'),
  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: _tabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<Topic> _topics = <Topic>[];

  void getTopics() async {
    final response = await http.get('https://cnodejs.org/api/v1/topics?page=1&tab=all&limit=10');

    print('${_topics.length} - 请求开始');
    if (response.statusCode == 200) {
      final List parsed = json.decode(response.body)['data'].toList();

      print(parsed.length);

      _topics = parsed.map((json) {
        return Topic.fromJson(json);
      });

      print(_topics.length);

//      setState(() {
//        print(parsed.length);
//        parsed.forEach((json) {
//          print('00000000000');
//        });
//        _topics = parsed.map((json) {
//          return Topic.fromJson(json);
//        });
//        print('${_topics.length} - 请求结束');
//      });
    }
  }

  @override
  Widget build(BuildContext context) {
    getTopics();

    return new Scaffold(
      appBar: new AppBar(
        title: Image.asset('assets/images/cnodejs_light.png', width: 100.0),
        centerTitle: true,
        bottom: TabBar(tabs: _tabs, controller: _tabController),
        actions: <Widget>[
          PopupMenuButton(itemBuilder: (BuildContext context) {}),
        ],
      ),
      body: new TabBarView(
        controller: _tabController,
        children: _tabs.map((Tab tab) {
          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: _topics.length > 0
                ? AppTopicCardList(_topics)
                : Center(child: CircularProgressIndicator()),
//              child: FutureBuilder<List<Topic>>(
//                future: getTopics(),
//                builder: (context, snapshot) {
//                  return snapshot.hasData
//                      ? AppTopicCardList(snapshot.data)
//                      : Center(child: CircularProgressIndicator());
//                },
//              ),
          );
        }).toList(),
      ),
      drawer: new AppDrawer(),
      floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.add, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pushNamed('/new_topic');
          }),
    );
  }
}

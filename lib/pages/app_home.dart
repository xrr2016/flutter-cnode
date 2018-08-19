import 'package:flutter/material.dart';
import 'package:flutter_cnode/widget/app_drawer.dart';
import 'package:flutter_cnode/widget/app_topic_card.dart';

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

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "CNode",
          style: new TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18.0),
        ),
        centerTitle: true,
        bottom: new TabBar(tabs: _tabs, controller: _tabController),
        actions: <Widget>[
          PopupMenuButton(
            itemBuilder: (BuildContext context) {},
          ),
        ],
      ),
      body: new TabBarView(
        controller: _tabController,
        children: _tabs.map((Tab tab) {
//          bool isLoadingData = true;
          return Container(
            padding: EdgeInsets.only(top: 12.0),
            child: ListView(
              children: <Widget>[
                AppTopicCard(),
                AppTopicCard(),
                AppTopicCard(),
                AppTopicCard(),
                AppTopicCard(),
                AppTopicCard(),
                AppTopicCard(),
              ],
            ),
          );
        }).toList(),
      ),
      drawer: new AppDrawer(),
      floatingActionButton: new FloatingActionButton(
          child: new Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pushNamed('/new_topic');
          }),
    );
  }
}

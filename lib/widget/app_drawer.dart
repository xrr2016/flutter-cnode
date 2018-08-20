import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: new ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: new Text(
              "xrr2016",
              style: TextStyle(fontSize: 18.0),
            ),
            accountEmail: new Text("xiaoranran1993@outlook.com"),
            currentAccountPicture: new CircleAvatar(
              child: new Text('X'),
            ),
            onDetailsPressed: () {
              print("more user info");
            },
          ),
          new ListTile(
            leading: Icon(
              Icons.home,
            ),
            selected: true,
            title: new Text(
              "首页",
              style: new TextStyle(
                fontSize: 16.0,
              ),
            ),
          ),
          new ListTile(
            leading: Icon(
              Icons.collections_bookmark,
            ),
            title: new Text(
              "我的收藏",
              style: new TextStyle(fontSize: 16.0),
            ),
            trailing: Text(
              '12',
              style: TextStyle(),
            ),
            onTap: () {
              Navigator.of(context).pushNamed('/topic_collects');
            },
          ),
          new ListTile(
            leading: Icon(
              Icons.message,
            ),
            title: new Text(
              "未读消息",
            ),
            trailing: Text(
              '90',
              style: TextStyle(),
            ),
          ),
//            new SwitchListTile(
//              title: new Text(
//                "夜间主题",
//                style: new TextStyle(color: Colors.white, fontSize: 16.0),
//              ),
//              value: true,
//              activeColor: Theme.of(context).backgroundColor,
//              onChanged: (bool value) {},
//            ),
//          new ListTile(
//            title: new Text(
//              "退出登录",
//              style: new TextStyle(color: Colors.white, fontSize: 16.0),
//            ),
//          )
        ],
      ),
    );
  }
}

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
              color: Theme
                  .of(context)
                  .primaryColor,
            ),
            selected: true,
            title: new Text(
              "首页",
              style: new TextStyle(
                color: Theme
                    .of(context)
                    .primaryColor,
                fontSize: 16.0,
              ),
            ),
          ),
          new ListTile(
            leading: Icon(
              Icons.collections_bookmark,
              color: Colors.black87,
            ),
            title: new Text(
              "我的收藏",
              style: new TextStyle(color: Colors.black87, fontSize: 16.0),
            ),
            trailing: Text(
              '12',
              style: TextStyle(color: Colors.black87),
            ),
            onTap: () {
              Navigator.of(context).pushNamed('/topic_collects');
            },
          ),
          new ListTile(
            leading: Icon(
              Icons.message,
              color: Colors.black87,
            ),
            title: new Text(
              "未读消息",
              style: new TextStyle(color: Colors.black87, fontSize: 16.0),
            ),
            trailing: Text(
              '90',
              style: TextStyle(color: Colors.black87),
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
          new ListTile(
            title: new Text(
              "退出登录",
              style: new TextStyle(color: Colors.white, fontSize: 16.0),
            ),
          )
        ],
      ),
    );
  }
}

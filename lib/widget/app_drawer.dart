import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  bool isDarkTheme = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: new Container(
        color: Theme.of(context).accentColor,
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("xrr2016"),
              accountEmail: new Text("xiaoranran1993@outlook.com"),
              currentAccountPicture: new CircleAvatar(
                child: new Text("X"),
              ),
              onDetailsPressed: () {
                print("more user info");
              },
            ),
            new ListTile(
              leading: new Icon(
                Icons.collections,
                color: Colors.white,
              ),
              title: new Text(
                "我的收藏",
                style: new TextStyle(color: Colors.white, fontSize: 16.0),
              ),
            ),
            new ListTile(
              leading: new Icon(
                Icons.message,
                color: Colors.white,
              ),
              title: new Text(
                "未读消息",
                style: new TextStyle(color: Colors.white, fontSize: 16.0),
              ),
            ),
            new SwitchListTile(
                title: new Icon(
                  Icons.color_lens,
                  color: Colors.white,
                ),
                value: true,
                activeColor: Colors.green,
                onChanged: (bool value) {}),
            new Divider(),
            new ListTile(
              trailing: new Icon(
                Icons.close,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AppTopicCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Card(
      child: Container(
        width: double.infinity,
        height: 110.0,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Image.network(
                      'https://avatars2.githubusercontent.com/u/2081487?v=4&s=120',
                      width: 32.0,
                      height: 32.0,
                    ),
                  ),
                  Text(
                    'lellansin',
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 6.0,
                      vertical: 0.0,
                    ),
                    child: Text(
                      '精华',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.green,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                '饿了么大前端 Node.js 进阶教程',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black87,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10.0,
                left: 10.0,
                right: 10.0,
              ),
              child: Row(
                children: <Widget>[
                  Text(
                    '回复数：',
                    style: TextStyle(color: Colors.black26),
                  ),
                  Text('21'),
                  Text(
                    '点击数：',
                    style: TextStyle(color: Colors.black26),
                  ),
                  Text('21'),
                  Text(
                    '最后回复：',
                    style: TextStyle(color: Colors.black26),
                  ),
                  Image.network(
                    'https://avatars3.githubusercontent.com/u/34409208?v=4&s=120',
                    width: 20.0,
                    height: 20.0,
                  ),
                  Text('1天前'),
                ],
              ),
            ),
          ],
        ),
      ),
      elevation: 4.0,
      margin: EdgeInsets.only(bottom: 12.0),
    );
  }
}

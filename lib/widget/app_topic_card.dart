import 'package:flutter/material.dart';
import 'package:flutter_cnode/model/topic.dart';
import 'package:flutter_cnode/utils/utils.dart';

class AppTopicCard extends StatelessWidget {
  final Topic _topic;

  AppTopicCard(this._topic);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.5,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Image.network(_topic.author.avatarUrl, width: 22.0, height: 22.0),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: Text(_topic.author.loginName, style: TextStyle(fontSize: 16.0)),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 1.0),
                  child: Text(
                    _topic.top ? '置顶' : _topic.tab,
                    style: TextStyle(color: Colors.white, fontSize: 12.0),
                  ),
                  decoration: BoxDecoration(
                    color: _topic.good ? Colors.green : Colors.black12,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                )
              ],
            ),
            Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  _topic.title,
                  maxLines: 2,
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Text('回复数：', style: TextStyle(fontSize: 12.0)),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text('${_topic.replyCount}'),
                ),
                Text('点击数：', style: TextStyle(fontSize: 12.0)),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text('${_topic.visitCount}'),
                ),
                Text('最后回复：', style: TextStyle(fontSize: 12.0)),
                Text('${Utils.getTimeStr(DateTime.parse(_topic.lastReplyAt))}'),
              ],
            ),
          ],
        ),
      ),
      margin: EdgeInsets.only(bottom: 12.0),
    );
  }
}

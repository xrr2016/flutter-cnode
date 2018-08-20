import 'package:flutter/material.dart';
import 'package:flutter_cnode/model/topic.dart';
import 'package:flutter_cnode/widget/app_topic_card.dart';

class AppTopicCardList extends StatelessWidget {
  final List<Topic> topics;

  AppTopicCardList(this.topics);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: topics.length,
      itemBuilder: (context, index) {
        return AppTopicCard(topics[index]);
      },
    );
  }
}

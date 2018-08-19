class Topic {
  final String id;
  final String authorId;
  final String tab;
  final String content;
  final String title;
  final String lastReplyAt;
  final bool good;
  final bool top;
  final int replyCount;
  final int visitCount;
  final String createAt;
  final Map author;

  Topic(this.id, this.authorId, this.tab, this.content, this.title, this.lastReplyAt, this.good,
      this.top, this.replyCount, this.visitCount, this.createAt, this.author);
}

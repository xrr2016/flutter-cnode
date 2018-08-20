class Author {
  final String loginName;
  final String avatarUrl;

  Author({this.loginName, this.avatarUrl});

  factory Author.fromJson(Map<String, dynamic> json) {
    return Author(
      loginName: json['loginname'],
      avatarUrl: json['avatar_url'],
    );
  }
}

class Topic {
  final Author author;
  final String tab;
  final bool good;
  final bool top;
  final String title;
  final int replyCount;
  final int visitCount;
  final String lastReplyAt;
  final String id;

  Topic({
    this.author,
    this.tab,
    this.good,
    this.top,
    this.title,
    this.replyCount,
    this.visitCount,
    this.lastReplyAt,
    this.id,
  });

  factory Topic.fromJson(Map<String, dynamic> json) {
    return Topic(
      author: Author.fromJson(json['author']),
      tab: json['tab'],
      good: json['good'],
      top: json['top'],
      title: json['title'],
      replyCount: json['reply_count'],
      visitCount: json['visit_count'],
      lastReplyAt: json['last_reply_at'],
      id: json['id'],
    );
  }

  Map<String, dynamic> toJson() =>
      {
        'author': author,
      };
}

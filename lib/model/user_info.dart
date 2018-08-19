class UserInfo {
  final String loginName;
  final String avatarUrl;
  final String githubUserName;
  final String createAt;
  final int score;
  final List recentTopics;
  final List recentReplies;

  UserInfo(this.loginName, this.avatarUrl, this.githubUserName, this.createAt, this.score,
      this.recentTopics, this.recentReplies);
}

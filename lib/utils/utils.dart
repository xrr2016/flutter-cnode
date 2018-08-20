final int ONE_SECOND = 1000;
final int ONE_MINUTE = ONE_SECOND * 60;
final int ONE_HOUR = ONE_MINUTE * 60;
final int ONE_DAY = ONE_HOUR * 24;
final int ONE_MONTH = ONE_DAY * 30;
final int ONE_YEAR = ONE_MONTH * 12;

class Utils {
  static String getDateStr(DateTime date) {
    if (date == null || date.toString() == null) {
      return "";
    } else if (date.toString().length < 10) {
      return date.toString();
    }
    return date.toString().substring(0, 10);
  }

  static String getTimeStr(DateTime date) {
    int timeLeft = DateTime.now().millisecondsSinceEpoch - date.millisecondsSinceEpoch;

    if (timeLeft < ONE_SECOND) {
      return "刚刚";
    } else if (timeLeft < ONE_MINUTE) {
      return (timeLeft / ONE_SECOND).round().toString() + " 秒前";
    } else if (timeLeft < ONE_HOUR) {
      return (timeLeft / ONE_MINUTE).round().toString() + " 分钟前";
    } else if (timeLeft < ONE_DAY) {
      return (timeLeft / ONE_HOUR).round().toString() + " 小时前";
    } else if (timeLeft < ONE_MONTH) {
      return (timeLeft / ONE_DAY).round().toString() + " 天前";
    } else if (timeLeft < ONE_YEAR) {
      return (timeLeft / ONE_MONTH).round().toString() + " 月前";
    } else if (timeLeft < ONE_YEAR * 100) {
      return (timeLeft / ONE_YEAR).round().toString() + " 年前";
    } else {
      return getDateStr(date);
    }
  }
}

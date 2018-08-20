import 'package:dio/dio.dart';

Options dioOptions = new Options(
  baseUrl: "https://cnodejs.org/api/v1",
  connectTimeout: 5000,
  receiveTimeout: 3000,
);

Dio dio = new Dio(dioOptions);

class Request {
  static final String ACCESS_TOKEN = "bd8f1bd9-5eff-4a19-9d84-471383d81bc4";

  static getTopics(int page, String tab, int limit, {bool mdrender = true}) async {}
}

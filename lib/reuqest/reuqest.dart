import 'package:dio/dio.dart';

Dio dio = new Dio();

class Request {
  static final String BASE_URL = "https://cnodejs.org/api/v1";
  static final String ACCESS_TOKEN = "bd8f1bd9-5eff-4a19-9d84-471383d81bc4";

  static getTopics(int page, String tab, int limit, {bool mdrender = true}) async {
    Response reponse =
        await dio.get("$BASE_URL?page=$page&tab=$tab&limit=$limit&mdrender=$mdrender");
    return reponse.data;
  }
}

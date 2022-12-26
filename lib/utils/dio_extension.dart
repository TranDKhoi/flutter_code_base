import 'package:dio/dio.dart';

extension HandlerApiResponse on Response {
  bool get isSuccess => statusCode.toString().contains("2", 0) ? true : false;

  String get message => data["message"];
}

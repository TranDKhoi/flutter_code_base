import 'package:dio/dio.dart';

extension HandlerApiResponse on Response {
  bool get isSuccess => statusCode.toString().contains("2", 0) ? true : false;

  dynamic get serverData => data["data"];
}

extension HandleDioError on DioError {
  String get errorMessage => response?.data?["message"];
}

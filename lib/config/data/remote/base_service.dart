import 'package:dio/dio.dart';

class BaseService {
  static const String BASE_PATH = "https://my-custom-api.com/api/";

  //api route
  static const String LOGIN_PATH = "login";

  late Dio dio;

  //CONSTRUCTOR
  BaseService() {
    dio = Dio(
      BaseOptions(
        baseUrl: BASE_PATH,
        connectTimeout: 15000,
        receiveTimeout: 15000,
        responseType: ResponseType.json,
      ),
    );
  }
}

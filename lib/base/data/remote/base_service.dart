import 'package:dio/dio.dart';

class BaseService {
  static const String BASE_PATH = "https://cliver-api.azurewebsites.net/api/";

  //api route
  static const String LOGIN_PATH = "auth/login";

  late Dio dio;

  //CONSTRUCTOR
  BaseService() {
    dio = Dio(
      BaseOptions(
        baseUrl: BASE_PATH,
        connectTimeout: 10000,
        receiveTimeout: 10000,
        responseType: ResponseType.json,
      ),
    );
  }
}

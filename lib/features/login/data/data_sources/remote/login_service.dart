import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../../../base/data/remote/base_service.dart';

class LoginService extends BaseService {
  LoginService._();

  static final ins = LoginService._();

  Future<Response> login(String email, String password) async {
    return await dio.post(
      BaseService.LOGIN_PATH,
      data: jsonEncode({"email": "test2@gmail.com", "password": "123123123"}),
    );
  }
}

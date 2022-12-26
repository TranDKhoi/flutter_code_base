import 'package:dio/dio.dart';

import '../../../../../config/data/remote/base_service.dart';
import '../../../../../utils/dio_extension.dart';
import '../../models/user_model.dart';

class LoginService extends BaseService {
  LoginService._();

  static final ins = LoginService._();

  Future<UserModel> login() async {
    try {
      Future.delayed(const Duration(seconds: 3));

      Map<String, dynamic> mapData = <String, dynamic>{
        "data": {
          "age": 0,
          "name": "Khoi",
        },
        "message": "SUCCESS",
        "status": 200,
        "errorCode": 0,
      };

      var res = await dio.get(BaseService.BASE_PATH);

      if (res.isSuccess) {
        return UserModel.fromJson(mapData);
      }
      throw res.message;
    } on DioError catch (e) {
      throw e.message;
    }
  }
}

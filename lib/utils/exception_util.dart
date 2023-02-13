import 'package:dio/dio.dart';
import 'package:flutter_code_base/exceptions/app_exception.dart';

import '../../utils/alert_util.dart';
import '../../utils/extensions/dio_extension.dart';

class ExceptionUtil {
  static void handle(e) {
    AlertUtil.hideLoading();
    if (e is DioError) {
      // error from api
      switch (e.type) {
        case DioErrorType.response:
          AlertUtil.showToast(e.errorMessage);
          break;
        case DioErrorType.other:
          AlertUtil.showToast(e.error.message);
          break;
        default:
          AlertUtil.showToast(e.error);
          break;
      }
    } else if (e is AppException) {
      // error from UI
      if (e.message != null) {
        AlertUtil.showToast(e.message!);
      }
    } else {
      //maybe server error
      if (e.message != null) {
        AlertUtil.showToast(e.message!);
      }
    }
  }
}

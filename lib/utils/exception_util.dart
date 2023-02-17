import 'package:dio/dio.dart';

import '../../utils/alert_util.dart';
import '../../utils/extensions/dio_extension.dart';
import '../exceptions/app_exception.dart';

class ExceptionUtil {
  static void handle(e) {
    AlertUtil.hideLoading();
    if (e is DioError) {
      // error from api
      switch (e.type) {
        case DioErrorType.badResponse:
          AlertUtil.showToast(e.errorMessage);
          break;
        case DioErrorType.unknown:
          AlertUtil.showToast(e.error.toString());
          break;
        default:
          AlertUtil.showToast(e.error.toString());
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

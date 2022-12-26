
import '../data_sources/remote/login/login_service.dart';

class RemoteManager {
  static final RemoteManager ins = RemoteManager._();

  RemoteManager._();

  static LoginService get loginService => LoginService();
}

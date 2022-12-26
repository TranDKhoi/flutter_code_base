import '../../domain/repositories/login_repository.dart';
import '../base/remote_manager.dart';
import '../model/user_model.dart';


class LoginRepositoryImpl implements LoginRepository {
  @override
  Future<UserModel> login() async {
    return await RemoteManager.loginService.login();
  }
}

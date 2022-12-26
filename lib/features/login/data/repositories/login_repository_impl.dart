import '../../domain/repositories/login_repository.dart';
import '../data_sources/remote/login_service.dart';
import '../model/user_model.dart';

class LoginRepositoryImpl implements LoginRepository {
  @override
  Future<UserModel> login() async {
    return await LoginService.ins.login();
  }
}

import '../entities/user.dart';
import '../repositories/login_repository.dart';

abstract class LoginUseCase {
  Future<User> login();
}

class LoginUseCaseImpl implements LoginUseCase {
  final LoginRepository _loginRepository;

  LoginUseCaseImpl(this._loginRepository);

  @override
  Future<User> login() async {
    return await _loginRepository.login();
  }
}

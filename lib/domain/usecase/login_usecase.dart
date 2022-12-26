import '../entities/user.dart';
import '../repositories/login_repository.dart';

abstract class LoginUseCase {
  Future<User> login();
}

class LoginUseCaseImpl implements LoginUseCase {
  LoginRepository loginRepository;

  LoginUseCaseImpl(this.loginRepository);

  @override
  Future<User> login() async {
    return await loginRepository.login();
  }
}

import '../entities/user_entity.dart';
import '../repositories/login_repository.dart';

abstract class LoginUseCase {
  Future<UserEntity> login(String email, String password);
}

class LoginUseCaseImpl implements LoginUseCase {
  final LoginRepository _loginRepository;

  LoginUseCaseImpl(this._loginRepository);

  @override
  Future<UserEntity> login(String email, String password) async {
    if (email.isEmpty) {
      throw Exception("Invalid email");
    }
    if (password.length < 6) {
      throw Exception("Password must at least 6 chars");
    }

    return await _loginRepository.login(email, password);
  }
}

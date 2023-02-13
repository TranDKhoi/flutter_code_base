import 'package:flutter_code_base/exceptions/app_exception.dart';

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
      throw InvalidEmail("Invalid email");
    }
    if (password.length < 6) {
      throw InvalidPassword("Password must at least 6 chars");
    }

    return await _loginRepository.login(email, password);
  }
}

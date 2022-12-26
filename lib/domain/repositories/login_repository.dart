import '../entities/user.dart';

abstract class LoginRepository {
  Future<User> login();
}

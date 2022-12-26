import '../features/login/data/repositories/login_repository_impl.dart';
import '../features/login/domain/usecase/login_usecase.dart';

class Injector {
  static LoginUseCase get loginUseCase =>
      LoginUseCaseImpl(LoginRepositoryImpl());
}

import '../features/login/data/models/user_data_mapper.dart';
import '../features/login/data/repositories/login_repository_impl.dart';
import '../features/login/domain/use_cases/login_usecase.dart';

class Injector {
  static LoginUseCase get loginUseCase =>
      LoginUseCaseImpl(LoginRepositoryImpl(UserDataMapper()));
}

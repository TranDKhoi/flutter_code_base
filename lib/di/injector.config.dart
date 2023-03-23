// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_code_base/features/login/data/models/user_data_mapper.dart'
    as _i3;
import 'package:flutter_code_base/features/login/data/repositories/login_repository_impl.dart'
    as _i5;
import 'package:flutter_code_base/features/login/domain/repositories/login_repository.dart'
    as _i4;
import 'package:flutter_code_base/features/login/domain/use_cases/login_usecase.dart'
    as _i6;
import 'package:flutter_code_base/features/login/presentation/login.dart'
    as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart'
    as _i2; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.UserDataMapper>(() => _i3.UserDataMapper());
    gh.lazySingleton<_i4.LoginRepository>(
        () => _i5.LoginRepositoryImpl(gh<_i3.UserDataMapper>()));
    gh.lazySingleton<_i6.LoginUseCase>(
        () => _i6.LoginUseCaseImpl(gh<_i4.LoginRepository>()));
    gh.factory<_i7.LoginBloc>(() => _i7.LoginBloc(gh<_i6.LoginUseCase>()));
    return this;
  }
}

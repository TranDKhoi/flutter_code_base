import 'package:flutter_code_base/features/login/data/models/user_data_mapper.dart';
import 'package:flutter_code_base/features/login/data/models/user_model.dart';
import 'package:flutter_code_base/features/login/domain/entities/user_entity.dart';
import 'package:flutter_code_base/utils/extensions/dio_extension.dart';

import '../../domain/repositories/login_repository.dart';
import '../data_sources/remote/login_service.dart';

class LoginRepositoryImpl implements LoginRepository {
  final UserDataMapper _userDataMapper;

  LoginRepositoryImpl(this._userDataMapper);

  @override
  Future<UserEntity> login(String email, String password) async {
    var res = await LoginService.ins.login(email, password);

    UserModel userModel = UserModel.fromJson(res.serverData);
    UserEntity userEntity = _userDataMapper.mapToEntity(userModel);

    return userEntity;
  }
}

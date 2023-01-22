import 'package:flutter_code_base/features/login/data/models/user_model.dart';
import 'package:flutter_code_base/features/login/domain/entities/user_entity.dart';

import '../../../../base/mapper/base_data_mapper.dart';

class UserDataMapper extends BaseDataMapper<UserModel, UserEntity> {
  @override
  UserEntity mapToEntity(UserModel? model) {
    return UserEntity(
      name: model?.name ?? "",
      age: model?.age ?? 0,
    );
  }

  @override
  UserModel mapToModel(UserEntity entity) {
    return UserModel(
      name: entity.name,
      age: entity.age,
    );
  }
}

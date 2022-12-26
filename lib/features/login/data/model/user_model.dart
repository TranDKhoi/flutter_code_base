import '../../domain/entities/user.dart';

class UserModel extends User {
  UserModel({String? name, int? age}) : super(name: name, age: age);

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'],
      age: json["age"],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{
      "age": age,
      "name": name,
    };
    return data;
  }
}

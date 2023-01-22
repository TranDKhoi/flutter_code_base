class UserModel {
  String? name;
  int? age;

  UserModel({
    this.name,
    this.age,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    age = json["age"];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
    };
  }
}

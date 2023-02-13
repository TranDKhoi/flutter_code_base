abstract class AppException implements Exception {
  AppException({this.message});

  String? message;
}

class InvalidEmail extends AppException {
  InvalidEmail(String message) : super(message: message);
}

class InvalidPassword extends AppException {
  InvalidPassword(String message) : super(message: message);
}

part of login;

@immutable
abstract class LoginEvent extends Equatable {
  const LoginEvent();
}

class LoginButtonClicked extends LoginEvent {
  const LoginButtonClicked({required this.email, required this.password});

  final String email;
  final String password;

  @override
  List<Object?> get props => [
        email,
        password,
      ];
}

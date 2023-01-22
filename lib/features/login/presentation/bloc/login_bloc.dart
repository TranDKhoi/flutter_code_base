part of login;

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState()) {
    on<LoginClicked>(_loginClickedEvent);
  }

  _loginClickedEvent(LoginClicked event, emit) async {
    try {
      AlertUtil.showLoading();
      var res = await Injector.loginUseCase.login(event.email, event.password);
      print(res.name);
    } catch (e) {
      AlertUtil.showToast(e.toString());
    }
    AlertUtil.hideLoading();
  }
}

part of login;

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState()) {
    on<LoginButtonClicked>(_loginClickedEvent);
  }

  _loginClickedEvent(LoginButtonClicked event, emit) async {
    try {
      AlertUtil.showLoading();
      var res = await Injector.loginUseCase.login(event.email, event.password);
      AlertUtil.hideLoading();
    } catch (e) {
      ExceptionUtil.handle(e);
    }
  }
}

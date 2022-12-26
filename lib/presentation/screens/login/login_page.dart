part of login;

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            AlertUtil.showLoading();
            Injector.loginUseCase.login();
            AlertUtil.hideLoading();
          },
          child: const Text("CLICK"),
        ),
      ),
    );
  }
}

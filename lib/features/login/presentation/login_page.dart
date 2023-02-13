part of login;

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: Builder(
        builder: (BuildContext context) => Scaffold(
          body: Center(
            child: Column(
              children: [
                TextField(
                  controller: emailController,
                ),
                TextField(
                  controller: passwordController,
                ),
                ElevatedButton(
                  onPressed: () => context.read<LoginBloc>().add(LoginButtonClicked(
                        email: emailController.text.trim(),
                        password: passwordController.text.trim(),
                      )),
                  child: const Text("LOGIN"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

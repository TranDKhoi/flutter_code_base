import 'package:flutter/material.dart';

import '../../utils/global_keys.dart';
import '../config/theme.dart';
import 'login/presentation/login.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const LoginScreen(),
      navigatorKey: navigatorKey,
      scaffoldMessengerKey: scaffoldKey,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
    );
  }
}

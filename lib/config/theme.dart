import 'package:flutter/material.dart';

class AppTheme {
  static const primaryColor = Color(0xffCE7BB0);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    useMaterial3: true,
    textTheme: ThemeData.light().textTheme.apply(
          fontFamily: "Comfortaa",
        ),
    colorScheme: const ColorScheme.light(primary: primaryColor),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: primaryColor,
    ),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    useMaterial3: true,
    textTheme: ThemeData.dark().textTheme.apply(
          fontFamily: "Comfortaa",
        ),
    colorScheme: const ColorScheme.dark(primary: primaryColor),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: primaryColor,
    ),
  );
}

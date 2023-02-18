import 'package:beloved_ver2/config/colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    useMaterial3: true,
    textTheme: ThemeData.light().textTheme.apply(
          fontFamily: "Comfortaa",
        ),
    colorScheme: const ColorScheme.light(primary: AppColor.primaryColor),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: AppColor.primaryColor,
    ),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    useMaterial3: true,
    textTheme: ThemeData.dark().textTheme.apply(
          fontFamily: "Comfortaa",
        ),
    colorScheme: const ColorScheme.dark(primary: AppColor.primaryColor),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: AppColor.primaryColor,
    ),
  );
}

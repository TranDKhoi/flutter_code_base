import 'package:flutter/material.dart';

import '../services/shared_service.dart';

class ThemeUtil {
  static final ThemeUtil ins = ThemeUtil._();

  ThemeUtil._();

  static ThemeMode currentMode = ThemeMode.system;

  void getLocalTheme() {
    bool? isDark = SharedService().getCurrentTheme();

    if (isDark == null) {
      final darkMode = WidgetsBinding.instance.window.platformBrightness;
      if (darkMode == Brightness.dark) {
        currentMode = ThemeMode.dark;
      } else {
        currentMode = ThemeMode.light;
      }
    } else {
      currentMode = isDark ? ThemeMode.dark : ThemeMode.light;
    }
  }

  void _updateLocalTheme(bool isDark) {
    currentMode = isDark ? ThemeMode.dark : ThemeMode.dark;
    SharedService().setCurrentTheme(isDark);
  }
}

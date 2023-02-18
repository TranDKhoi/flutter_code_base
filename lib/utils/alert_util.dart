import 'package:flutter/material.dart';

import 'global_keys.dart';

class AlertUtil {
  static showLoading() {
    showDialog(
        context: navigatorKey.currentContext!,
        barrierDismissible: false,
        builder: (context) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircularProgressIndicator(
                strokeWidth: 3,
              ),
            ],
          );
        });
  }

  static hideLoading() {
    navigatorKey.currentState?.pop();
  }

  static showToast(String message) {
    return scaffoldKey.currentState?.showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }
}

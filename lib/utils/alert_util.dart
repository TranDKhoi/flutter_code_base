import 'package:flutter/material.dart';

import 'global_keys.dart';

class AlertUtil {
  static showLoading() {
    showDialog(
        context: navigatorKey.currentContext!,
        barrierDismissible: false,
        builder: (context) {
          return const Dialog(
            insetPadding: EdgeInsets.zero,
            backgroundColor: Colors.transparent,
            child: Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
              ),
            ),
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

import 'package:flutter/material.dart';

extension ScreenSize on BuildContext {
  Size get screenSize => MediaQuery.of(this).size;
}

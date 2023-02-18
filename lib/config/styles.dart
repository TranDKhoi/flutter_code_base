import 'package:flutter/material.dart';

import 'colors.dart';
import 'font_size.dart';

class AppStyle {
  static const TextStyle normalTextStyle =
      TextStyle(color: Colors.black, fontSize: AppFontSize.normalFontSize);

  static const TextStyle pinkBoldStyle =
      TextStyle(color: AppColor.primaryColor, fontWeight: FontWeight.bold);
}

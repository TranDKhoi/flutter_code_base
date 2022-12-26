import 'package:flutter/material.dart';

import '/utils/shared_service.dart';
import 'features/app.dart';

void main() async {
  await SharedService.init();

  runApp(const MyApp());
}

//here is the most basic package need for new project
// flutter_bloc
// equatable
// dio or http
// shared preferences
// also clean architecture flutter plugin for faster generate folder
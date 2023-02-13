import 'package:flutter/material.dart';

import 'services/shared_service.dart';
import 'features/app.dart';

void main() async {
  await _initialize.call();
  runApp(const MyApp());
}

Future<void> _initialize() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedService.init();
}

//here is the most basic package need for new project
// flutter_bloc
// equatable
// dio or http
// shared preferences
// also clean architecture flutter plugin for faster generate folder

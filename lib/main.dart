import 'package:flutter/material.dart';

import '/utils/shared_service.dart';
import 'presentation/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedService.init();

  runApp(const MyApp());
}

//here is the most basic package need for new project
// flutter_bloc
// equatable
// dio or http
// shared preferences

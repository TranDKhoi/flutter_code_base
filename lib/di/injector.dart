import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injector.config.dart';

final injector = GetIt.instance;

@InjectableInit()
Future<void> injectorInit() async {
  injector.init();
}

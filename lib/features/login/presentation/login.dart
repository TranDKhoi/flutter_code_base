library login;

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../di/injector.dart';
import '../../../utils/alert_util.dart';

part 'bloc/login_bloc.dart';

part 'bloc/login_event.dart';

part 'bloc/login_state.dart';

part 'login_page.dart';

//here you import all the references.
// Then just only need to import library login in other files.

import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc_app_template/app/app.dart';
import 'package:flutter_bloc_app_template/di/di_container.dart';
import 'package:flutter_bloc_app_template/di/di_initializer.dart';

Future<void> run([
  List<DeviceOrientation> orientations = const [
    DeviceOrientation.portraitUp,
  ],
]) async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations(orientations);

  await initDI(diContainer, 'dev');

  _runApp();
}

void _runApp() {
  runApp(const MyApp());
}

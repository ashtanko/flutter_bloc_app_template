import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc_app_template/app/app.dart';
import 'package:flutter_bloc_app_template/config/app_config.dart';
import 'package:flutter_bloc_app_template/config/environment.dart';
import 'package:flutter_bloc_app_template/di/di_container.dart';
import 'package:flutter_bloc_app_template/di/di_initializer.dart';
import 'package:talker/talker.dart';

/// Single sink for anything that goes wrong at runtime.
///
/// Replace the [Talker] call with a crash reporter (Crashlytics, Sentry, ...)
/// to get production diagnostics off the device.
final Talker talker = Talker();

Future<void> run([
  List<DeviceOrientation> orientations = const [
    DeviceOrientation.portraitUp,
  ],
]) async {
  // runZonedGuarded catches errors raised outside the Flutter callbacks that
  // FlutterError.onError covers - async gaps, isolate work, plugin callbacks.
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      _registerErrorHandlers();

      await SystemChrome.setPreferredOrientations(orientations);

      await initDI(
        diContainer,
        Environment<AppConfig>.instance().buildType.name,
      );

      _runApp();
    },
    (error, stack) => talker.handle(error, stack, 'Uncaught zone error'),
  );
}

void _registerErrorHandlers() {
  // Errors thrown inside the framework's build/layout/paint phases.
  FlutterError.onError = (details) {
    talker.handle(details.exception, details.stack, 'Flutter framework error');
    if (kDebugMode) {
      FlutterError.presentError(details);
    }
  };

  // Errors that reach the engine without passing through the framework.
  PlatformDispatcher.instance.onError = (error, stack) {
    talker.handle(error, stack, 'Uncaught platform error');

    return true;
  };
}

void _runApp() {
  runApp(const App());
}

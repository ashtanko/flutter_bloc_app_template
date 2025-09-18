import 'dart:io';

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

Future<List<int>> takePlatformScreenshot(String screenshotName,
    WidgetTester tester, IntegrationTestWidgetsFlutterBinding binding,
    [Map<String, Object?>? args]) async {
  if (kIsWeb) {
    return await binding.takeScreenshot(screenshotName);
  } else if (Platform.isAndroid) {
    await binding.convertFlutterSurfaceToImage();
    await tester.pumpAndSettle();
  }
  return await binding.takeScreenshot(screenshotName);
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/main.dart' as app;
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import '../test/utils/screenshot.dart';

void main() async {
  final binding = IntegrationTestWidgetsFlutterBinding();
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  setUp(() {});

  testWidgets('settings test', (
    WidgetTester tester,
  ) async {
    app.main([]);
    await tester.pumpAndSettle();

    expect(find.byKey(const Key('settings')), findsOneWidget);

    await tester.tap(find.byTooltip('Settings'));

    await tester.pumpAndSettle();

    expect(find.textContaining('Appearance'), findsAtLeast(1));
    expect(find.textContaining('About'), findsAtLeast(1));

    await takePlatformScreenshot('settings-screenshot', tester, binding);
  });
}

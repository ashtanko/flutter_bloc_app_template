import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/main.dart' as app;
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
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

    await tester.tap(find.byKey(const Key('appearance')));
    await tester.pumpAndSettle();
    expect(find.text('Appearance'), findsOneWidget);
    expect(find.text('Theme mode'), findsOneWidget);

    await tester.tap(find.byKey(const Key('theme_mode_preference_switch')));
    await tester.pumpAndSettle();

    expect(find.text('Dark'), findsOneWidget);
    expect(find.text('Light'), findsOneWidget);
    expect(find.text('System default'), findsOneWidget);

    await tester.tap(find.byKey(const Key('Dark')));
    await tester.pumpAndSettle();

    final darkBackgroundFinder = find.byWidgetPredicate(
          (widget) {
            return widget.key == const Key('ThemeMode.dark');
          },
    );
    expect(darkBackgroundFinder, findsWidgets);

    await tester.tap(find.byKey(const Key('Light')));
    await tester.pumpAndSettle();

    final lightBackgroundFinder = find.byWidgetPredicate(
          (widget) {
        return widget.key == const Key('ThemeMode.light');
      },
    );
    expect(lightBackgroundFinder, findsWidgets);

    await tester.tap(find.byKey(const Key('System default')));
    await tester.pumpAndSettle();

    final defaultBackgroundFinder = find.byWidgetPredicate(
          (widget) {
        return widget.key == const Key('ThemeMode.system');
      },
    );
    expect(defaultBackgroundFinder, findsWidgets);

    await tester.tap(find.byTooltip('Back'));
    await tester.pumpAndSettle();

    final switchFinder = find.byKey(const Key('theme_mode_switch'));
    expect(switchFinder, findsOneWidget);

    await tester.tap(switchFinder);
    await tester.pumpAndSettle();

    expect(darkBackgroundFinder, findsWidgets);
  });
}

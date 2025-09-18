import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/index.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PreferenceSwitch Widget Tests', () {
    testWidgets('displays title and optional description', (tester) async {
      const title = 'Dark Mode';
      const description = 'Enable dark theme';

      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: PreferenceSwitch(
              switchKey: Key(''),
              title: title,
              description: description,
            ),
          ),
        ),
      );

      expect(find.text(title), findsOneWidget);
      expect(find.text(description), findsOneWidget);
      expect(find.byType(Switch), findsOneWidget);
    });

    testWidgets('calls onClick when tapped', (tester) async {
      var clicked = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: PreferenceSwitch(
              switchKey: const Key(''),
              title: 'Click Test',
              onClick: () => clicked = true,
            ),
          ),
        ),
      );

      await tester.tap(find.byType(InkWell));
      expect(clicked, isTrue);
    });

    testWidgets('calls onSwitchClick when toggled', (tester) async {
      var switched = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: PreferenceSwitch(
              switchKey: const Key(''),
              title: 'Switch Test',
              isChecked: false,
              onSwitchClick: (_) => switched = true,
            ),
          ),
        ),
      );

      await tester.tap(find.byType(Switch));
      await tester.pumpAndSettle();
      expect(switched, isTrue);
    });

    testWidgets('disables interaction when `enabled` is false', (tester) async {
      var clicked = false;
      var switched = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: PreferenceSwitch(
              switchKey: const Key(''),
              title: 'Disabled Test',
              enabled: false,
              onClick: () => clicked = true,
              onSwitchClick: (_) => switched = true,
            ),
          ),
        ),
      );

      await tester.tap(find.byType(InkWell));
      await tester.tap(find.byType(Switch));
      await tester.pumpAndSettle();

      expect(clicked, isFalse);
      expect(switched, isFalse);
    });

    testWidgets('displays custom icon if provided', (tester) async {
      const iconKey = Key('custom_icon');

      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: PreferenceSwitch(
              switchKey: Key(''),
              title: 'Icon Test',
              icon: Icon(Icons.star, key: iconKey),
            ),
          ),
        ),
      );

      expect(find.byKey(iconKey), findsOneWidget);
    });
  });
}

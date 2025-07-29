import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/index.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SettingItem Widget Tests', () {
    testWidgets('displays title and description', (tester) async {
      const title = 'Notifications';
      const description = 'Manage notification settings';

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SettingItem(
              title: title,
              description: description,
              onClick: () {},
            ),
          ),
        ),
      );

      expect(find.text(title), findsOneWidget);
      expect(find.text(description), findsOneWidget);
    });

    testWidgets('calls onClick when tapped', (tester) async {
      var tapped = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SettingItem(
              title: 'Click Test',
              description: 'Click test description',
              onClick: () => tapped = true,
            ),
          ),
        ),
      );

      await tester.tap(find.byType(InkWell));
      await tester.pumpAndSettle();

      expect(tapped, isTrue);
    });

    testWidgets('renders icon if provided', (tester) async {
      const testIcon = Icons.settings;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SettingItem(
              title: 'With Icon',
              description: 'Has icon',
              icon: testIcon,
              onClick: () {},
            ),
          ),
        ),
      );

      expect(find.byIcon(testIcon), findsOneWidget);
    });

    testWidgets('does not render icon when not provided', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: SettingItem(
              title: 'No Icon',
              description: 'No icon here',
              onClick: () {},
            ),
          ),
        ),
      );

      expect(find.byType(Icon), findsNothing);
    });
  });
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/features/rocket/widget/spec_card_widget.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SpecCardWidget', () {
    const testLabel = 'Height';
    const testValue = '70 m';
    const testIcon = Icons.straighten;

    Widget buildTestWidget() {
      return const MaterialApp(
        home: Scaffold(
          body: SpecCardWidget(
            label: testLabel,
            value: testValue,
            icon: testIcon,
          ),
        ),
      );
    }

    testWidgets('renders label and value text', (tester) async {
      await tester.pumpWidget(buildTestWidget());

      expect(find.text(testLabel), findsOneWidget);
      expect(find.text(testValue), findsOneWidget);
    });

    testWidgets('renders provided icon', (tester) async {
      await tester.pumpWidget(buildTestWidget());

      final iconFinder = find.byIcon(testIcon);
      expect(iconFinder, findsOneWidget);
    });

    testWidgets('applies theme styles correctly', (tester) async {
      const primaryColor = Colors.red;
      const onSurfaceVariant = Colors.grey;

      final theme = ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: primaryColor,
          primary: primaryColor,
          onSurfaceVariant: onSurfaceVariant,
        ),
      );

      await tester.pumpWidget(
        MaterialApp(
          theme: theme,
          home: const Scaffold(
            body: SpecCardWidget(
              label: testLabel,
              value: testValue,
              icon: testIcon,
            ),
          ),
        ),
      );

      final icon = tester.widget<Icon>(find.byIcon(testIcon));
      expect(icon.color, primaryColor);

      final labelText = tester.widget<Text>(find.text(testLabel));
      expect(labelText.style?.color, onSurfaceVariant);

      final valueText = tester.widget<Text>(find.text(testValue));
      expect(valueText.style?.fontWeight, FontWeight.bold);
    });

    testWidgets('card has no elevation', (tester) async {
      await tester.pumpWidget(buildTestWidget());

      final card = tester.widget<Card>(find.byType(Card));
      expect(card.elevation, 0);
    });
  });
}

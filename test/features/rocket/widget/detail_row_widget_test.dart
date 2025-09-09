import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/features/rocket/widget/detail_row_widget.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DetailRowWidget', () {
    const testLabel = 'Country';
    const testValue = 'USA';

    Widget buildTestWidget({ThemeData? theme}) {
      return MaterialApp(
        theme: theme ?? ThemeData(),
        home: const Scaffold(
          body: DetailRowWidget(
            label: testLabel,
            value: testValue,
          ),
        ),
      );
    }

    testWidgets('renders label and value text', (tester) async {
      await tester.pumpWidget(buildTestWidget());

      expect(find.text(testLabel), findsOneWidget);
      expect(find.text(testValue), findsOneWidget);
    });

    testWidgets('applies correct theme styles', (tester) async {
      const onSurfaceVariant = Colors.blueGrey;

      final theme = ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          onSurfaceVariant: onSurfaceVariant,
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 16),
        ),
      );

      await tester.pumpWidget(buildTestWidget(theme: theme));

      final labelText = tester.widget<Text>(find.text(testLabel));
      final valueText = tester.widget<Text>(find.text(testValue));

      expect(labelText.style?.color, onSurfaceVariant);
      expect(labelText.style?.fontSize, 16);

      expect(valueText.style?.fontWeight, FontWeight.w600);
      expect(valueText.style?.fontSize, 16);
    });

    testWidgets('row is spaced between label and value', (tester) async {
      await tester.pumpWidget(buildTestWidget());

      final row = tester.widget<Row>(find.byType(Row));
      expect(row.mainAxisAlignment, MainAxisAlignment.spaceBetween);
    });

    testWidgets('has vertical padding of 8', (tester) async {
      await tester.pumpWidget(buildTestWidget());

      final padding = tester.widget<Padding>(find.byType(Padding));
      expect(padding.padding, const EdgeInsets.symmetric(vertical: 8));
    });
  });
}

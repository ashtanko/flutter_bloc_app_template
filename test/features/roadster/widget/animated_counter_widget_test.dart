import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/animated_counter_widget.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('AnimatedCounterWidget displays integer with commas',
      (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: AnimatedCounterWidget(
            value: 1234567,
            duration: Duration(milliseconds: 300),
          ),
        ),
      ),
    );

    // Initial value is 0
    expect(find.text('0'), findsOneWidget);

    // Let the animation run to the end
    await tester.pumpAndSettle();

    // Final value should be formatted with commas
    expect(find.text('1,234,567'), findsOneWidget);
  });

  testWidgets('AnimatedCounterWidget displays decimal values', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: AnimatedCounterWidget(
            value: 1234.5678,
            decimals: 2,
            duration: Duration(milliseconds: 300),
          ),
        ),
      ),
    );

    // Initial value is 0.00
    expect(find.text('0.00'), findsOneWidget);

    // Let the animation run to the end
    await tester.pumpAndSettle();

    // Final value should match rounded decimal format
    expect(find.text('1234.57'), findsOneWidget);
  });

  testWidgets('AnimatedCounterWidget updates text as animation progresses',
      (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: AnimatedCounterWidget(
            value: 100,
            duration: Duration(seconds: 1),
          ),
        ),
      ),
    );

    // Immediately after build, animation starts
    expect(find.text('0'), findsOneWidget);

    // Pump half the duration
    await tester.pump(const Duration(milliseconds: 500));

    // The value should be between 0 and 100
    final textWidget = tester.widget<Text>(find.byType(Text));
    final value = int.tryParse(textWidget.data!.replaceAll(',', ''));
    expect(value, isNotNull);
    expect(value!, greaterThan(0));
    expect(value, lessThan(100));

    // Complete the animation
    await tester.pumpAndSettle();

    // Final value
    expect(find.text('100'), findsOneWidget);
  });
}

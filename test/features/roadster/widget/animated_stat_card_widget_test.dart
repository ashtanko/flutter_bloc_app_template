import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/animated_counter_widget.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/animated_stat_card_widget.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('AnimatedStatCardWidget renders correctly',
      (WidgetTester tester) async {
    const testIcon = Icons.star;
    const testTitle = 'Stars';
    const testValue = '1,234';
    const testUnit = 'pts';
    const testColor = Colors.blue;
    const testDelay = 100;

    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: AnimatedStatCardWidget(
            icon: testIcon,
            title: testTitle,
            value: testValue,
            unit: testUnit,
            color: testColor,
            delay: testDelay,
          ),
        ),
      ),
    );

    // Verify TweenAnimationBuilder exists
    expect(find.byType(TweenAnimationBuilder<double>), findsOneWidget);

    // Verify Card exists
    expect(find.byType(Card), findsOneWidget);

    // Verify Icon is correct
    final iconWidget = tester.widget<Icon>(find.byType(Icon));
    expect(iconWidget.icon, testIcon);
    expect(iconWidget.color, testColor);

    // Verify title Text
    expect(find.text(testTitle), findsOneWidget);

    // Verify unit Text
    expect(find.text(testUnit), findsOneWidget);

    // Verify AnimatedCounterWidget value
    final counterWidget = tester
        .widget<AnimatedCounterWidget>(find.byType(AnimatedCounterWidget));
    expect(counterWidget.value, 1234.0); // value parsed correctly

    // Optionally, pump to trigger animations
    await tester.pump(const Duration(seconds: 3));
  });
}

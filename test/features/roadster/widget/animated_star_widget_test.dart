import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/animated_star_widget.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('AnimatedStarWidget renders correctly',
      (WidgetTester tester) async {
    final controller = AnimationController(
      vsync: const TestVSync(),
      duration: const Duration(seconds: 1),
    );

    await tester.pumpWidget(
      MaterialApp(
        home: Stack(
          children: [
            AnimatedStarWidget(index: 42, pulseController: controller),
          ],
        ),
      ),
    );

    // Verify Positioned exists
    expect(find.byType(Positioned), findsOneWidget);

    // Verify Container exists
    final containerFinder = find.descendant(
        of: find.byType(Positioned), matching: find.byType(Container));
    expect(containerFinder, findsOneWidget);

    // Verify width and height (size between 1 and 4)
    final container = tester.widget<Container>(containerFinder);
    expect(container.constraints?.maxWidth ?? 0, inInclusiveRange(1, 4));
    final size = tester.getSize(containerFinder);
    expect(size.width, inInclusiveRange(1, 4));
    expect(size.height, inInclusiveRange(1, 4));
    // Start the animation
    controller.value = 0.5;
    await tester.pump();

    // Verify color alpha changed
    final boxDecoration = container.decoration as BoxDecoration;
    final alpha = boxDecoration.color?.a ?? 0;
    expect(alpha, greaterThan(0)); // should be > 0
  });
}

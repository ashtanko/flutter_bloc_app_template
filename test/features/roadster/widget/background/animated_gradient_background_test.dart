import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/background/animated_gradient_background.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AnimatedGradientBackground', () {
    late AnimationController testController;

    setUp(() {
      testController = AnimationController(
        duration: const Duration(seconds: 2),
        vsync: const TestVSync(),
      );
    });

    tearDown(() {
      testController.dispose();
    });

    testWidgets('should render gradient container',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: AnimatedGradientBackground(
            pulseController: testController,
          ),
        ),
      );

      expect(find.byType(AnimatedBuilder), findsAtLeast(1));
      expect(find.byType(Container), findsOneWidget);
    });

    testWidgets('should animate gradient colors', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: AnimatedGradientBackground(
            pulseController: testController,
          ),
        ),
      );

      // Initial state
      await tester.pump();

      // Animate forward
      unawaited(testController.forward());
      await tester.pump(const Duration(milliseconds: 500));

      // Animate backward
      unawaited(testController.reverse());
      await tester.pump(const Duration(milliseconds: 500));

      // Verify no errors during animation
      expect(tester.takeException(), isNull);
    });

    testWidgets('should have gradient decoration', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: AnimatedGradientBackground(
            pulseController: testController,
          ),
        ),
      );

      final container = tester.widget<Container>(find.byType(Container));
      expect(container.decoration, isA<BoxDecoration>());

      final decoration = container.decoration as BoxDecoration;
      expect(decoration.gradient, isA<LinearGradient>());
    });
  });
}

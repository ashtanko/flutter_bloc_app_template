import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/background/animated_gradient_background.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/background/animated_stars_field.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('Widget Performance Tests', () {
    testWidgets('AnimatedGradientBackground performance', (tester) async {
      final controller = createTestAnimationController();

      await tester.pumpWidget(
        MaterialApp(
          home: AnimatedGradientBackground(pulseController: controller),
        ),
      );

      // Measure rendering performance
      final stopwatch = Stopwatch()..start();

      // Run animation for multiple cycles
      for (var i = 0; i < 10; i++) {
        unawaited(controller.forward());
        await tester.pump(const Duration(milliseconds: 100));
        unawaited(controller.reverse());
        await tester.pump(const Duration(milliseconds: 100));
      }

      stopwatch.stop();

      // Verify acceptable performance
      expect(stopwatch.elapsedMilliseconds, lessThan(2000)); // 2 seconds max

      controller.dispose();
    });

    testWidgets('AnimatedStarsField rendering performance', (tester) async {
      final controller = createTestAnimationController();

      final stopwatch = Stopwatch()..start();

      await tester.pumpWidget(
        MaterialApp(
          home: AnimatedStarsField(pulseController: controller),
        ),
      );

      stopwatch.stop();

      // 50 stars should render quickly
      expect(stopwatch.elapsedMilliseconds, lessThan(500));

      controller.dispose();
    });
  });
}

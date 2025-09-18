import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/animated_star_widget.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/background/animated_stars_field.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AnimatedStarsField', () {
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

    testWidgets('should render stars field', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: AnimatedStarsField(
            pulseController: testController,
          ),
        ),
      );

      expect(find.byType(Stack), findsOneWidget);
      expect(find.byType(AnimatedStarWidget), findsNWidgets(50));
    });

    testWidgets('should pass pulse controller to each star',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: AnimatedStarsField(
            pulseController: testController,
          ),
        ),
      );

      final starWidgets = tester.widgetList<AnimatedStarWidget>(
        find.byType(AnimatedStarWidget),
      );

      for (final star in starWidgets) {
        expect(star.pulseController, equals(testController));
      }
    });

    testWidgets('should create 50 star widgets', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: AnimatedStarsField(
            pulseController: testController,
          ),
        ),
      );

      expect(find.byType(AnimatedStarWidget), findsNWidgets(50));

      // Verify each star has a unique index
      final starWidgets = tester.widgetList<AnimatedStarWidget>(
        find.byType(AnimatedStarWidget),
      );

      final indices = starWidgets.map((star) => star.index).toSet();
      expect(indices.length, equals(50)); // All indices should be unique
    });
  });
}

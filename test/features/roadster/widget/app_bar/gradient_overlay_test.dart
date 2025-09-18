import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/app_bar/gradient_overlay.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('GradientOverlay', () {
    testWidgets('should render positioned container with gradient',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Stack(
            children: [GradientOverlay()],
          ),
        ),
      );

      expect(find.byType(Positioned), findsOneWidget);
      expect(find.byType(Container), findsOneWidget);
    });

    testWidgets('should have correct positioning', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Stack(
            children: [GradientOverlay()],
          ),
        ),
      );

      final positioned = tester.widget<Positioned>(find.byType(Positioned));
      expect(positioned.bottom, equals(0));
      expect(positioned.left, equals(0));
      expect(positioned.right, equals(0));
    });

    testWidgets('should have gradient decoration', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Stack(
            children: [GradientOverlay()],
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

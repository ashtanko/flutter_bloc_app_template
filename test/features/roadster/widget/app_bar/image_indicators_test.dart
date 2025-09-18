import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/app_bar/image_indicators.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ImageIndicators', () {
    testWidgets('should render correct number of indicators',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Stack(
            children: [
              ImageIndicators(
                imageCount: 3,
                currentIndex: 0,
              ),
            ],
          ),
        ),
      );

      expect(find.byType(AnimatedContainer), findsNWidgets(3));
    });

    testWidgets('should highlight current indicator',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Stack(
            children: [
              ImageIndicators(
                imageCount: 3,
                currentIndex: 1,
              ),
            ],
          ),
        ),
      );

      final containers = find.byType(AnimatedContainer);

      // Check the widths using tester.getSize()
      final size0 = tester.getSize(containers.at(0));
      final size1 = tester.getSize(containers.at(1));
      final size2 = tester.getSize(containers.at(2));

      expect(size1.width, equals(32)); // current indicator
      expect(size0.width, equals(16));
      expect(size2.width, equals(16));
    });

    testWidgets('should position indicators at bottom center',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Stack(
            children: [
              ImageIndicators(
                imageCount: 3,
                currentIndex: 0,
              ),
            ],
          ),
        ),
      );

      final positioned = tester.widget<Positioned>(find.byType(Positioned));
      expect(positioned.bottom, equals(10));
      expect(positioned.left, equals(0));
      expect(positioned.right, equals(0));

      final row = tester.widget<Row>(find.byType(Row));
      expect(row.mainAxisAlignment, equals(MainAxisAlignment.center));
    });
  });
}

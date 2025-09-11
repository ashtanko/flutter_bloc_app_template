import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/app/localization.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/distance_card_widget.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/distance_cards.dart';
import 'package:flutter_bloc_app_template/models/roadster/roadster_resource.dart';
import 'package:flutter_test/flutter_test.dart' hide TestVSync;

import '../helpers/test_helpers.dart';

void main() {
  group('DistanceCards', () {
    late RoadsterResource mockRoadster;
    late AnimationController pulseController;

    setUp(() {
      mockRoadster = createMockRoadster();
      pulseController = AnimationController(
        duration: const Duration(seconds: 2),
        vsync: const TestVSync(),
      );
    });

    tearDown(() {
      pulseController.dispose();
    });

    testWidgets('should render two distance cards',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: appLocalizationsDelegates,
          supportedLocales: appSupportedLocales,
          home: Scaffold(
            body: DistanceCards(
              roadster: mockRoadster,
              pulseController: pulseController,
            ),
          ),
        ),
      );

      expect(find.byType(DistanceCardWidget), findsNWidgets(2));
    });

    testWidgets('should display Earth and Mars distance cards',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: appLocalizationsDelegates,
          supportedLocales: appSupportedLocales,
          home: Scaffold(
            body: DistanceCards(
              roadster: mockRoadster,
              pulseController: pulseController,
            ),
          ),
        ),
      );

      final distanceCards = tester.widgetList<DistanceCardWidget>(
        find.byType(DistanceCardWidget),
      );

      // First card should be Earth distance
      expect(distanceCards.first.color, equals(Colors.blue));
      expect(distanceCards.first.icon, equals(Icons.public));

      // Second card should be Mars distance
      expect(distanceCards.last.color, equals(Colors.orange));
      expect(distanceCards.last.icon, equals(Icons.circle));
    });

    testWidgets('should pass pulse controller to cards',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: appLocalizationsDelegates,
          supportedLocales: appSupportedLocales,
          home: Scaffold(
            body: DistanceCards(
              roadster: mockRoadster,
              pulseController: pulseController,
            ),
          ),
        ),
      );

      final distanceCards = tester.widgetList<DistanceCardWidget>(
        find.byType(DistanceCardWidget),
      );

      for (final card in distanceCards) {
        expect(card.pulseController, equals(pulseController));
      }
    });
  });
}

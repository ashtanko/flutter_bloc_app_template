import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/app/localization.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/details_card_widget.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/mission_details_card.dart';
import 'package:flutter_bloc_app_template/models/roadster/roadster_resource.dart';
import 'package:flutter_test/flutter_test.dart' hide TestVSync;

import '../helpers/test_helpers.dart';

void main() {
  group('MissionDetailsCard', () {
    late RoadsterResource mockRoadster;
    late AnimationController slideController;

    setUp(() {
      mockRoadster = createMockRoadster();
      slideController = AnimationController(
        duration: const Duration(milliseconds: 800),
        vsync: const TestVSync(),
      );
    });

    tearDown(() {
      slideController.dispose();
    });

    testWidgets('should render slide transition with details card',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: appLocalizationsDelegates,
          supportedLocales: appSupportedLocales,
          home: Scaffold(
            body: MissionDetailsCard(
              roadster: mockRoadster,
              slideController: slideController,
            ),
          ),
        ),
      );

      expect(find.byType(SlideTransition), findsOneWidget);
      expect(find.byType(DetailsCardWidget), findsOneWidget);
    });

    testWidgets('should pass roadster details to card widget',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: appLocalizationsDelegates,
          supportedLocales: appSupportedLocales,
          home: Scaffold(
            body: MissionDetailsCard(
              roadster: mockRoadster,
              slideController: slideController,
            ),
          ),
        ),
      );

      final detailsCard = tester.widget<DetailsCardWidget>(
        find.byType(DetailsCardWidget),
      );
      expect(detailsCard.description1, equals(mockRoadster.details));
    });

    testWidgets('should animate slide transition', (WidgetTester tester) async {
      // Create controller for this test
      final slideController = AnimationController(
        vsync: tester,
        duration: const Duration(milliseconds: 400),
      );

      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: appLocalizationsDelegates,
          supportedLocales: appSupportedLocales,
          home: Scaffold(
            body: MissionDetailsCard(
              roadster: mockRoadster,
              slideController: slideController,
            ),
          ),
        ),
      );

      // Start animation
      unawaited(slideController.forward());
      await tester.pump(); // start first frame
      await tester
          .pump(const Duration(milliseconds: 400)); // complete animation

      // Verify animation runs without errors
      expect(tester.takeException(), isNull);

      // Dispose controller at the end
      slideController.dispose();
    });
  });
}

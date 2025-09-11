import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/app/localization.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/distance_cards.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/launch_details_section.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/links_section_widget.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/mission_details_card.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/orbital_parameters_section.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/roadster_content.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/speed_distance_cards.dart';
import 'package:flutter_bloc_app_template/models/roadster/roadster_resource.dart';
import 'package:flutter_test/flutter_test.dart' hide TestVSync;

import '../helpers/test_helpers.dart';

void main() {
  group('RoadsterContent', () {
    late RoadsterResource mockRoadster;
    late AnimationController slideController;
    late AnimationController pulseController;

    setUp(() {
      mockRoadster = createMockRoadster();
      slideController = AnimationController(
        duration: const Duration(milliseconds: 800),
        vsync: const TestVSync(),
      );
      pulseController = AnimationController(
        duration: const Duration(seconds: 2),
        vsync: const TestVSync(),
      );
    });

    tearDown(() {
      slideController.dispose();
      pulseController.dispose();
    });

    testWidgets('should render all content sections',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: appLocalizationsDelegates,
          supportedLocales: appSupportedLocales,
          home: Scaffold(
            body: RoadsterContent(
              roadster: mockRoadster,
              slideController: slideController,
              pulseController: pulseController,
            ),
          ),
        ),
      );

      expect(find.byType(MissionDetailsCard), findsOneWidget);
      expect(find.byType(SpeedDistanceCards), findsOneWidget);
      expect(find.byType(DistanceCards), findsOneWidget);
      expect(find.byType(OrbitalParametersSection), findsOneWidget);
      expect(find.byType(LaunchDetailsSection), findsOneWidget);
      expect(find.byType(LinksSectionWidget), findsOneWidget);
    });

    testWidgets('should have proper spacing between sections',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: appLocalizationsDelegates,
          supportedLocales: appSupportedLocales,
          home: Scaffold(
            body: RoadsterContent(
              roadster: mockRoadster,
              slideController: slideController,
              pulseController: pulseController,
            ),
          ),
        ),
      );

      final columnFinder = find.descendant(
        of: find.byType(RoadsterContent),
        matching: find.byType(Column),
      );

      final column =
          tester.widget<Column>(columnFinder.first); // first Column only

      final sizedBoxes = column.children.whereType<SizedBox>().toList();

      // Verify spacing between sections
      expect(sizedBoxes.length, greaterThan(5));
    });

    testWidgets('should pass correct controllers to child widgets',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: appLocalizationsDelegates,
          supportedLocales: appSupportedLocales,
          home: Scaffold(
            body: RoadsterContent(
              roadster: mockRoadster,
              slideController: slideController,
              pulseController: pulseController,
            ),
          ),
        ),
      );

      final missionCard = tester.widget<MissionDetailsCard>(
        find.byType(MissionDetailsCard),
      );
      expect(missionCard.slideController, equals(slideController));

      final distanceCards = tester.widget<DistanceCards>(
        find.byType(DistanceCards),
      );
      expect(distanceCards.pulseController, equals(pulseController));
    });
  });
}

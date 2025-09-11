import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/app/localization.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/launch_details_section.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/launch_section_widget.dart';
import 'package:flutter_bloc_app_template/models/roadster/roadster_resource.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('LaunchDetailsSection', () {
    late RoadsterResource mockRoadster;

    setUp(() {
      mockRoadster = createMockRoadster();
    });

    testWidgets('should render launch section widget',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: appLocalizationsDelegates,
          supportedLocales: appSupportedLocales,
          home: Scaffold(
            body: LaunchDetailsSection(roadster: mockRoadster),
          ),
        ),
      );

      expect(find.byType(LaunchSectionWidget), findsOneWidget);
    });

    testWidgets('should pass mass and vehicle information',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: appLocalizationsDelegates,
          supportedLocales: appSupportedLocales,
          home: Scaffold(
            body: LaunchDetailsSection(roadster: mockRoadster),
          ),
        ),
      );

      final launchSection = tester.widget<LaunchSectionWidget>(
        find.byType(LaunchSectionWidget),
      );

      expect(
          launchSection.massKg, contains(mockRoadster.launchMassKg.toString()));
      expect(launchSection.vehicle, equals('Falcon Heavy'));
    });
  });
}

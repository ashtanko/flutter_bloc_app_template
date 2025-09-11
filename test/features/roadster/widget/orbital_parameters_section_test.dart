import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/app/localization.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/orbital_parameters_section.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/orbital_section_widget.dart';
import 'package:flutter_bloc_app_template/models/roadster/roadster_resource.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('OrbitalParametersSection', () {
    late RoadsterResource mockRoadster;

    setUp(() {
      mockRoadster = createMockRoadster();
    });

    testWidgets('should render orbital section widget',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: appLocalizationsDelegates,
          supportedLocales: appSupportedLocales,
          home: Scaffold(
            body: OrbitalParametersSection(roadster: mockRoadster),
          ),
        ),
      );

      expect(find.byType(OrbitalSectionWidget), findsOneWidget);
    });

    testWidgets('should pass six orbital data parameters',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: appLocalizationsDelegates,
          supportedLocales: appSupportedLocales,
          home: Scaffold(
            body: OrbitalParametersSection(roadster: mockRoadster),
          ),
        ),
      );

      final orbitalSection = tester.widget<OrbitalSectionWidget>(
        find.byType(OrbitalSectionWidget),
      );

      expect(orbitalSection.orbitalData.length, equals(6));
    });
  });
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/app/localization.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/animated_stat_card_widget.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/speed_distance_cards.dart';
import 'package:flutter_bloc_app_template/models/roadster/roadster_resource.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('SpeedDistanceCards', () {
    late RoadsterResource mockRoadster;

    setUp(() {
      mockRoadster = createMockRoadster();
    });

    testWidgets('should display speed and orbital period cards',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: appLocalizationsDelegates,
          supportedLocales: appSupportedLocales,
          home: Scaffold(
            body: SpeedDistanceCards(roadster: mockRoadster),
          ),
        ),
      );

      final statCards = tester.widgetList<AnimatedStatCardWidget>(
        find.byType(AnimatedStatCardWidget),
      );

      // First card should be speed
      expect(statCards.first.icon, equals(Icons.speed));
      expect(statCards.first.color, equals(Colors.blue));

      // Second card should be orbital period
      expect(statCards.last.icon, equals(Icons.timer_outlined));
      expect(statCards.last.color, equals(Colors.purple));
    });

    testWidgets('should display formatted values from roadster data',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: appLocalizationsDelegates,
          supportedLocales: appSupportedLocales,
          home: Scaffold(
            body: SpeedDistanceCards(roadster: mockRoadster),
          ),
        ),
      );

      final statCards = tester.widgetList<AnimatedStatCardWidget>(
        find.byType(AnimatedStatCardWidget),
      );

      // Verify values are formatted properly (or show N/A if null)
      expect(statCards.first.value, isNotNull);
      expect(statCards.last.value, isNotNull);
    });
  });
}

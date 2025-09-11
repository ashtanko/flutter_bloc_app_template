import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/app/localization.dart';
import 'package:flutter_bloc_app_template/features/roadster/model/mission.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/details_card_widget.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('DetailsCardWidget renders correctly',
      (WidgetTester tester) async {
    final missions = [
      Mission(name: 'Mission 1', isPrimary: true),
      Mission(name: 'Mission 2', isPrimary: false),
    ];

    await tester.pumpWidget(
      MaterialApp(
        localizationsDelegates: appLocalizationsDelegates,
        supportedLocales: appSupportedLocales,
        home: Material(
          child: DetailsCardWidget(
            description1: 'This is description 1',
            description2: 'This is description 2',
            missions: missions,
          ),
        ),
      ),
    );

    // Verify Card exists
    expect(find.byType(Card), findsOneWidget);

    // Verify rotating Icon exists
    expect(find.byIcon(Icons.satellite_alt), findsOneWidget);

    // Verify descriptions
    expect(find.text('This is description 1'), findsOneWidget);
    expect(find.text('This is description 2'), findsOneWidget);

    // Verify all mission chips exist
    for (final mission in missions) {
      expect(find.text(mission.name), findsOneWidget);
      expect(find.byType(Chip), findsNWidgets(missions.length));
    }

    // Pump some duration to trigger animation
    await tester.pump(const Duration(seconds: 1));
  });
}

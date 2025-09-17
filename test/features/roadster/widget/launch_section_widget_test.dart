import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/app/localization.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/launch_section_widget.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('LaunchSectionWidget renders correctly',
      (WidgetTester tester) async {
    const testMass = '10,000 kg';
    const testVehicle = 'Falcon 9';

    await tester.pumpWidget(
      const MaterialApp(
        localizationsDelegates: appLocalizationsDelegates,
        supportedLocales: appSupportedLocales,
        home: Scaffold(
          body: LaunchSectionWidget(
            massKg: testMass,
            vehicle: testVehicle,
          ),
        ),
      ),
    );

    // Verify Card exists
    expect(find.byType(Card), findsOneWidget);

    // Verify Icon
    expect(find.byIcon(Icons.rocket), findsOneWidget);

    // Verify headline text
    final l10n = S.of(tester.element(find.byType(LaunchSectionWidget)));
    expect(find.text(l10n.launchInformation), findsOneWidget);

    // Verify mass label and value
    expect(find.text(l10n.launchMass), findsOneWidget);
    expect(find.text(testMass), findsOneWidget);

    // Verify vehicle label and value
    expect(find.text(l10n.launchVehicle), findsOneWidget);
    expect(find.text(testVehicle), findsOneWidget);
  });
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/app/localization.dart';
import 'package:flutter_bloc_app_template/features/rockets/widget/rocket_item/rocket_item.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart';
import 'package:flutter_bloc_app_template/models/rocket/rocket_resource.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // Helper to wrap widget with locale
  Widget wrapWithLocale(Locale locale, Widget child) {
    return MaterialApp(
      locale: locale,
      localizationsDelegates: appLocalizationsDelegates,
      supportedLocales: appSupportedLocales,
      home: Scaffold(body: child),
    );
  }

  // Sample rocket
  final testRocket = const RocketResource(
    rocketName: 'Falcon 9',
    active: true,
    firstFlight: '2010-06-04',
    successRatePct: 97,
    costPerLaunch: 50000000,
    description: 'Reusable rocket by SpaceX',
    flickrImages: ['https://example.com/image.jpg'],
  );

  group('RocketItemWidget localization', () {
    final _ = {
      'en': const Locale('en'),
      'uk': const Locale('uk'),
      'pt': const Locale('pt'),
      'de': const Locale('de'),
    }..forEach((lang, locale) {
        testWidgets('displays correct localized strings for $lang',
            (tester) async {
          await tester.pumpWidget(
            wrapWithLocale(
              locale,
              RocketItemWidget(
                rocket: testRocket,
                onClick: () {},
              ),
            ),
          );
          await tester.pumpAndSettle();

          final l10n = S.of(tester.element(find.byType(RocketItemWidget)));

          // Check Active/Retired label
          expect(find.text(l10n.activeStatus), findsOneWidget);

          // Check success rate
          expect(
              find.text(l10n.successRate(testRocket.successRatePct.toString())),
              findsOneWidget);

          // Check cost label
          expect(find.text('\$50.0M'), findsOneWidget);

          // Check rocket name
          expect(find.text('Falcon 9'), findsOneWidget);

          // Check description
          expect(find.text('Reusable rocket by SpaceX'), findsOneWidget);

          // Change rocket to retired
          final retiredRocket = testRocket.copyWith(active: false);
          await tester.pumpWidget(
            wrapWithLocale(
              locale,
              RocketItemWidget(
                rocket: retiredRocket,
                onClick: () {},
              ),
            ),
          );
          await tester.pumpAndSettle();

          expect(find.text(l10n.retiredStatus), findsOneWidget);
        });
      });
  });
}

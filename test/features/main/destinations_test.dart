import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/app/localization.dart';
import 'package:flutter_bloc_app_template/features/main/navigation/destinations.dart';
import 'package:flutter_bloc_app_template/index.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // Helper to wrap a widget with a given locale
  Widget wrapWithLocale(Locale locale, Widget child) {
    return MaterialApp(
      locale: locale,
      localizationsDelegates: appLocalizationsDelegates,
      supportedLocales: appSupportedLocales,
      home: Scaffold(body: child),
    );
  }

  group('NavDestinations localization', () {
    final _ = {
      'en': const Locale('en'),
      'uk': const Locale('uk'),
      'pt': const Locale('pt'),
      'de': const Locale('de'),
    }..forEach((lang, locale) {
        testWidgets('returns correct labels for $lang', (tester) async {
          await tester.pumpWidget(wrapWithLocale(locale, Builder(
            builder: (context) {
              final destinations = getDestinations(context);

              // Check labels
              expect(destinations[0].label, context.launchesTitle);
              expect(destinations[1].label, context.rocketsTab);
              expect(destinations[2].label, context.settingsTitle);

              return Container();
            },
          )));
        });
      });
  });
}

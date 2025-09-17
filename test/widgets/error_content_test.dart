import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/app/localization.dart';
import 'package:flutter_bloc_app_template/index.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final locales = [
    const Locale('en'), // English
    const Locale('de'), // German
    const Locale('pt'), // Portuguese
  ];

  final translations = {
    const Locale('en'): 'Try Again',
    const Locale('de'): 'Erneut versuchen',
    const Locale('pt'): 'Tentar novamente',
  };

  for (final locale in locales) {
    testWidgets(
        'displays Try Again button in $locale and triggers callback '
        'when tapped', (WidgetTester tester) async {
      var callbackTriggered = false;

      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: appLocalizationsDelegates,
          supportedLocales: appSupportedLocales,
          locale: locale,
          home: ErrorContent(
            onTryAgainClick: () {
              callbackTriggered = true;
            },
          ),
        ),
      );

      expect(find.byType(ElevatedButton), findsOneWidget);
      expect(find.text(translations[locale]!), findsOneWidget);

      await tester.tap(find.byType(ElevatedButton));
      await tester.pumpAndSettle();

      expect(callbackTriggered, isTrue);
    });
  }
}

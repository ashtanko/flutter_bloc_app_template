import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart';
import 'package:flutter_bloc_app_template/index.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';

extension PumpApp on WidgetTester {
  Future<void> pumpRealRouterApp(
    Widget Function(Widget child) builder, {
    bool isConnected = true,
  }) {
    return pumpWidget(
      builder(
        MaterialApp(
          localizationsDelegates: [
            const AppLocalizationDelegate(),
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate
          ],
          onGenerateTitle: (BuildContext context) => S.of(context).appTitle,
          locale: const Locale('en'),
          navigatorKey: appNavigatorKey,
          onGenerateRoute: NavigationService().onGenerateRoute,
        ),
      ),
    );
  }
}

void main() {
  group('Routes Tests', () {
    // TODO
    testWidgets('renders HomePage via Go Router', (tester) async {
      await tester.pumpRealRouterApp(
        (child) => child,
        isConnected: false,
      );
      expect(find.byType(EmailListScreen), findsNothing);
      expect(find.byType(BackButton), findsNothing);
    });
  });
}

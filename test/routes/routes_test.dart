import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart';
import 'package:flutter_bloc_app_template/index.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';

import '../mocks.dart';

extension PumpApp on WidgetTester {
  Future<void> pumpRealRouterApp(
    NavigationService navigationService,
    NavigatorObserver navigatorObserver,
    Widget Function(Widget child) builder, {
    bool isConnected = true,
  }) async {
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
          navigatorObservers: [navigatorObserver],
          onGenerateRoute: navigationService.onGenerateRoute,
        ),
      ),
    );
  }
}

void main() {
  final navigator = NavigationService();
  final mockObserver = MockNavigatorObserver();

  group('Routes Tests', () {
    testWidgets('renders HomePage via Router', (tester) async {
      await tester.pumpRealRouterApp(
        navigator,
        mockObserver,
        (child) => child,
        isConnected: false,
      );
      expect(find.byType(EmailListScreen), findsNothing);
      expect(find.byType(BackButton), findsNothing);
    });

    // test('navigateTo pushes named route', () async {
    //   final navigatorKey = GlobalKey<NavigatorState>();
    //   final navigationService = NavigationService();
    //   navigationService.appNavigatorKey = navigatorKey;
    //
    //   await navigationService.navigateTo(Routes.app);
    //
    //   expect(navigatorKey.currentState?.canPop(), isTrue);
    // });

    // testWidgets('navigation test', (tester) async {
    //   await tester.pumpRealRouterApp(
    //     navigator,
    //     mockObserver,
    //     (child) => child,
    //     isConnected: false,
    //   );
    //
    //   await navigator.navigateTo(Routes.app);
    //   await tester.pump();
    //
    //   verify(mockObserver.didPush(any, any));
    // });

    // testWidgets('replace test', (tester) async {
    //   await tester.pumpRealRouterApp(
    //     navigator,
    //     mockObserver,
    //     (child) => child,
    //     isConnected: false,
    //   );
    //
    //   await navigator.navigateTo(Routes.app, null, true);
    //   await tester.pump();
    //
    //   verify(mockObserver.didPush(any, any));
    // });

    // testWidgets('push and remove all test', (tester) async {
    //   await tester.pumpRealRouterApp(
    //     navigator,
    //     mockObserver,
    //     (child) => child,
    //     isConnected: false,
    //   );
    //
    //   await navigator.pushAndRemoveAll(Routes.app, true);
    //   await tester.pump();
    //
    //   verify(mockObserver.didPush(any, any));
    // });
  });
}

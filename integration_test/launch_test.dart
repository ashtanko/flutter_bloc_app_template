import 'dart:ui';

import 'package:flutter_bloc_app_template/features/launch/bloc/launch_bloc.dart';
import 'package:flutter_bloc_app_template/features/launch/launch_screen.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:mocktail/mocktail.dart';

import '../test/bloc/utils.dart';
import '../test/features/launch/launch_screen_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  late LaunchBloc launchBloc;

  setUp(() {
    launchBloc = MockLaunchBloc();
  });

  Future<void> pumpLaunchScreen(
    WidgetTester tester, {
    required Locale locale,
  }) async {
    when(() => launchBloc.state).thenReturn(
      const LaunchSuccessState(
        launch: mockLaunchResource,
      ),
    );

    await tester.pumpLocalizedWidgetWithBloc<LaunchBloc>(
      bloc: launchBloc,
      child: const LaunchScreenBlocContent(flightNumber: 1),
      locale: locale,
    );
    await tester.pumpAndSettle();
  }

  void expectLaunchTexts(
    String flightName, {
    List<String> additionalTexts = const [],
  }) {
    expect(find.text('Starlink-1'), findsOneWidget);
    expect(find.text(flightName), findsOneWidget);
    for (final text in additionalTexts) {
      expect(find.text(text), findsAtLeast(1));
    }
  }

  group('Launch Screen Tests', () {
    testWidgets('launch test', (tester) async {
      await pumpLaunchScreen(tester, locale: const Locale('en'));
      expectLaunchTexts('Flight #100');
    });

    testWidgets('launch uk test', (tester) async {
      await pumpLaunchScreen(tester, locale: const Locale('uk'));
      expectLaunchTexts(
        'Політ #100',
        additionalTexts: ['Місія успішна'],
      );
    });

    testWidgets('launch pt test', (tester) async {
      await pumpLaunchScreen(tester, locale: const Locale('pt'));
      expectLaunchTexts(
        'Voo #100',
        additionalTexts: ['Missão bem-sucedida'],
      );
    });
    testWidgets('launch de test', (tester) async {
      await pumpLaunchScreen(tester, locale: const Locale('de'));
      expectLaunchTexts(
        'Flug #100',
        additionalTexts: ['Mission erfolgreich'],
      );
    });
  });
}

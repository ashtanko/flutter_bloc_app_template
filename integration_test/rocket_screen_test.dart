import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/app/localization.dart';
import 'package:flutter_bloc_app_template/features/rocket/bloc/rocket_bloc.dart';
import 'package:flutter_bloc_app_template/features/rocket/rocket_screen.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:mocktail/mocktail.dart';

import '../test/bloc/utils.dart';
import '../test/features/rocket/rocket_screen_test.dart';
import '../test/repository/rocket_repository_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  late RocketBloc rocketBloc;

  setUp(() {
    rocketBloc = MockRocketBloc();
  });

  Future<void> pumpRocketScreen(
    WidgetTester tester, {
    required Locale locale,
    void Function(BuildContext context)? contextCallback,
  }) async {
    when(() => rocketBloc.state).thenReturn(
      RocketSuccessState(
        rocket: mockRocket,
      ),
    );

    await tester.pumpLocalizedWidgetWithBloc<RocketBloc>(
      bloc: rocketBloc,
      child: const RocketScreenBlocContent(rocketId: 'falcon9'),
      locale: locale,
    );
    await tester.pumpAndSettle();
  }

  void expectRocketScreenTexts(
    String specificationLabel, {
    List<String> additionalTexts = const [],
  }) {
    expect(find.text('Falcon 9'), findsOneWidget);
    expect(find.text(specificationLabel), findsOneWidget);
    for (final text in additionalTexts) {
      expect(find.text(text), findsAtLeast(1));
    }
  }

  group('Rocket Screen Tests', () {
    for (final locale in appSupportedLocales) {
      testWidgets('rocket screen $locale test', (tester) async {
        await pumpRocketScreen(tester, locale: locale, contextCallback: (ctx) {
          expectRocketScreenTexts(
            S.of(ctx).specifications,
            additionalTexts: [S.of(ctx).payloadCapacity],
          );
        });
      });
    }
  });
}

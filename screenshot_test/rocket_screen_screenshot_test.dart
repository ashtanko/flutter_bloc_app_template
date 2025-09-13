import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/features/rocket/bloc/rocket_bloc.dart';
import 'package:flutter_bloc_app_template/features/rocket/rocket_screen.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:mocktail/mocktail.dart';

import '../test/bloc/utils.dart';
import '../test/features/rocket/rocket_screen_test.dart';
import '../test/repository/rocket_repository_test.dart';
import '../test/utils/screenshot.dart';

void main() {
  final binding = IntegrationTestWidgetsFlutterBinding();
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  late RocketBloc rocketBloc;

  setUp(() {
    rocketBloc = MockRocketBloc();
  });

  group('Rockets Screen Tests', () {
    testWidgets(
        'renders UI '
        'when rocket screen state is success', (tester) async {
      when(() => rocketBloc.state).thenReturn(RocketSuccessState(
        rocket: mockRocket,
      ));

      await tester.pumpLocalizedWidgetWithBloc<RocketBloc>(
        bloc: rocketBloc,
        child: const RocketScreenBlocContent(
          rocketId: 'falcon9',
        ),
        locale: const Locale('en'),
      );

      await tester.pump();

      expect(find.text('Falcon 9'), findsOneWidget);
      expect(find.text('Overview'), findsOneWidget);

      await takePlatformScreenshot('rocket-screenshot', tester, binding);
    });
  });
}

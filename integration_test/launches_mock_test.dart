import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/features/launches/bloc/launches_bloc.dart';
import 'package:flutter_bloc_app_template/features/launches/launches_screen.dart';
import 'package:flutter_bloc_app_template/index.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:mocktail/mocktail.dart';

import '../test/bloc/utils.dart';
import '../test/features/launches/launches_screen_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  late LaunchesBloc launchesBloc;

  setUp(() {
    launchesBloc = MockLaunchesBloc();
  });

  group('Launches Screen Tests', () {
    testWidgets(
        'renders CircularProgressIndicator '
        'when launches list state is initial', (tester) async {
      when(() => launchesBloc.state).thenReturn(const LaunchesLoadingState());

      await tester.pumpLocalizedWidgetWithBloc<LaunchesBloc>(
        bloc: launchesBloc,
        child: const LaunchesList(),
        locale: const Locale('en'),
      );

      await tester.pump();

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets(
        'renders Empty list text '
        'when launches list state is success but with 0 items', (tester) async {
      when(() => launchesBloc.state).thenReturn(const LaunchesEmptyState());
      await tester.pumpLocalizedWidgetWithBloc<LaunchesBloc>(
        bloc: launchesBloc,
        child: const LaunchesList(),
        locale: const Locale('en'),
      );
      await tester.pumpAndSettle();

      expect(find.text('Empty list'), findsOneWidget);
    });

    testWidgets('launches test', (
      WidgetTester tester,
    ) async {
      // app.main([]);
      // await tester.pumpAndSettle();

      when(() => launchesBloc.state).thenReturn(
        const LaunchesSuccessState(
          launches: [
            LaunchResource(
              id: '1',
              flightNumber: 1,
              missionName: 'FalconSat',
              launchDays: Since(
                '2021-10-01T00:00:00Z',
              ),
              launchTime: '00:00',
              rocket: RocketResource(
                rocketName: 'Rocket 1',
                rocketType: 'Type 1',
              ),
              launchSuccess: true,
            )
          ],
        ),
      );
      await tester.pumpLocalizedWidgetWithBloc<LaunchesBloc>(
        bloc: launchesBloc,
        child: const LaunchesList(),
        locale: const Locale('en'),
      );
      await tester.pumpAndSettle();

      final firstItem = find.byKey(const Key('FalconSat1'));

      expect(firstItem, findsOneWidget);
      await tester.ensureVisible(firstItem);
    });
  });
}

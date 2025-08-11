import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/features/launches/bloc/launches_bloc.dart';
import 'package:flutter_bloc_app_template/features/launches/launches_screen.dart';
import 'package:flutter_bloc_app_template/features/launches/widget/launch_item.dart';
import 'package:flutter_bloc_app_template/index.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../bloc/utils.dart';

class MockLaunchesBloc extends MockBloc<LaunchesEvent, LaunchesState>
    implements LaunchesBloc {}

void main() {
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

    testWidgets('renders 1 item', (tester) async {
      when(() => launchesBloc.state).thenReturn(
        const LaunchesSuccessState(
          launches: [
            LaunchResource(
              id: '1',
              flightNumber: 1,
              missionName: 'Mission 1',
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

      expect(find.byType(LaunchItem), findsNWidgets(1));
    });

    testWidgets('renders 2 items', (tester) async {
      when(() => launchesBloc.state).thenReturn(
        const LaunchesSuccessState(
          launches: [
            LaunchResource(
              id: '1',
              flightNumber: 1,
              missionName: 'Mission 1',
              launchDays: Since(
                '2021-10-01T00:00:00Z',
              ),
              launchTime: '00:00',
              rocket: RocketResource(
                rocketName: 'Rocket 1',
                rocketType: 'Type 1',
              ),
              launchSuccess: true,
            ),
            LaunchResource(
              id: '2',
              flightNumber: 2,
              missionName: 'Mission 1',
              launchDays: Since(
                '2021-10-01T00:00:00Z',
              ),
              launchTime: '00:00',
              rocket: RocketResource(
                rocketName: 'Rocket 1',
                rocketType: 'Type 1',
              ),
              launchSuccess: true,
            ),
          ],
        ),
      );
      await tester.pumpLocalizedWidgetWithBloc<LaunchesBloc>(
        bloc: launchesBloc,
        child: const LaunchesList(),
        locale: const Locale('en'),
      );
      await tester.pumpAndSettle();

      expect(find.byType(LaunchItem), findsNWidgets(2));
    });

    testWidgets('renders error text', (tester) async {
      when(() => launchesBloc.state).thenReturn(const LaunchesErrorState());
      await tester.pumpLocalizedWidgetWithBloc<LaunchesBloc>(
        bloc: launchesBloc,
        child: const LaunchesList(),
        locale: const Locale('en'),
      );
      await tester.pumpAndSettle();

      expect(find.text('Try Again'), findsOneWidget);
    });
  });
}

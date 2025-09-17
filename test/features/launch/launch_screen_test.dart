import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/features/launch/bloc/launch_bloc.dart';
import 'package:flutter_bloc_app_template/features/launch/launch_screen.dart';
import 'package:flutter_bloc_app_template/models/launch/launch_full_resource.dart';
import 'package:flutter_bloc_app_template/models/launch/launch_rocket_resource.dart';
import 'package:flutter_bloc_app_template/models/launch/links_resource.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../bloc/utils.dart';

class MockLaunchBloc extends MockBloc<LaunchEvent, LaunchState>
    implements LaunchBloc {}

const mockRocket =
    LaunchRocketResource(rocketName: 'Falcon 9', rocketType: 'FT');
const mockLinks =
    LinksResource(wikipedia: 'https://en.wikipedia.org/wiki/Falcon_9');

const mockLaunchResource = LaunchFullResource(
  id: '1',
  flightNumber: 100,
  missionName: 'Starlink-1',
  isTentative: false,
  tentativeMaxPrecision: null,
  tbd: false,
  launchDate: 'December 25, 2025',
  staticFireDate: 'December 25, 2025 - 14:30 UTC',
  launchWindow: 120,
  rocket: mockRocket,
  launchSuccess: true,
  links: mockLinks,
  ships: [],
);

void main() {
  late LaunchBloc launchBloc;

  setUp(() {
    launchBloc = MockLaunchBloc();
    when(() => launchBloc.stream)
        .thenAnswer((_) => const Stream<LaunchState>.empty());
    when(() => launchBloc.close()).thenAnswer((_) async {});
    addTearDown(() => launchBloc.close());
  });

  group('Launch Screen Tests', () {
    testWidgets(
        'renders CircularProgressIndicator '
        'when launch state is initial', (tester) async {
      when(() => launchBloc.state).thenReturn(const LaunchLoadingState());

      await tester.pumpLocalizedWidgetWithBloc<LaunchBloc>(
        bloc: launchBloc,
        child: const LaunchScreenBlocContent(
          flightNumber: 1,
        ),
        locale: const Locale('en'),
      );

      await tester.pump();

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('render launch details UI on success state', (tester) async {
      when(() => launchBloc.state).thenReturn(
        const LaunchSuccessState(
          launch: mockLaunchResource,
        ),
      );
      await tester.pumpLocalizedWidgetWithBloc<LaunchBloc>(
        bloc: launchBloc,
        child: const LaunchScreenBlocContent(
          flightNumber: 1,
        ),
        locale: const Locale('en'),
      );
      await tester.pumpAndSettle();

      expect(find.byType(LaunchScreenBlocContent), findsNWidgets(1));
      expect(find.text('Mission Successful'), findsOneWidget);
    });

    testWidgets('render launch details UI on success state localized',
        (tester) async {
      when(() => launchBloc.state).thenReturn(
        const LaunchSuccessState(
          launch: mockLaunchResource,
        ),
      );
      await tester.pumpLocalizedWidgetWithBloc<LaunchBloc>(
        bloc: launchBloc,
        child: const LaunchScreenBlocContent(
          flightNumber: 1,
        ),
        locale: const Locale('pt'),
      );
      await tester.pumpAndSettle();

      expect(find.byType(LaunchScreenBlocContent), findsNWidgets(1));
      expect(find.text('Missão bem-sucedida'), findsOneWidget);
    });

    testWidgets('renders error', (tester) async {
      when(() => launchBloc.state).thenReturn(const LaunchErrorState());
      await tester.pumpLocalizedWidgetWithBloc<LaunchBloc>(
        bloc: launchBloc,
        child: const LaunchScreenBlocContent(
          flightNumber: 1,
        ),
        locale: const Locale('en'),
      );
      await tester.pumpAndSettle();

      expect(find.text('Try Again'), findsOneWidget);
    });
  });
}

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/features/rocket/bloc/rocket_bloc.dart';
import 'package:flutter_bloc_app_template/features/rocket/rocket_screen.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../bloc/utils.dart';
import '../../repository/rocket_repository_test.dart';

class MockRocketBloc extends MockBloc<RocketEvent, RocketState>
    implements RocketBloc {}

void main() {
  late RocketBloc rocketBloc;

  setUp(() {
    rocketBloc = MockRocketBloc();
    when(() => rocketBloc.stream)
        .thenAnswer((_) => const Stream<RocketState>.empty());
    when(() => rocketBloc.close()).thenAnswer((_) async {});
    addTearDown(() => rocketBloc.close());
  });

  group('Rocket Screen Tests', () {
    testWidgets(
        'renders CircularProgressIndicator '
        'when state is initial', (tester) async {
      when(() => rocketBloc.state).thenReturn(const RocketLoadingState());

      await tester.pumpLocalizedWidgetWithBloc<RocketBloc>(
        bloc: rocketBloc,
        child: const RocketScreenBlocContent(
          rocketId: 'falcon1',
        ),
        locale: const Locale('en'),
      );

      await tester.pump();

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('render details UI on success state', (tester) async {
      when(() => rocketBloc.state).thenReturn(
        RocketSuccessState(
          rocket: mockRocket,
        ),
      );
      await tester.pumpLocalizedWidgetWithBloc<RocketBloc>(
        bloc: rocketBloc,
        child: const RocketScreenBlocContent(
          rocketId: 'falcon1',
        ),
        locale: const Locale('en'),
      );
      await tester.pumpAndSettle();

      expect(find.byType(RocketScreenBlocContent), findsNWidgets(1));
      expect(find.text('Specifications'), findsOneWidget);
    });

    testWidgets('render details UI on success state localized', (tester) async {
      when(() => rocketBloc.state).thenReturn(
        RocketSuccessState(
          rocket: mockRocket,
        ),
      );
      await tester.pumpLocalizedWidgetWithBloc<RocketBloc>(
        bloc: rocketBloc,
        child: const RocketScreenBlocContent(
          rocketId: 'falcon1',
        ),
        locale: const Locale('pt'),
      );
      await tester.pumpAndSettle();

      expect(find.byType(RocketScreenBlocContent), findsNWidgets(1));
      expect(find.text('Especificações'), findsOneWidget);
    });

    testWidgets('renders error', (tester) async {
      when(() => rocketBloc.state).thenReturn(const RocketErrorState());
      await tester.pumpLocalizedWidgetWithBloc<RocketBloc>(
        bloc: rocketBloc,
        child: const RocketScreenBlocContent(
          rocketId: 'falcon1',
        ),
        locale: const Locale('en'),
      );
      await tester.pumpAndSettle();

      expect(find.text('Try Again'), findsOneWidget);
    });
  });
}

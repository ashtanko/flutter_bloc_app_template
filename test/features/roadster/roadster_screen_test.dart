import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/features/roadster/bloc/roadster_bloc.dart';
import 'package:flutter_bloc_app_template/features/roadster/roadster_screen.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../bloc/utils.dart';

class MockRoadsterBloc extends MockBloc<RoadsterEvent, RoadsterState>
    implements RoadsterBloc {}

void main() {
  late RoadsterBloc roadsterBloc;

  setUp(() {
    roadsterBloc = MockRoadsterBloc();
    when(() => roadsterBloc.stream)
        .thenAnswer((_) => const Stream<RoadsterState>.empty());
    when(() => roadsterBloc.close()).thenAnswer((_) async {});
    addTearDown(() => roadsterBloc.close());
  });

  group('Roadster Screen Tests', () {
    testWidgets(
        'renders CircularProgressIndicator '
        'when state is initial', (tester) async {
      when(() => roadsterBloc.state).thenReturn(const RoadsterLoadingState());

      await tester.pumpLocalizedWidgetWithBloc<RoadsterBloc>(
        bloc: roadsterBloc,
        child: const RoadsterScreenBlocContent(),
        locale: const Locale('en'),
      );

      await tester.pump();

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('renders error', (tester) async {
      when(() => roadsterBloc.state).thenReturn(const RoadsterErrorState());
      await tester.pumpLocalizedWidgetWithBloc<RoadsterBloc>(
        bloc: roadsterBloc,
        child: const RoadsterScreenBlocContent(),
        locale: const Locale('en'),
      );
      await tester.pumpAndSettle();

      expect(find.text('Try Again'), findsOneWidget);
    });
  });
}

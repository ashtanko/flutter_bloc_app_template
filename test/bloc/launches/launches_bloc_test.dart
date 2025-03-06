import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_bloc_app_template/features/launches/bloc/launches_bloc.dart';
import 'package:flutter_bloc_app_template/repository/launches_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../mocks.dart';
import '../../repository/launches_repository_test.dart';

void main() {
  group('LaunchesBloc', () {
    late LaunchesRepository repository;
    late LaunchesBloc bloc;

    setUp(() {
      repository = MockLaunchesRepository();
      bloc = LaunchesBloc(repository);
    });

    tearDown(() => bloc.close());

    test('state returns correct state initially', () {
      expect(bloc.state, const LaunchesLoadingState());
    });

    group('fetchData', () {
      blocTest<LaunchesBloc, LaunchesState>(
        'fetches data correctly',
        build: () {
          when(repository.getLaunches()).thenAnswer(
            (_) => Future.value(mockLaunches),
          );
          return bloc;
        },
        act: (bloc) => bloc.add(
          const LaunchesEvent.load(),
        ),
        verify: (_) => verify(repository.getLaunches()).called(1),
        expect: () => [LaunchesState.success(launches: mockLaunches)],
      );

      blocTest<LaunchesBloc, LaunchesState>(
        'fetches data correctly but list is empty',
        build: () {
          when(repository.getLaunches()).thenAnswer(
            (_) => Future.value([]),
          );
          return bloc;
        },
        act: (bloc) async => bloc.add(
          const LaunchesEvent.load(),
        ),
        verify: (_) => verify(repository.getLaunches()).called(1),
        expect: () => [const LaunchesState.empty()],
      );

      blocTest<LaunchesBloc, LaunchesState>(
        'can throw an exception',
        build: () {
          when(repository.getLaunches())
              .thenThrow(Exception('something went wrong'));
          return bloc;
        },
        act: (bloc) async => bloc.add(
          const LaunchesEvent.load(),
        ),
        verify: (_) => verify(repository.getLaunches()).called(1),
        expect: () => [
          const LaunchesState.error(),
        ],
      );
    });
  });
}

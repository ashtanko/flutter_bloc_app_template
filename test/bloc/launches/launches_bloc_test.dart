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

    test('should return LaunchesLoadingState initially', () {
      expect(bloc.state, const LaunchesLoadingState());
    });

    group('fetchData', () {
      blocTest<LaunchesBloc, LaunchesState>(
        'should emit [loading, success] when data is fetched successfully',
        build: () {
          when(repository.getLaunches()).thenAnswer(
            (_) async => mockLaunches,
          );
          return bloc;
        },
        act: (bloc) => bloc.add(const LaunchesEvent.load()),
        expect: () => [
          const LaunchesState.loading(),
          LaunchesState.success(launches: mockLaunches),
        ],
        verify: (_) => verify(repository.getLaunches()).called(1),
      );

      blocTest<LaunchesBloc, LaunchesState>(
        'should emit [loading, empty] when data is fetched but list is empty',
        build: () {
          when(repository.getLaunches()).thenAnswer(
            (_) async => [],
          );
          return bloc;
        },
        act: (bloc) => bloc.add(const LaunchesEvent.load()),
        expect: () => [
          const LaunchesState.loading(),
          const LaunchesState.empty(),
        ],
        verify: (_) => verify(repository.getLaunches()).called(1),
      );

      blocTest<LaunchesBloc, LaunchesState>(
        'should emit [loading, error] when an exception is thrown',
        build: () {
          when(repository.getLaunches()).thenThrow(
            Exception('something went wrong'),
          );
          return bloc;
        },
        act: (bloc) => bloc.add(const LaunchesEvent.load()),
        expect: () => [
          const LaunchesState.loading(),
          const LaunchesState.error(),
        ],
        verify: (_) => verify(repository.getLaunches()).called(1),
      );
    });
  });
}

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_bloc_app_template/features/launch/bloc/launch_bloc.dart';
import 'package:flutter_bloc_app_template/repository/launches_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../mocks.mocks.dart';
import '../../../repository/launches_repository_test.dart';

void main() {
  group('LaunchesBloc', () {
    final flightNumber = 1;
    late LaunchesRepository repository;
    late LaunchBloc bloc;

    setUp(() {
      repository = MockLaunchesRepository();
      bloc = LaunchBloc(repository);
    });

    tearDown(() => bloc.close());

    test('should return LaunchLoadingState initially', () {
      expect(bloc.state, const LaunchLoadingState());
    });

    group('fetchData', () {
      blocTest<LaunchBloc, LaunchState>(
        'should emit [loading, success] when data is fetched successfully',
        build: () {
          when(repository.getLaunch(flightNumber)).thenAnswer(
            (_) async => mockFullLaunch,
          );
          return bloc;
        },
        act: (bloc) => bloc.add(LaunchLoadEvent(flightNumber: flightNumber)),
        expect: () => [
          const LaunchState.loading(),
          LaunchState.success(launch: mockFullLaunch),
        ],
        verify: (_) => verify(repository.getLaunch(flightNumber)).called(1),
      );

      blocTest<LaunchBloc, LaunchState>(
        'should emit [loading, error] when an exception is thrown',
        build: () {
          when(repository.getLaunch(flightNumber)).thenThrow(
            Exception('something went wrong'),
          );
          return bloc;
        },
        act: (bloc) => bloc.add(LaunchLoadEvent(flightNumber: flightNumber)),
        expect: () => [
          const LaunchState.loading(),
          const LaunchState.error(),
        ],
        verify: (_) => verify(repository.getLaunch(flightNumber)).called(1),
      );
    });
  });
}

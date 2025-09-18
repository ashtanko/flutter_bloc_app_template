import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_bloc_app_template/features/rockets/bloc/rockets_bloc.dart';
import 'package:flutter_bloc_app_template/repository/rocket_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../mocks.dart';
import '../../../repository/rocket_repository_test.dart';

void main() {
  group('RocketsBloc', () {
    late RocketRepository repository;
    late RocketsBloc bloc;

    setUp(() {
      repository = MockRocketRepository();
      bloc = RocketsBloc(repository);
    });

    tearDown(() => bloc.close());

    test('should return RocketsLoadingState initially', () {
      expect(bloc.state, const RocketsLoadingState());
    });

    group('fetchData', () {
      blocTest<RocketsBloc, RocketsState>(
        'should emit [loading, success] when data is fetched successfully',
        build: () {
          when(repository.getRockets()).thenAnswer(
            (_) async => mockRockets,
          );
          return bloc;
        },
        act: (bloc) => bloc.add(const RocketsEvent.load()),
        expect: () => [
          const RocketsState.loading(),
          RocketsState.success(rockets: mockRockets),
        ],
        verify: (_) => verify(repository.getRockets()).called(1),
      );

      blocTest<RocketsBloc, RocketsState>(
        'should emit [loading, empty] when data is fetched but list is empty',
        build: () {
          when(repository.getRockets()).thenAnswer(
            (_) async => [],
          );
          return bloc;
        },
        act: (bloc) => bloc.add(const RocketsEvent.load()),
        expect: () => [
          const RocketsState.loading(),
          const RocketsState.empty(),
        ],
        verify: (_) => verify(repository.getRockets()).called(1),
      );

      blocTest<RocketsBloc, RocketsState>(
        'should emit [loading, error] when an exception is thrown',
        build: () {
          when(repository.getRockets()).thenThrow(
            Exception('something went wrong'),
          );
          return bloc;
        },
        act: (bloc) => bloc.add(const RocketsEvent.load()),
        expect: () => [
          const RocketsState.loading(),
          const RocketsState.error(),
        ],
        verify: (_) => verify(repository.getRockets()).called(1),
      );
    });
  });
}

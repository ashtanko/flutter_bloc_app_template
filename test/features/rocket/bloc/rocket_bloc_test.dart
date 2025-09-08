import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_bloc_app_template/features/rocket/bloc/rocket_bloc.dart';
import 'package:flutter_bloc_app_template/repository/rocket_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../mocks.mocks.dart';
import '../../../repository/rocket_repository_test.dart';

void main() {
  group('RocketBloc', () {
    final rocketId = 'falcon1';
    late RocketRepository repository;
    late RocketBloc bloc;

    setUp(() {
      repository = MockRocketRepository();
      bloc = RocketBloc(repository);
    });

    tearDown(() => bloc.close());

    test('should return RocketLoadingState initially', () {
      expect(bloc.state, const RocketLoadingState());
    });

    group('fetchData', () {
      blocTest<RocketBloc, RocketState>(
        'should emit [loading, success] when data is fetched successfully',
        build: () {
          when(repository.getRocket(rocketId)).thenAnswer(
            (_) async => mockRocket,
          );
          return bloc;
        },
        act: (bloc) => bloc.add(RocketLoadEvent(rocketId: rocketId)),
        expect: () => [
          const RocketState.loading(),
          RocketState.success(rocket: mockRocket),
        ],
        verify: (_) => verify(repository.getRocket(rocketId)).called(1),
      );

      blocTest<RocketBloc, RocketState>(
        'should emit [loading, error] when an exception is thrown',
        build: () {
          when(repository.getRocket(rocketId)).thenThrow(
            Exception('something went wrong'),
          );
          return bloc;
        },
        act: (bloc) => bloc.add(RocketLoadEvent(rocketId: rocketId)),
        expect: () => [
          const RocketState.loading(),
          const RocketState.error(),
        ],
        verify: (_) => verify(repository.getRocket(rocketId)).called(1),
      );
    });
  });
}

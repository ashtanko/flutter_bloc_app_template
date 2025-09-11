import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_bloc_app_template/features/roadster/bloc/roadster_bloc.dart';
import 'package:flutter_bloc_app_template/repository/roadster_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../mocks.mocks.dart';
import '../../../repository/roadster_repository_test.dart';

void main() {
  group('RoadsterBloc', () {
    late RoadsterRepository repository;
    late RoadsterBloc bloc;

    setUp(() {
      repository = MockRoadsterRepository();
      bloc = RoadsterBloc(repository);
    });

    tearDown(() => bloc.close());

    test('should return RoadsterLoadingState initially', () {
      expect(bloc.state, const RoadsterLoadingState());
    });

    group('fetchData', () {
      blocTest<RoadsterBloc, RoadsterState>(
        'should emit [loading, success] when data is fetched successfully',
        build: () {
          when(repository.getRoadster()).thenAnswer(
            (_) async => mockRoadsterResource,
          );
          return bloc;
        },
        act: (bloc) => bloc.add(const RoadsterLoadEvent()),
        expect: () => [
          const RoadsterState.loading(),
          RoadsterState.success(roadster: mockRoadsterResource),
        ],
        verify: (_) => verify(repository.getRoadster()).called(1),
      );

      blocTest<RoadsterBloc, RoadsterState>(
        'should emit [loading, error] when an exception is thrown',
        build: () {
          when(repository.getRoadster()).thenThrow(
            Exception('something went wrong'),
          );
          return bloc;
        },
        act: (bloc) => bloc.add(const RoadsterLoadEvent()),
        expect: () => [
          const RoadsterState.loading(),
          const RoadsterState.error(),
        ],
        verify: (_) => verify(repository.getRoadster()).called(1),
      );
    });
  });
}

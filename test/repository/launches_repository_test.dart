import 'package:flutter_bloc_app_template/models/launch.dart';
import 'package:flutter_bloc_app_template/repository/launches_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../mocks.mocks.dart';

void main() {
  group('Launches Repository Tests', () {
    late LaunchesRepository repository;

    setUp(() {
      repository = MockLaunchesRepository();
    });

    group('loadData', () {
      test('returns list of launch', () {
        when(repository.getLaunches())
            .thenAnswer((_) => Future.value(mockLaunches));
        expect(
          repository.getLaunches(),
          completion(equals(mockLaunches)),
        );
      });

      test('returns empty list', () {
        when(repository.getLaunches()).thenAnswer((_) => Future.value([]));
        expect(
          repository.getLaunches(),
          completion(equals([])),
        );
      });
    });
  });
}

final mockLaunches = [
  const LaunchResource(
    id: '1',
  ),
  const LaunchResource(
    id: '2',
  ),
];

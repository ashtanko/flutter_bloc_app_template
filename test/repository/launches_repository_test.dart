import 'package:flutter_bloc_app_template/index.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../mocks.mocks.dart';

void main() {
  group('Launches Repository Tests', () {
    late LaunchesRepository repository;

    setUp(() {
      repository = MockLaunchesRepository();
    });

    group('getLaunches', () {
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
      test('returns error', () {
        when(repository.getLaunches()).thenAnswer((_) => Future.error(Error()));

        expect(
          repository.getLaunches(),
          throwsA(isA<Error>()),
        );
      });
    });

    group('getLaunch', () {
      final flightNumber = 1;
      test('returns full launch', () {
        when(repository.getLaunch(flightNumber))
            .thenAnswer((_) => Future.value(mockFullLaunch));
        expect(
          repository.getLaunch(flightNumber),
          completion(equals(mockFullLaunch)),
        );
      });

      test('returns error', () {
        when(repository.getLaunch(flightNumber))
            .thenAnswer((_) => Future.error(Error()));

        expect(
          repository.getLaunch(flightNumber),
          throwsA(isA<Error>()),
        );
      });
    });
  });
}

final mockLaunches = [
  const LaunchResource(
    id: '1',
    flightNumber: 1,
    missionName: 'Mission 1',
    launchDays: Since(
      '2021-10-01T00:00:00Z',
    ),
    launchTime: '00:00',
    rocket: RocketResource(
      rocketName: 'Rocket 1',
      rocketType: 'Type 1',
    ),
    launchSuccess: true,
  ),
  const LaunchResource(
    id: '2',
    flightNumber: 2,
    missionName: 'Mission 1',
    launchDays: Since(
      '2021-10-01T00:00:00Z',
    ),
    launchTime: '00:00',
    rocket: RocketResource(
      rocketName: 'Rocket 1',
      rocketType: 'Type 1',
    ),
    launchSuccess: true,
  ),
];

final mockFullLaunch = const LaunchFullResource(
  id: '1',
  flightNumber: 1,
  missionName: 'Mission 1',
  launchDays: Since(
    '2021-10-01T00:00:00Z',
  ),
  launchTime: '00:00',
  rocket: RocketResource(
    rocketName: 'Rocket 1',
    rocketType: 'Type 1',
  ),
  launchSuccess: true,
);

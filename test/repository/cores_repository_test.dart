import 'package:flutter_bloc_app_template/models/core/core_resource.dart';
import 'package:flutter_bloc_app_template/repository/cores_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../mocks.mocks.dart';

void main() {
  group('Cores Repository Tests', () {
    late CoresRepository repository;

    setUp(() {
      repository = MockCoresRepository();
    });

    group('getCores', () {
      test('returns list of core', () {
        when(repository.getCores()).thenAnswer((_) => Future.value(mockCores));
        expect(
          repository.getCores(),
          completion(equals(mockCores)),
        );
      });

      test('returns empty list', () {
        when(repository.getCores()).thenAnswer((_) => Future.value([]));
        expect(
          repository.getCores(),
          completion(equals([])),
        );
      });
      test('returns error', () {
        when(repository.getCores()).thenAnswer((_) => Future.error(Error()));

        expect(
          repository.getCores(),
          throwsA(isA<Error>()),
        );
      });
    });

    group('getCore', () {
      final coreSerial = 'Merlin2A';
      test('returns full core', () {
        when(repository.getCore(coreSerial))
            .thenAnswer((_) => Future.value(mockCoreActive));
        expect(
          repository.getCore(coreSerial),
          completion(equals(mockCoreActive)),
        );
      });

      test('returns error', () {
        when(repository.getCore(coreSerial))
            .thenAnswer((_) => Future.error(Error()));

        expect(
          repository.getCore(coreSerial),
          throwsA(isA<Error>()),
        );
      });
    });
  });
}

/// Mock MissionResource instances
const mockMissionRatSat = MissionResource(
  name: 'RatSat',
  flight: 4,
);

const mockMissionTestSat = MissionResource(
  name: 'TestSat',
  flight: 5,
);

/// Mock CoreResource instances
const mockCoreLost = CoreResource(
  coreSerial: 'Merlin2C',
  block: 1,
  status: 'lost',
  originalLaunch: '2008-09-28T23:15:00.000Z',
  originalLaunchUnix: 1222643700,
  missions: [mockMissionRatSat],
  reuseCount: 0,
  rtlsAttempts: 0,
  rtlsLandings: 0,
  asdsAttempts: 0,
  asdsLandings: 0,
  waterLanding: false,
  details: 'Initially scheduled for 23–25 Sep, carried dummy payload – mass '
      'simulator, 165 kg (originally intended to be RazakSAT.',
);

const mockCoreActive = CoreResource(
  coreSerial: 'MerlinX1',
  block: 2,
  status: 'active',
  originalLaunch: '2010-06-04T18:45:00.000Z',
  originalLaunchUnix: 1275677100,
  missions: [mockMissionTestSat],
  reuseCount: 1,
  rtlsAttempts: 1,
  rtlsLandings: 1,
  asdsAttempts: 0,
  asdsLandings: 0,
  waterLanding: false,
  details: 'Successfully launched a test satellite.',
);

/// A list of multiple mock cores (for collections tests)
const mockCores = [
  mockCoreLost,
  mockCoreActive,
];

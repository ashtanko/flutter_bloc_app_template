import 'package:flutter_bloc_app_template/models/roadster/roadster_resource.dart';
import 'package:flutter_bloc_app_template/repository/roadster_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../mocks.mocks.dart';

void main() {
  group('Roadster Repository Tests', () {
    late RoadsterRepository repository;

    setUp(() {
      repository = MockRoadsterRepository();
    });

    group('getRoadster', () {
      test('returns roadster', () {
        when(repository.getRoadster())
            .thenAnswer((_) => Future.value(mockRoadsterResource));
        expect(
          repository.getRoadster(),
          completion(equals(mockRoadsterResource)),
        );
      });
      test('returns error', () {
        when(repository.getRoadster()).thenAnswer((_) => Future.error(Error()));

        expect(
          repository.getRoadster(),
          throwsA(isA<Error>()),
        );
      });
    });
  });
}

final mockRoadsterResource = const RoadsterResource(
  name: "Elon Musk's Tesla Roadster",
  launchDateUtc: '2018-02-06T20:45:00.000Z',
  launchDateUnix: 1517949900,
  launchMassKg: 1350,
  launchMassLbs: 2976,
  noradId: 43205,
  epochJd: 2459914.263888889,
  orbitType: 'heliocentric',
  apoapsisAu: 1.664332332453025,
  periapsisAu: 0.986015924224046,
  semiMajorAxisAu: 57.70686413577451,
  eccentricity: 0.2559348215918733,
  inclination: 1.075052357364693,
  longitude: 316.9112133411523,
  periapsisArg: 177.75981116285,
  periodDays: 557.1958197697352,
  speedKph: 9520.88362029108,
  speedMph: 5916.000976023889,
  earthDistanceKm: 320593735.82924163,
  earthDistanceMi: 199207650.2259517,
  marsDistanceKm: 395640511.90355814,
  marsDistanceMi: 245839540.52202582,
  flickrImages: [
    'https://farm5.staticflickr.com/4615/40143096241_11128929df_b.jpg',
    'https://farm5.staticflickr.com/4702/40110298232_91b32d0cc0_b.jpg',
    'https://farm5.staticflickr.com/4676/40110297852_5e794b3258_b.jpg',
    'https://farm5.staticflickr.com/4745/40110304192_6e3e9a7a1b_b.jpg'
  ],
  wikipedia: 'https://en.wikipedia.org/wiki/Elon_Musk%27s_Tesla_Roadster',
  video: 'https://youtu.be/wbSwFU6tY1c',
  details: "Elon Musk's Tesla Roadster is an electric sports car that served as"
      ' the dummy payload for the February 2018 Falcon Heavy test flight'
      ' and is now an artificial satellite of the Sun.',
  id: '5eb75f0842fea42237d7f3f4',
);

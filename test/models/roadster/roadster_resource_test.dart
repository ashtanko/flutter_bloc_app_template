import 'package:flutter_bloc_app_template/models/roadster/roadster_resource.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('RoadsterResource', () {
    test('can be instantiated with all fields', () {
      final resource = const RoadsterResource(
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
          'url1',
          'url2',
        ],
        wikipedia: 'https://en.wikipedia.org/wiki/Elon_Musk%27s_Tesla_Roadster',
        video: 'https://youtu.be/wbSwFU6tY1c',
        details: 'Some details about Roadster',
        id: '5eb75f0842fea42237d7f3f4',
      );

      expect(resource.name, "Elon Musk's Tesla Roadster");
      expect(resource.launchMassKg, 1350);
      expect(resource.flickrImages?.length, 2);
    });

    test('supports equality', () {
      final r1 = const RoadsterResource(name: 'Roadster', launchMassKg: 1350);
      final r2 = const RoadsterResource(name: 'Roadster', launchMassKg: 1350);
      final r3 = const RoadsterResource(name: 'Roadster', launchMassKg: 1400);

      expect(r1, r2); // same values -> equal
      expect(r1 == r3, false); // different launchMassKg -> not equal
    });

    test('handles null values', () {
      final resource = const RoadsterResource();

      expect(resource.name, isNull);
      expect(resource.launchMassKg, isNull);
      expect(resource.flickrImages, isNull);
    });
  });
}

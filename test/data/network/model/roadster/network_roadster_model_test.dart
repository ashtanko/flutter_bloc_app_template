import 'package:flutter_bloc_app_template/data/network/model/roadster/network_roadster_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final json = {
    'name': "Elon Musk's Tesla Roadster",
    'launch_date_utc': '2018-02-06T20:45:00.000Z',
    'launch_date_unix': 1517949900,
    'launch_mass_kg': 1350,
    'launch_mass_lbs': 2976,
    'norad_id': 43205,
    'epoch_jd': 2459914.263888889,
    'orbit_type': 'heliocentric',
    'apoapsis_au': 1.664332332453025,
    'periapsis_au': 0.986015924224046,
    'semi_major_axis_au': 57.70686413577451,
    'eccentricity': 0.2559348215918733,
    'inclination': 1.075052357364693,
    'longitude': 316.9112133411523,
    'periapsis_arg': 177.75981116285,
    'period_days': 557.1958197697352,
    'speed_kph': 9520.88362029108,
    'speed_mph': 5916.000976023889,
    'earth_distance_km': 320593735.82924163,
    'earth_distance_mi': 199207650.2259517,
    'mars_distance_km': 395640511.90355814,
    'mars_distance_mi': 245839540.52202582,
    'flickr_images': [
      'https://farm5.staticflickr.com/4615/40143096241_11128929df_b.jpg',
      'https://farm5.staticflickr.com/4702/40110298232_91b32d0cc0_b.jpg',
      'https://farm5.staticflickr.com/4676/40110297852_5e794b3258_b.jpg',
      'https://farm5.staticflickr.com/4745/40110304192_6e3e9a7a1b_b.jpg'
    ],
    'wikipedia': 'https://en.wikipedia.org/wiki/Elon_Musk%27s_Tesla_Roadster',
    'video': 'https://youtu.be/wbSwFU6tY1c',
    'details':
        "Elon Musk's Tesla Roadster is an electric sports car that served as"
            ' the dummy payload for the February 2018 Falcon Heavy test'
            ' flight and is now an artificial satellite of the Sun.'
            ' Starman, a mannequin dressed in a spacesuit, occupies '
            "the driver's seat. The car and rocket are products of Tesla"
            ' and SpaceX. This 2008-model Roadster was previously used by'
            ' Musk for commuting, and is the only consumer car sent into'
            ' space.',
    'id': '5eb75f0842fea42237d7f3f4'
  };

  group('NetworkRoadsterModel', () {
    test('can be instantiated', () {
      final model = const NetworkRoadsterModel(
        name: 'Roadster',
        launchDateUtc: '2018-02-06T20:45:00.000Z',
        launchMassKg: 1350,
      );

      expect(model.name, 'Roadster');
      expect(model.launchDateUtc, '2018-02-06T20:45:00.000Z');
      expect(model.launchMassKg, 1350);
      expect(model.launchMassLbs, isNull);
    });

    test('supports equality and copyWith', () {
      final model =
          const NetworkRoadsterModel(name: 'Roadster', launchMassKg: 1350);
      final copy = model.copyWith(launchMassKg: 1400);

      expect(copy.name, model.name);
      expect(copy.launchMassKg, 1400);
      expect(model != copy, true); // Original and copy are different
    });

    test('can be serialized to JSON', () {
      final model = const NetworkRoadsterModel(
        name: 'Roadster',
        launchDateUtc: '2018-02-06T20:45:00.000Z',
        launchMassKg: 1350,
        flickrImages: ['url1', 'url2'],
      );

      final json = model.toJson();

      expect(json['name'], 'Roadster');
      expect(json['launch_date_utc'], '2018-02-06T20:45:00.000Z');
      expect(json['launch_mass_kg'], 1350);
      expect(json['flickr_images'], ['url1', 'url2']);
    });

    test('can be deserialized from JSON', () {
      final json = {
        'name': 'Roadster',
        'launch_date_utc': '2018-02-06T20:45:00.000Z',
        'launch_mass_kg': 1350,
        'flickr_images': ['url1', 'url2'],
      };

      final model = NetworkRoadsterModel.fromJson(json);

      expect(model.name, 'Roadster');
      expect(model.launchDateUtc, '2018-02-06T20:45:00.000Z');
      expect(model.launchMassKg, 1350);
      expect(model.flickrImages, ['url1', 'url2']);
    });

    test('handles null values', () {
      final model = const NetworkRoadsterModel();

      expect(model.name, isNull);
      expect(model.launchMassKg, isNull);
      expect(model.flickrImages, isNull);
    });

    test('fromJson parses correctly', () {
      final model = NetworkRoadsterModel.fromJson(json);

      expect(model.name, "Elon Musk's Tesla Roadster");
      expect(model.launchDateUtc, '2018-02-06T20:45:00.000Z');
      expect(model.launchDateUnix, 1517949900);
      expect(model.launchMassKg, 1350);
      expect(model.launchMassLbs, 2976);
      expect(model.noradId, 43205);
      expect(model.epochJd, 2459914.263888889);
      expect(model.orbitType, 'heliocentric');
      expect(model.apoapsisAu, 1.664332332453025);
      expect(model.periapsisAu, 0.986015924224046);
      expect(model.semiMajorAxisAu, 57.70686413577451);
      expect(model.eccentricity, 0.2559348215918733);
      expect(model.inclination, 1.075052357364693);
      expect(model.longitude, 316.9112133411523);
      expect(model.periapsisArg, 177.75981116285);
      expect(model.periodDays, 557.1958197697352);
      expect(model.speedKph, 9520.88362029108);
      expect(model.speedMph, 5916.000976023889);
      expect(model.earthDistanceKm, 320593735.82924163);
      expect(model.earthDistanceMi, 199207650.2259517);
      expect(model.marsDistanceKm, 395640511.90355814);
      expect(model.marsDistanceMi, 245839540.52202582);
      expect(model.flickrImages?.length, 4);
      expect(model.wikipedia,
          'https://en.wikipedia.org/wiki/Elon_Musk%27s_Tesla_Roadster');
      expect(model.video, 'https://youtu.be/wbSwFU6tY1c');
      expect(model.details, contains("Elon Musk's Tesla Roadster"));
      expect(model.id, '5eb75f0842fea42237d7f3f4');
    });

    test('toJson outputs correct JSON', () {
      final model = NetworkRoadsterModel.fromJson(json);
      final output = model.toJson();

      expect(output['name'], json['name']);
      expect(output['launch_date_utc'], json['launch_date_utc']);
      expect(output['launch_mass_kg'], json['launch_mass_kg']);
      expect(output['flickr_images'], json['flickr_images']);
      expect(output['id'], json['id']);
    });
  });
}

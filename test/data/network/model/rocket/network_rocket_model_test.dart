import 'package:flutter_bloc_app_template/data/network/model/rocket/network_rocket_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('NetworkRocketModel', () {
    const rocketJson = {
      '_id': '596fc66ce7334430c2fcba1d',
      'id': 1,
      'active': false,
      'stages': 2,
      'boosters': 0,
      'cost_per_launch': 6700000,
      'success_rate_pct': 40,
      'first_flight': '2006-03-24',
      'country': 'Republic of the Marshall Islands',
      'company': 'SpaceX',
      'height': {'meters': 22.25, 'feet': 73},
      'diameter': {'meters': 1.68, 'feet': 5.5},
      'mass': {'kg': 30146, 'lb': 66460},
      'payload_weights': [
        {'id': 'leo', 'name': 'Low Earth Orbit', 'kg': 450, 'lb': 992}
      ],
      'first_stage': {
        'reusable': false,
        'engines': 1,
        'fuel_amount_tons': 44.3,
        'burn_time_sec': 169,
        'thrust_sea_level': {'kN': 420, 'lbf': 94000},
        'thrust_vacuum': {'kN': 480, 'lbf': 110000}
      },
      'second_stage': {
        'reusable': false,
        'engines': 1,
        'fuel_amount_tons': 3.38,
        'burn_time_sec': 378,
        'thrust': {'kN': 31, 'lbf': 7000},
        'payloads': {
          'option_1': 'composite fairing',
          'composite_fairing': {
            'height': {'meters': 3.5, 'feet': 11.5},
            'diameter': {'meters': 1.5, 'feet': 4.9}
          }
        }
      },
      'engines': {
        'number': 1,
        'type': 'merlin',
        'version': '1C',
        'layout': 'single',
        'isp': {'sea_level': 267, 'vacuum': 304},
        'engine_loss_max': 0,
        'propellant_1': 'liquid oxygen',
        'propellant_2': 'RP-1 kerosene',
        'thrust_sea_level': {'kN': 420, 'lbf': 94000},
        'thrust_vacuum': {'kN': 480, 'lbf': 110000},
        'thrust_to_weight': 96
      },
      'landing_legs': {'number': 0, 'material': null},
      'flickr_images': [
        'https://imgur.com/DaCfMsj.jpg',
        'https://imgur.com/azYafd8.jpg'
      ],
      'wikipedia': 'https://en.wikipedia.org/wiki/Falcon_1',
      'description':
          'The Falcon 1 was an expendable launch system privately developed '
              'and manufactured by SpaceX during 2006-2009. On 28 September '
              '2008, Falcon 1 became the first privately-developed liquid-fuel'
              ' launch vehicle to go into orbit around the Earth.',
      'rocket_id': 'falcon1',
      'rocket_name': 'Falcon 1',
      'rocket_type': 'rocket'
    };

    test('should deserialize from JSON', () {
      final model = NetworkRocketModel.fromJson(rocketJson);

      expect(model.rocketId, 'falcon1');
      expect(model.name, 'Falcon 1');
      expect(model.type, 'rocket');
      expect(model.company, 'SpaceX');
      expect(model.active, isFalse);
      expect(model.height?.meters, 22.25);
      expect(model.mass?.kg, 30146);
      expect(model.payloadWeights?.first.id, 'leo');
      expect(model.engines?.isp?.vacuum, 304);
      expect(model.engines?.thrustSeaLevel?.kN, 420);
      expect(model.landingLegs?.number, 0);
      expect(model.flickrImages, contains('https://imgur.com/DaCfMsj.jpg'));
    });

    test('should serialize to JSON', () {
      final model = NetworkRocketModel.fromJson(rocketJson);

      final json = model.toJson();

      expect(json['rocket_id'], 'falcon1');
      expect(json['rocket_name'], 'Falcon 1');
      expect(json['rocket_type'], 'rocket');
      expect((json['engines'] as NetworkEngines).number, 1);
      expect((json['mass'] as NetworkMass).kg, 30146);
    });

    test('should support equality', () {
      final model1 = NetworkRocketModel.fromJson(rocketJson);
      final model2 = NetworkRocketModel.fromJson(rocketJson);

      expect(model1, equals(model2));
      expect(model1.hashCode, model2.hashCode);
    });

    test('should copyWith and override fields', () {
      final model = NetworkRocketModel.fromJson(rocketJson);

      final updated = model.copyWith(
        company: 'NASA',
        active: true,
      );

      expect(updated.company, 'NASA');
      expect(updated.active, true);
      expect(updated.rocketId, model.rocketId); // unchanged
    });
  });

  group('NetworkDimension', () {
    test('can be instantiated and has correct values', () {
      const dim = NetworkDimension(meters: 10.0, feet: 32.8);

      expect(dim.meters, 10.0);
      expect(dim.feet, 32.8);
    });

    test('can be serialized to/from JSON', () {
      final dim = const NetworkDimension(meters: 10.0, feet: 32.8);
      final json = dim.toJson();
      final fromJson = NetworkDimension.fromJson(json);

      expect(fromJson, dim);
    });
  });

  group('NetworkMass', () {
    test('can be instantiated and has correct values', () {
      const mass = NetworkMass(kg: 500, lb: 1102);

      expect(mass.kg, 500);
      expect(mass.lb, 1102);
    });

    test('can be serialized to/from JSON', () {
      final mass = const NetworkMass(kg: 500, lb: 1102);
      final json = mass.toJson();
      final fromJson = NetworkMass.fromJson(json);

      expect(fromJson, mass);
    });
  });

  group('NetworkPayloadWeight', () {
    test('can be instantiated and has correct values', () {
      const payload = NetworkPayloadWeight(
        id: 'p1',
        name: 'Satellite',
        kg: 500,
        lb: 1102,
      );

      expect(payload.id, 'p1');
      expect(payload.name, 'Satellite');
      expect(payload.kg, 500);
      expect(payload.lb, 1102);
    });

    test('can be serialized to/from JSON', () {
      final payload = const NetworkPayloadWeight(
        id: 'p1',
        name: 'Satellite',
        kg: 500,
        lb: 1102,
      );
      final json = payload.toJson();
      final fromJson = NetworkPayloadWeight.fromJson(json);

      expect(fromJson, payload);
    });
  });

  group('NetworkIsp', () {
    test('can be instantiated and has correct values', () {
      const isp = NetworkIsp(seaLevel: 300, vacuum: 350);

      expect(isp.seaLevel, 300);
      expect(isp.vacuum, 350);
    });

    test('can be serialized to/from JSON', () {
      final isp = const NetworkIsp(seaLevel: 300, vacuum: 350);
      final json = isp.toJson();
      final fromJson = NetworkIsp.fromJson(json);

      expect(fromJson, isp);
    });
  });

  group('NetworkThrust', () {
    test('can be instantiated and has correct values', () {
      const thrust = NetworkThrust(kN: 760.0, lbf: 170000);

      expect(thrust.kN, 760.0);
      expect(thrust.lbf, 170000);
    });

    test('can be serialized to/from JSON', () {
      final thrust = const NetworkThrust(kN: 760.0, lbf: 170000);
      final json = thrust.toJson();
      final fromJson = NetworkThrust.fromJson(json);

      expect(fromJson, thrust);
    });
  });

  group('NetworkEngines', () {
    test('can be instantiated and has correct values', () {
      const engines = NetworkEngines(
        number: 9,
        type: 'merlin',
        version: '1D+',
        layout: 'octaweb',
        isp: NetworkIsp(seaLevel: 300, vacuum: 350),
        engineLossMax: 2,
        propellant1: 'RP-1',
        propellant2: 'LOX',
        thrustSeaLevel: NetworkThrust(kN: 500, lbf: 112404),
        thrustVacuum: NetworkThrust(kN: 550, lbf: 123556),
        thrustToWeight: 180,
      );

      expect(engines.number, 9);
      expect(engines.type, 'merlin');
      expect(engines.version, '1D+');
      expect(engines.layout, 'octaweb');
      expect(engines.isp, const NetworkIsp(seaLevel: 300, vacuum: 350));
      expect(engines.engineLossMax, 2);
      expect(engines.propellant1, 'RP-1');
      expect(engines.propellant2, 'LOX');
      expect(engines.thrustSeaLevel, const NetworkThrust(kN: 500, lbf: 112404));
      expect(engines.thrustVacuum, const NetworkThrust(kN: 550, lbf: 123556));
      expect(engines.thrustToWeight, 180);
    });
  });

  group('NetworkLandingLegs', () {
    test('can be instantiated and has correct values', () {
      const legs = NetworkLandingLegs(number: 4, material: 'carbon fiber');

      expect(legs.number, 4);
      expect(legs.material, 'carbon fiber');
    });

    test('can be serialized to/from JSON', () {
      final legs =
          const NetworkLandingLegs(number: 4, material: 'carbon fiber');
      final json = legs.toJson();
      final fromJson = NetworkLandingLegs.fromJson(json);

      expect(fromJson, legs);
    });
  });
}

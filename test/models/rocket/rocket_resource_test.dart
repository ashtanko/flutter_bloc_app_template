import 'package:flutter_bloc_app_template/models/rocket/rocket.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('RocketResource', () {
    const height = DimensionResource(meters: 70, feet: 229.6);
    const diameter = DimensionResource(meters: 3.7, feet: 12);
    const mass = MassResource(kg: 549054, lb: 1207920);
    const payloadWeight =
        PayloadWeightResource(id: 'leo', name: 'LEO', kg: 22800, lb: 50265);

    const engines = EnginesResource(
      number: 9,
      type: 'merlin',
      version: '1D',
      layout: 'octaweb',
      isp: IspResource(seaLevel: 282, vacuum: 311),
      engineLossMax: 2,
      propellant1: 'liquid oxygen',
      propellant2: 'RP-1 kerosene',
      thrustSeaLevel: ThrustResource(kN: 7607, lbf: 1710000),
      thrustVacuum: ThrustResource(kN: 8227, lbf: 1849500),
      thrustToWeight: 180,
    );

    const landingLegs =
        LandingLegsResource(number: 4, material: 'carbon fiber');

    const firstStage = RocketFirstStageResource(
      engines: 9,
      reusable: true,
      fuelAmountTons: 385,
      burnTimeSec: 162,
    );

    const secondStage = RocketSecondStageResource(
      engines: 1,
      reusable: false,
      fuelAmountTons: 90,
      burnTimeSec: 397,
    );

    const rocket1 = RocketResource(
      id: 1,
      active: true,
      stages: 2,
      boosters: 0,
      costPerLaunch: 50000000,
      successRatePct: 97,
      firstFlight: '2010-06-04',
      country: 'USA',
      company: 'SpaceX',
      height: height,
      diameter: diameter,
      mass: mass,
      payloadWeights: [payloadWeight],
      firstStage: firstStage,
      secondStage: secondStage,
      engines: engines,
      landingLegs: landingLegs,
      flickrImages: ['https://imgur.com/azYafd8.jpg'],
      wikipedia: 'https://en.wikipedia.org/wiki/Falcon_9',
      description: 'Falcon 9 is a two-stage rocket designed by SpaceX.',
      rocketId: 'falcon9',
      rocketName: 'Falcon 9',
      rocketType: 'FT',
    );

    const rocket2 = RocketResource(
      id: 1,
      active: true,
      stages: 2,
      boosters: 0,
      costPerLaunch: 50000000,
      successRatePct: 97,
      firstFlight: '2010-06-04',
      country: 'USA',
      company: 'SpaceX',
      height: height,
      diameter: diameter,
      mass: mass,
      payloadWeights: [payloadWeight],
      firstStage: firstStage,
      secondStage: secondStage,
      engines: engines,
      landingLegs: landingLegs,
      flickrImages: ['https://imgur.com/azYafd8.jpg'],
      wikipedia: 'https://en.wikipedia.org/wiki/Falcon_9',
      description: 'Falcon 9 is a two-stage rocket designed by SpaceX.',
      rocketId: 'falcon9',
      rocketName: 'Falcon 9',
      rocketType: 'FT',
    );

    const rocketDifferent = RocketResource(
      id: 2,
      rocketName: 'Falcon Heavy',
      rocketType: 'Heavy',
    );

    test('supports value equality', () {
      expect(rocket1, equals(rocket2));
      expect(rocket1.hashCode, rocket2.hashCode);
    });

    test('detects inequality when fields differ', () {
      expect(rocket1, isNot(equals(rocketDifferent)));
    });

    test('props should include all fields', () {
      expect(
        rocket1.props,
        equals([
          1,
          true,
          2,
          0,
          50000000,
          97,
          '2010-06-04',
          'USA',
          'SpaceX',
          height,
          diameter,
          mass,
          [payloadWeight],
          firstStage,
          secondStage,
          engines,
          landingLegs,
          ['https://imgur.com/azYafd8.jpg'],
          'https://en.wikipedia.org/wiki/Falcon_9',
          'Falcon 9 is a two-stage rocket designed by SpaceX.',
          'falcon9',
          'Falcon 9',
          'FT',
        ]),
      );
    });

    test('supports deep equality on nested lists', () {
      const rocket3 = RocketResource(
        id: 1,
        rocketName: 'Falcon 9',
        rocketType: 'FT',
        payloadWeights: [
          PayloadWeightResource(id: 'leo', name: 'LEO', kg: 22800, lb: 50265),
        ],
        flickrImages: ['https://imgur.com/azYafd8.jpg'],
      );
      expect(rocket1.payloadWeights, equals(rocket3.payloadWeights));
      expect(rocket1.flickrImages, equals(rocket3.flickrImages));
    });

    test('handles null optional fields', () {
      const nullRocket = RocketResource();
      expect(
        nullRocket.props,
        equals([
          null, // id
          null, // active
          null, // stages
          null, // boosters
          null, // costPerLaunch
          null, // successRatePct
          null, // firstFlight
          null, // country
          null, // company
          null, // height
          null, // diameter
          null, // mass
          null, // payloadWeights
          null, // firstStage
          null, // secondStage
          null, // engines
          null, // landingLegs
          null, // flickrImages
          null, // wikipedia
          null, // description
          null, // rocketId
          null, // rocketName
          null, // rocketType
        ]),
      );
    });
  });
}

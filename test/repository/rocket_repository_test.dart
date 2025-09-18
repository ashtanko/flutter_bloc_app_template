import 'package:flutter_bloc_app_template/index.dart';
import 'package:flutter_bloc_app_template/models/rocket/dimension_resource.dart';
import 'package:flutter_bloc_app_template/models/rocket/engines_resource.dart';
import 'package:flutter_bloc_app_template/models/rocket/isp_resource.dart';
import 'package:flutter_bloc_app_template/models/rocket/landing_legs_resource.dart';
import 'package:flutter_bloc_app_template/models/rocket/mass_resource.dart';
import 'package:flutter_bloc_app_template/models/rocket/payload_weight_resource.dart';
import 'package:flutter_bloc_app_template/models/rocket/rocket_first_stage_resource.dart';
import 'package:flutter_bloc_app_template/models/rocket/rocket_second_stage_resource.dart';
import 'package:flutter_bloc_app_template/models/rocket/thrust_resource.dart';
import 'package:flutter_bloc_app_template/repository/rocket_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../mocks.mocks.dart';

void main() {
  group('Rocket Repository Tests', () {
    late RocketRepository repository;

    setUp(() {
      repository = MockRocketRepository();
    });

    group('getRockets', () {
      test('returns list of rocket', () {
        when(repository.getRockets())
            .thenAnswer((_) => Future.value(mockRockets));
        expect(
          repository.getRockets(),
          completion(equals(mockRockets)),
        );
      });

      test('returns empty list', () {
        when(repository.getRockets()).thenAnswer((_) => Future.value([]));
        expect(
          repository.getRockets(),
          completion(equals([])),
        );
      });
      test('returns error', () {
        when(repository.getRockets()).thenAnswer((_) => Future.error(Error()));

        expect(
          repository.getRockets(),
          throwsA(isA<Error>()),
        );
      });
    });

    group('getRocket', () {
      final rocketId = 'falcon1';
      test('returns full rocket', () {
        when(repository.getRocket(rocketId))
            .thenAnswer((_) => Future.value(mockRocket));
        expect(
          repository.getRocket(rocketId),
          completion(equals(mockRocket)),
        );
      });

      test('returns error', () {
        when(repository.getRocket(rocketId))
            .thenAnswer((_) => Future.error(Error()));

        expect(
          repository.getRocket(rocketId),
          throwsA(isA<Error>()),
        );
      });
    });
  });
}

final mockRockets = [getRocketResource()];

RocketResource getRocketResource() {
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

  const landingLegs = LandingLegsResource(number: 4, material: 'carbon fiber');

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

  return const RocketResource(
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
    flickrImages: ['https://farm9.staticflickr.com/8638/16855192031_962f7b1113_o.jpg'],
    wikipedia: 'https://en.wikipedia.org/wiki/Falcon_9',
    description: 'Falcon 9 is a two-stage rocket designed by SpaceX.',
    rocketId: 'falcon9',
    rocketName: 'Falcon 9',
    rocketType: 'FT',
  );
}

final mockRocket = getRocketResource();

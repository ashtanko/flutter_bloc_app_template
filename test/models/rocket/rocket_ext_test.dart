import 'package:flutter_bloc_app_template/data/network/model/rocket/network_rocket_model.dart';
import 'package:flutter_bloc_app_template/models/rocket/rocket_ext.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Network model to Resource extensions', () {
    test('NetworkDimension -> DimensionResource', () {
      const network = NetworkDimension(meters: 10.0, feet: 32.8);
      final resource = network.toResource();

      expect(resource.meters, 10.0);
      expect(resource.feet, 32.8);
    });

    test('NetworkMass -> MassResource', () {
      const network = NetworkMass(kg: 500, lb: 1102);
      final resource = network.toResource();

      expect(resource.kg, 500);
      expect(resource.lb, 1102);
    });

    test('NetworkPayloadWeight -> PayloadWeightResource', () {
      const network = NetworkPayloadWeight(
        id: 'payload1',
        name: 'Satellite',
        kg: 500,
        lb: 1102,
      );
      final resource = network.toResource();

      expect(resource.id, 'payload1');
      expect(resource.name, 'Satellite');
      expect(resource.kg, 500);
      expect(resource.lb, 1102);
    });

    test('NetworkIsp -> IspResource', () {
      const network = NetworkIsp(seaLevel: 300, vacuum: 350);
      final resource = network.toResource();

      expect(resource.seaLevel, 300);
      expect(resource.vacuum, 350);
    });

    test('NetworkThrust -> ThrustResource', () {
      const network = NetworkThrust(kN: 760.0, lbf: 170000);
      final resource = network.toResource();

      expect(resource.kN, 760.0);
      expect(resource.lbf, 170000);
    });

    test('NetworkEngines -> EnginesResource', () {
      const isp = NetworkIsp(seaLevel: 300, vacuum: 350);
      const thrustSea = NetworkThrust(kN: 500.0, lbf: 112404);
      const thrustVac = NetworkThrust(kN: 550.0, lbf: 123556);

      const network = NetworkEngines(
        number: 9,
        type: 'merlin',
        version: '1D+',
        layout: 'octaweb',
        isp: isp,
        engineLossMax: 2,
        propellant1: 'RP-1',
        propellant2: 'LOX',
        thrustSeaLevel: thrustSea,
        thrustVacuum: thrustVac,
        thrustToWeight: 180,
      );

      final resource = network.toResource();

      expect(resource.number, 9);
      expect(resource.type, 'merlin');
      expect(resource.version, '1D+');
      expect(resource.layout, 'octaweb');
      expect(resource.isp, isp.toResource());
      expect(resource.engineLossMax, 2);
      expect(resource.propellant1, 'RP-1');
      expect(resource.propellant2, 'LOX');
      expect(resource.thrustSeaLevel, thrustSea.toResource());
      expect(resource.thrustVacuum, thrustVac.toResource());
      expect(resource.thrustToWeight, 180);
    });

    test('NetworkLandingLegs -> LandingLegsResource', () {
      const network = NetworkLandingLegs(number: 4, material: 'carbon fiber');
      final resource = network.toResource();

      expect(resource.number, 4);
      expect(resource.material, 'carbon fiber');
    });

    test('NetworkRocketModel -> RocketResource with nested resources', () {
      const height = NetworkDimension(meters: 70.0, feet: 229.6);
      const diameter = NetworkDimension(meters: 3.7, feet: 12.1);
      const mass = NetworkMass(kg: 549054, lb: 1207920);
      const payload = NetworkPayloadWeight(
          id: 'payload1', name: 'Starlink', kg: 15000, lb: 33069);
      const engines = NetworkEngines(
        number: 9,
        type: 'merlin',
        isp: NetworkIsp(seaLevel: 300, vacuum: 350),
        thrustSeaLevel: NetworkThrust(kN: 500, lbf: 112404),
      );
      const landingLegs =
          NetworkLandingLegs(number: 4, material: 'carbon fiber');

      const network = NetworkRocketModel(
        id: 1,
        active: true,
        stages: 2,
        boosters: 0,
        costPerLaunch: 50000000,
        successRatePct: 98,
        firstFlight: '2010-06-04',
        country: 'USA',
        company: 'SpaceX',
        height: height,
        diameter: diameter,
        mass: mass,
        payloadWeights: [payload],
        firstStage: null,
        secondStage: null,
        engines: engines,
        landingLegs: landingLegs,
        flickrImages: ['image1', 'image2'],
        wikipedia: 'https://en.wikipedia.org/wiki/Falcon_9',
        description: 'Test rocket',
        rocketId: 'falcon9',
        name: 'Falcon 9',
        type: 'rocket',
      );

      final resource = network.toResource();

      expect(resource.id, 1);
      expect(resource.active, true);
      expect(resource.stages, 2);
      expect(resource.boosters, 0);
      expect(resource.costPerLaunch, 50000000);
      expect(resource.successRatePct, 98);
      expect(resource.firstFlight, '2010-06-04');
      expect(resource.country, 'USA');
      expect(resource.company, 'SpaceX');
      expect(resource.height, height.toResource());
      expect(resource.diameter, diameter.toResource());
      expect(resource.mass, mass.toResource());
      expect(resource.payloadWeights!.first, payload.toResource());
      expect(resource.engines, engines.toResource());
      expect(resource.landingLegs, landingLegs.toResource());
      expect(resource.flickrImages, ['image1', 'image2']);
      expect(resource.wikipedia, 'https://en.wikipedia.org/wiki/Falcon_9');
      expect(resource.description, 'Test rocket');
      expect(resource.rocketId, 'falcon9');
      expect(resource.rocketName, 'Falcon 9');
      expect(resource.rocketType, 'rocket');
    });
  });
}

import 'package:flutter_bloc_app_template/models/rocket/engines_resource.dart';
import 'package:flutter_bloc_app_template/models/rocket/isp_resource.dart';
import 'package:flutter_bloc_app_template/models/rocket/thrust_resource.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('EnginesResource', () {
    const isp = IspResource(seaLevel: 300, vacuum: 350);
    const thrustSea = ThrustResource(kN: 500, lbf: 112404);
    const thrustVac = ThrustResource(kN: 550, lbf: 123556);

    test('can be instantiated with values', () {
      const engine = EnginesResource(
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

      expect(engine.number, 9);
      expect(engine.type, 'merlin');
      expect(engine.version, '1D+');
      expect(engine.layout, 'octaweb');
      expect(engine.isp, isp);
      expect(engine.engineLossMax, 2);
      expect(engine.propellant1, 'RP-1');
      expect(engine.propellant2, 'LOX');
      expect(engine.thrustSeaLevel, thrustSea);
      expect(engine.thrustVacuum, thrustVac);
      expect(engine.thrustToWeight, 180);
    });

    test('can be instantiated with null values', () {
      const engine = EnginesResource();

      expect(engine.number, isNull);
      expect(engine.type, isNull);
      expect(engine.version, isNull);
      expect(engine.layout, isNull);
      expect(engine.isp, isNull);
      expect(engine.engineLossMax, isNull);
      expect(engine.propellant1, isNull);
      expect(engine.propellant2, isNull);
      expect(engine.thrustSeaLevel, isNull);
      expect(engine.thrustVacuum, isNull);
      expect(engine.thrustToWeight, isNull);
    });

    test('supports value equality', () {
      const engine1 = EnginesResource(
        number: 3,
        type: 'raptor',
        isp: isp,
        thrustSeaLevel: thrustSea,
      );
      const engine2 = EnginesResource(
        number: 3,
        type: 'raptor',
        isp: isp,
        thrustSeaLevel: thrustSea,
      );
      const engine3 = EnginesResource(number: 1);

      expect(engine1, equals(engine2));
      expect(engine1 == engine3, isFalse);
    });

    test('props includes all fields', () {
      const engine = EnginesResource(
        number: 2,
        type: 'raptor',
        version: '2',
        layout: 'inline',
        isp: isp,
        engineLossMax: 1,
        propellant1: 'CH4',
        propellant2: 'LOX',
        thrustSeaLevel: thrustSea,
        thrustVacuum: thrustVac,
        thrustToWeight: 200,
      );

      expect(
        engine.props,
        [
          2,
          'raptor',
          '2',
          'inline',
          isp,
          1,
          'CH4',
          'LOX',
          thrustSea,
          thrustVac,
          200,
        ],
      );
    });
  });
}

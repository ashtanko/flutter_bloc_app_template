import 'package:flutter_bloc_app_template/models/rocket/thrust_resource.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ThrustResource', () {
    test('can be instantiated with values', () {
      const thrust = ThrustResource(kN: 760.0, lbf: 170000);

      expect(thrust.kN, 760.0);
      expect(thrust.lbf, 170000);
    });

    test('can be instantiated with null values', () {
      const thrust = ThrustResource();

      expect(thrust.kN, isNull);
      expect(thrust.lbf, isNull);
    });

    test('supports value equality', () {
      const thrust1 = ThrustResource(kN: 800.0, lbf: 180000);
      const thrust2 = ThrustResource(kN: 800.0, lbf: 180000);
      const thrust3 = ThrustResource(kN: 850.0, lbf: 190000);

      expect(thrust1, equals(thrust2));
      expect(thrust1 == thrust3, isFalse);
    });

    test('props includes all fields', () {
      const thrust = ThrustResource(kN: 900.0, lbf: 200000);
      expect(thrust.props, [900.0, 200000]);
    });
  });
}

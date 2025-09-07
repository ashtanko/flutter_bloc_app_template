import 'package:flutter_bloc_app_template/models/rocket/payload_weight_resource.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PayloadWeightResource', () {
    test('can be instantiated with values', () {
      const payload = PayloadWeightResource(
        id: 'payload1',
        name: 'Satellite',
        kg: 500,
        lb: 1102,
      );

      expect(payload.id, 'payload1');
      expect(payload.name, 'Satellite');
      expect(payload.kg, 500);
      expect(payload.lb, 1102);
    });

    test('can be instantiated with null values', () {
      const payload = PayloadWeightResource();

      expect(payload.id, isNull);
      expect(payload.name, isNull);
      expect(payload.kg, isNull);
      expect(payload.lb, isNull);
    });

    test('supports value equality', () {
      const payload1 = PayloadWeightResource(
        id: 'p1',
        name: 'Cargo',
        kg: 1000,
        lb: 2204,
      );
      const payload2 = PayloadWeightResource(
        id: 'p1',
        name: 'Cargo',
        kg: 1000,
        lb: 2204,
      );
      const payload3 = PayloadWeightResource(
        id: 'p2',
        name: 'Crew',
        kg: 1200,
        lb: 2645,
      );

      expect(payload1, equals(payload2));
      expect(payload1 == payload3, isFalse);
    });

    test('props includes all fields', () {
      const payload = PayloadWeightResource(
        id: 'p3',
        name: 'Probe',
        kg: 750,
        lb: 1653,
      );
      expect(payload.props, ['p3', 'Probe', 750, 1653]);
    });
  });
}

import 'package:flutter_bloc_app_template/models/rocket/mass_resource.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MassResource', () {
    test('can be instantiated with values', () {
      const mass = MassResource(kg: 500, lb: 1102);

      expect(mass.kg, 500);
      expect(mass.lb, 1102);
    });

    test('can be instantiated with null values', () {
      const mass = MassResource();

      expect(mass.kg, isNull);
      expect(mass.lb, isNull);
    });

    test('supports value equality', () {
      const mass1 = MassResource(kg: 1000, lb: 2204);
      const mass2 = MassResource(kg: 1000, lb: 2204);
      const mass3 = MassResource(kg: 1200, lb: 2645);

      expect(mass1, equals(mass2));
      expect(mass1 == mass3, isFalse);
    });

    test('props includes all fields', () {
      const mass = MassResource(kg: 750, lb: 1653);
      expect(mass.props, [750, 1653]);
    });
  });
}

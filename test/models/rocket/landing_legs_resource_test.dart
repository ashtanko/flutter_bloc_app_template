import 'package:flutter_bloc_app_template/models/rocket/landing_legs_resource.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('LandingLegsResource', () {
    test('can be instantiated with values', () {
      const legs = LandingLegsResource(number: 4, material: 'carbon fiber');

      expect(legs.number, 4);
      expect(legs.material, 'carbon fiber');
    });

    test('can be instantiated with null values', () {
      const legs = LandingLegsResource();

      expect(legs.number, isNull);
      expect(legs.material, isNull);
    });

    test('supports value equality', () {
      const legs1 = LandingLegsResource(number: 3, material: 'aluminum');
      const legs2 = LandingLegsResource(number: 3, material: 'aluminum');
      const legs3 = LandingLegsResource(number: 4, material: 'steel');

      expect(legs1, equals(legs2));
      expect(legs1 == legs3, isFalse);
    });

    test('props includes all fields', () {
      const legs = LandingLegsResource(number: 2, material: 'titanium');
      expect(legs.props, [2, 'titanium']);
    });
  });
}

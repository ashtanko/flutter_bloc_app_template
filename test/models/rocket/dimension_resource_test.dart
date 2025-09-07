import 'package:flutter_bloc_app_template/models/rocket/dimension_resource.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DimensionResource', () {
    test('can be instantiated with values', () {
      const dimension = DimensionResource(meters: 10.0, feet: 32.8);

      expect(dimension.meters, 10.0);
      expect(dimension.feet, 32.8);
    });

    test('can be instantiated with null values', () {
      const dimension = DimensionResource();

      expect(dimension.meters, isNull);
      expect(dimension.feet, isNull);
    });

    test('supports value equality', () {
      const dim1 = DimensionResource(meters: 5.0, feet: 16.4);
      const dim2 = DimensionResource(meters: 5.0, feet: 16.4);
      const dim3 = DimensionResource(meters: 6.0, feet: 19.7);

      expect(dim1, equals(dim2));
      expect(dim1 == dim3, isFalse);
    });

    test('props includes all fields', () {
      const dimension = DimensionResource(meters: 1.0, feet: 3.3);
      expect(dimension.props, [1.0, 3.3]);
    });
  });
}

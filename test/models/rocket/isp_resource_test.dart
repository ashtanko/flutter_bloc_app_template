import 'package:flutter_bloc_app_template/models/rocket/isp_resource.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('IspResource', () {
    test('can be instantiated with values', () {
      const isp = IspResource(seaLevel: 300, vacuum: 350);

      expect(isp.seaLevel, 300);
      expect(isp.vacuum, 350);
    });

    test('can be instantiated with null values', () {
      const isp = IspResource();

      expect(isp.seaLevel, isNull);
      expect(isp.vacuum, isNull);
    });

    test('supports value equality', () {
      const isp1 = IspResource(seaLevel: 320, vacuum: 370);
      const isp2 = IspResource(seaLevel: 320, vacuum: 370);
      const isp3 = IspResource(seaLevel: 300, vacuum: 350);

      expect(isp1, equals(isp2));
      expect(isp1 == isp3, isFalse);
    });

    test('props includes all fields', () {
      const isp = IspResource(seaLevel: 280, vacuum: 330);
      expect(isp.props, [280, 330]);
    });
  });
}

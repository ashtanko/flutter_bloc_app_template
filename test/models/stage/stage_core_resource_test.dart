import 'package:flutter_bloc_app_template/models/stage/stage_core_resource.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('StageCoreResource', () {
    const core1 = StageCoreResource(
      coreSerial: 'B1013',
      flight: 1,
      block: 1,
      gridfins: true,
      legs: true,
      reused: false,
      landSuccess: true,
      landingIntent: true,
      landingType: 'Ocean',
      landingVehicle: null,
    );

    const core2 = StageCoreResource(
      coreSerial: 'B1013',
      flight: 1,
      block: 1,
      gridfins: true,
      legs: true,
      reused: false,
      landSuccess: true,
      landingIntent: true,
      landingType: 'Ocean',
      landingVehicle: null,
    );

    const coreDifferent = StageCoreResource(
      coreSerial: 'B1014',
      flight: 2,
      block: 2,
      gridfins: false,
      legs: false,
      reused: true,
      landSuccess: false,
      landingIntent: false,
      landingType: 'ASDS',
      landingVehicle: 'OCISLY',
    );

    test('should support value equality', () {
      expect(core1, equals(core2));
      expect(core1.hashCode, equals(core2.hashCode));
    });

    test('should detect inequality when fields differ', () {
      expect(core1, isNot(equals(coreDifferent)));
    });

    test('props should include all fields', () {
      expect(
        core1.props,
        equals([
          'B1013',
          1,
          1,
          true,
          true,
          false,
          true,
          true,
          'Ocean',
          null,
        ]),
      );
    });
  });
}

import 'package:flutter_bloc_app_template/models/core/core_resource.dart';
import 'package:flutter_bloc_app_template/models/launch/first_stage_resource.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FirstStageResource', () {
    const core1 = CoreResource(
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

    const core2 = CoreResource(
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

    const resource1 = FirstStageResource(cores: [core1, core2]);
    const resource2 = FirstStageResource(cores: [core1, core2]);
    const resourceDifferent = FirstStageResource(cores: [core1]);

    test('supports value equality', () {
      expect(resource1, equals(resource2));
      expect(resource1.hashCode, equals(resource2.hashCode));
    });

    test('detects inequality when cores differ', () {
      expect(resource1, isNot(equals(resourceDifferent)));
    });

    test('props should include cores', () {
      expect(
          resource1.props,
          equals([
            [core1, core2],
          ]));
    });

    test('handles null cores correctly', () {
      const nullResource = FirstStageResource();
      expect(nullResource.props, equals([null]));
    });
  });
}

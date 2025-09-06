import 'package:flutter_bloc_app_template/models/core/core_resource.dart';
import 'package:flutter_bloc_app_template/models/launch/first_stage_resource.dart';
import 'package:flutter_bloc_app_template/models/launch/rocket_resource.dart';
import 'package:flutter_bloc_app_template/models/launch/second_stage_resource.dart';
import 'package:flutter_bloc_app_template/models/payload/payload_resource.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('RocketResource', () {
    const core1 = CoreResource(coreSerial: 'B1013');
    const core2 = CoreResource(coreSerial: 'B1014');
    const firstStage = FirstStageResource(cores: [core1, core2]);

    const payload1 = PayloadResource(payloadId: 'FalconSAT-2');
    const payload2 = PayloadResource(payloadId: 'FalconSAT-3');
    const secondStage =
        SecondStageResource(block: 1, payloads: [payload1, payload2]);

    const resource1 = RocketResource(
      rocketName: 'Falcon 9',
      rocketType: 'FT',
      firstStage: firstStage,
      secondStage: secondStage,
    );

    const resource2 = RocketResource(
      rocketName: 'Falcon 9',
      rocketType: 'FT',
      firstStage: firstStage,
      secondStage: secondStage,
    );

    const resourceDifferent = RocketResource(
      rocketName: 'Falcon Heavy',
      rocketType: 'Heavy',
      firstStage: null,
      secondStage: null,
    );

    test('supports value equality', () {
      expect(resource1, equals(resource2));
      expect(resource1.hashCode, equals(resource2.hashCode));
    });

    test('detects inequality when fields differ', () {
      expect(resource1, isNot(equals(resourceDifferent)));
    });

    test('props should include all fields', () {
      expect(
        resource1.props,
        equals([
          'Falcon 9',
          'FT',
          firstStage,
          secondStage,
        ]),
      );
    });

    test('handles null optional fields', () {
      const nullResource = RocketResource();
      expect(nullResource.props, equals([null, null, null, null]));
    });
  });
}

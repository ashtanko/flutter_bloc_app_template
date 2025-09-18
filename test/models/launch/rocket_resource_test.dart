import 'package:flutter_bloc_app_template/models/core/core_resource.dart';
import 'package:flutter_bloc_app_template/models/launch/launch_rocket_resource.dart';
import 'package:flutter_bloc_app_template/models/payload/payload_resource.dart';
import 'package:flutter_bloc_app_template/models/stage/first_stage_resource.dart';
import 'package:flutter_bloc_app_template/models/stage/second_stage_resource.dart';
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

    const resource1 = LaunchRocketResource(
      rocketName: 'Falcon 9',
      rocketType: 'FT',
      firstStage: firstStage,
      secondStage: secondStage,
    );

    const resource2 = LaunchRocketResource(
      rocketName: 'Falcon 9',
      rocketType: 'FT',
      firstStage: firstStage,
      secondStage: secondStage,
    );

    const resourceDifferent = LaunchRocketResource(
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

    test('supports deep equality on nested lists', () {
      const firstStage2 = FirstStageResource(cores: [
        CoreResource(coreSerial: 'B1013'),
        CoreResource(coreSerial: 'B1014'),
      ]);
      const secondStage2 = SecondStageResource(block: 1, payloads: [
        PayloadResource(payloadId: 'FalconSAT-2'),
        PayloadResource(payloadId: 'FalconSAT-3'),
      ]);
      const resource3 = LaunchRocketResource(
        rocketName: 'Falcon 9',
        rocketType: 'FT',
        firstStage: firstStage2,
        secondStage: secondStage2,
      );
      expect(resource1, equals(resource3));
    });

    test('handles null optional fields', () {
      const nullResource = LaunchRocketResource();
      expect(nullResource.props, equals([null, null, null, null]));
    });
  });
}

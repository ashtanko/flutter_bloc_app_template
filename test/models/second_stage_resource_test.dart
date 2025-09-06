import 'package:flutter_bloc_app_template/models/launch/second_stage_resource.dart';
import 'package:flutter_bloc_app_template/models/payload/payload_resource.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SecondStageResource', () {
    const payload1 = PayloadResource(
      payloadId: 'FalconSAT-2',
      noradId: [12345, 67890],
      reused: false,
      customers: ['DARPA'],
      nationality: 'United States',
      manufacturer: 'SSTL',
      payloadType: 'Satellite',
      payloadMassKg: 20,
      payloadMassLbs: 44,
      orbit: 'LEO',
    );

    const payload2 = PayloadResource(
      payloadId: 'FalconSAT-3',
      noradId: [11111],
      reused: true,
      customers: ['NASA'],
      nationality: 'Canada',
      manufacturer: 'SpaceX',
      payloadType: 'Dragon',
      payloadMassKg: 5000,
      payloadMassLbs: 11023,
      orbit: 'GTO',
    );

    const resource1 =
        SecondStageResource(block: 1, payloads: [payload1, payload2]);
    const resource2 =
        SecondStageResource(block: 1, payloads: [payload1, payload2]);
    const resourceDifferentBlock =
        SecondStageResource(block: 2, payloads: [payload1, payload2]);
    const resourceDifferentPayloads =
        SecondStageResource(block: 1, payloads: [payload1]);

    test('supports value equality', () {
      expect(resource1, equals(resource2));
      expect(resource1.hashCode, equals(resource2.hashCode));
    });

    test('detects inequality when block differs', () {
      expect(resource1, isNot(equals(resourceDifferentBlock)));
    });

    test('detects inequality when payloads differ', () {
      expect(resource1, isNot(equals(resourceDifferentPayloads)));
    });

    test('props should include block and payloads', () {
      expect(
          resource1.props,
          equals([
            1,
            [payload1, payload2]
          ]));
    });

    test('handles null values correctly', () {
      const nullResource = SecondStageResource();
      expect(nullResource.props, equals([null, null]));
    });
  });
}

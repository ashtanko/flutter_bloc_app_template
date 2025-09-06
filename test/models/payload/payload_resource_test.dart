import 'package:flutter_bloc_app_template/models/payload/payload_resource.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PayloadResource', () {
    const resource1 = PayloadResource(
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

    const resource2 = PayloadResource(
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

    const resourceDifferent = PayloadResource(
      payloadId: 'FalconSAT-3',
      noradId: [99999],
      reused: true,
      customers: ['NASA'],
      nationality: 'Canada',
      manufacturer: 'SpaceX',
      payloadType: 'Dragon',
      payloadMassKg: 5000,
      payloadMassLbs: 11023,
      orbit: 'GTO',
    );

    test('supports value equality', () {
      expect(resource1, equals(resource2));
      expect(resource1.hashCode, equals(resource2.hashCode));
    });

    test('detects inequality when a field differs', () {
      expect(resource1, isNot(equals(resourceDifferent)));
    });

    test('props should include all fields', () {
      expect(
        resource1.props,
        equals([
          'FalconSAT-2',
          [12345, 67890],
          false,
          ['DARPA'],
          'United States',
          'SSTL',
          'Satellite',
          20,
          44,
          'LEO',
        ]),
      );
    });

    test('handles null values correctly', () {
      const nullResource = PayloadResource();

      expect(
        nullResource.props,
        equals([
          null, // payloadId
          null, // noradId
          null, // reused
          null, // customers
          null, // nationality
          null, // manufacturer
          null, // payloadType
          null, // payloadMassKg
          null, // payloadMassLbs
          null, // orbit
        ]),
      );
    });
  });
}

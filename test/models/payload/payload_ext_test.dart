import 'package:flutter_bloc_app_template/data/network/model/payload/network_payload_model.dart';
import 'package:flutter_bloc_app_template/models/payload/payload_ext.dart';
import 'package:flutter_bloc_app_template/models/payload/payload_resource.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PayloadExt.toResource', () {
    final json = {
      'payload_id': 'FalconSAT-2',
      'norad_id': [12345, 67890],
      'reused': false,
      'customers': ['DARPA'],
      'nationality': 'United States',
      'manufacturer': 'SSTL',
      'payload_type': 'Satellite',
      'payload_mass_kg': 20,
      'payload_mass_lbs': 44,
      'orbit': 'LEO',
    };

    test('should map all fields correctly from NetworkPayloadModel', () {
      final model = NetworkPayloadModel.fromJson(json);
      final resource = model.toResource();

      expect(
        resource,
        equals(
          const PayloadResource(
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
          ),
        ),
      );
    });

    test('should handle null fields correctly', () {
      const model = NetworkPayloadModel(
        payloadId: null,
        noradId: null,
        reused: null,
        customers: null,
        nationality: null,
        manufacturer: null,
        payloadType: null,
        payloadMassKg: null,
        payloadMassLbs: null,
        orbit: null,
      );
      final resource = model.toResource();

      expect(
        resource,
        equals(
          const PayloadResource(
            payloadId: null,
            noradId: null,
            reused: null,
            customers: null,
            nationality: null,
            manufacturer: null,
            payloadType: null,
            payloadMassKg: null,
            payloadMassLbs: null,
            orbit: null,
          ),
        ),
      );
    });
  });
}

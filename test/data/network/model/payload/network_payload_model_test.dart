import 'package:flutter_bloc_app_template/data/network/model/payload/network_payload_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('NetworkPayloadModel', () {
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

    test('fromJson should parse correctly', () {
      final model = NetworkPayloadModel.fromJson(json);

      expect(model.payloadId, 'FalconSAT-2');
      expect(model.noradId, [12345, 67890]);
      expect(model.reused, false);
      expect(model.customers, ['DARPA']);
      expect(model.nationality, 'United States');
      expect(model.manufacturer, 'SSTL');
      expect(model.payloadType, 'Satellite');
      expect(model.payloadMassKg, 20);
      expect(model.payloadMassLbs, 44);
      expect(model.orbit, 'LEO');
    });

    test('toJson should convert correctly', () {
      final model = NetworkPayloadModel.fromJson(json);
      final result = model.toJson();

      expect(result, json);
    });

    test('equality should work correctly', () {
      final model1 = NetworkPayloadModel.fromJson(json);
      final model2 = NetworkPayloadModel.fromJson(json);

      expect(model1, equals(model2));
      expect(model1.hashCode, equals(model2.hashCode));
    });

    test('copyWith should override values', () {
      final model = NetworkPayloadModel.fromJson(json);
      final updated = model.copyWith(
        payloadId: 'NewPayload',
        payloadMassKg: 50,
      );

      expect(updated.payloadId, 'NewPayload');
      expect(updated.payloadMassKg, 50);
      expect(updated.orbit, 'LEO'); // unchanged
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

      final result = model.toJson();

      expect(result, {
        'payload_id': null,
        'norad_id': null,
        'reused': null,
        'customers': null,
        'nationality': null,
        'manufacturer': null,
        'payload_type': null,
        'payload_mass_kg': null,
        'payload_mass_lbs': null,
        'orbit': null,
      });
    });
  });
}

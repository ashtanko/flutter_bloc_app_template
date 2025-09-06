import 'package:flutter_bloc_app_template/data/network/model/launch/network_second_stage_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('NetworkSecondStageModel', () {
    final json = {
      'block': 1,
      'payloads': [
        {
          'payload_id': 'FalconSAT-2',
          'norad_id': [12345, 67890],
          'reused': false,
          'customers': ['DARPA'],
          'nationality': 'United States',
          'manufacturer': 'SSTL',
          'payload_type': 'Satellite',
          'payload_mass_kg': 20,
          'payload_mass_lbs': 44,
          'orbit': 'LEO'
        },
        {
          'payload_id': 'FalconSAT-3',
          'norad_id': [11111],
          'reused': true,
          'customers': ['NASA'],
          'nationality': 'Canada',
          'manufacturer': 'SpaceX',
          'payload_type': 'Dragon',
          'payload_mass_kg': 5000,
          'payload_mass_lbs': 11023,
          'orbit': 'GTO'
        }
      ]
    };

    test('fromJson should parse correctly', () {
      final model = NetworkSecondStageModel.fromJson(json);

      expect(model.block, 1);
      expect(model.payloads?.length, 2);
      expect(model.payloads?[0].payloadId, 'FalconSAT-2');
      expect(model.payloads?[1].payloadId, 'FalconSAT-3');
    });

    test('toJson should convert correctly', () {
      final model = NetworkSecondStageModel.fromJson(json);
      final result = {
        'block': model.block,
        'payloads': model.payloads?.map((p) => p.toJson()).toList(),
      };

      expect(result, json);
    });

    test('equality should work correctly', () {
      final model1 = NetworkSecondStageModel.fromJson(json);
      final model2 = NetworkSecondStageModel.fromJson(json);

      expect(model1, equals(model2));
      expect(model1.hashCode, equals(model2.hashCode));
    });

    test('copyWith should override values', () {
      final model = NetworkSecondStageModel.fromJson(json);

      final updated = model.copyWith(block: 2, payloads: []);

      expect(updated.block, 2);
      expect(updated.payloads, <dynamic>[]);
    });
  });
}

import 'package:flutter_bloc_app_template/data/network/model/launch/network_second_stage_model.dart';
import 'package:flutter_bloc_app_template/models/launch/second_stage_ext.dart';
import 'package:flutter_bloc_app_template/models/payload/payload_resource.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SecondStageExt.toResource', () {
    final model = NetworkSecondStageModel.fromJson({
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
    });

    test('should map payloads to PayloadResource correctly', () {
      final resource = model.toResource();

      expect(resource.block, 1);
      expect(resource.payloads, [
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
        const PayloadResource(
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
        ),
      ]);
    });

    test('should handle null payloads correctly', () {
      final emptyModel = const NetworkSecondStageModel(block: 2, payloads: []);
      final resource = emptyModel.toResource();

      expect(resource.block, 2);
      expect(resource.payloads, <dynamic>[]);
    });
  });
}

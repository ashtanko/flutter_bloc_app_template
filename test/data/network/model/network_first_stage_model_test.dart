import 'package:flutter_bloc_app_template/data/network/model/core/network_core_model.dart';
import 'package:flutter_bloc_app_template/data/network/model/launch/network_first_stage_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('NetworkFirstStageModel', () {
    final json = {
      'cores': [
        {
          'core_serial': 'B1013',
          'flight': 1,
          'block': 1,
          'gridfins': true,
          'legs': true,
          'reused': false,
          'land_success': true,
          'landing_intent': true,
          'landing_type': 'Ocean',
          'landing_vehicle': null
        },
        {
          'core_serial': 'B1014',
          'flight': 2,
          'block': 2,
          'gridfins': false,
          'legs': false,
          'reused': true,
          'land_success': false,
          'landing_intent': false,
          'landing_type': 'ASDS',
          'landing_vehicle': 'OCISLY'
        }
      ]
    };

    test('fromJson should parse correctly', () {
      final model = NetworkFirstStageModel.fromJson(json);

      expect(model.cores?.length, 2);
      expect(model.cores?[0].coreSerial, 'B1013');
      expect(model.cores?[1].coreSerial, 'B1014');
      expect(model.cores?[1].landingVehicle, 'OCISLY');
    });

    test('toJson should convert correctly', () {
      final model = NetworkFirstStageModel.fromJson(json);

      final result = {
        'cores': model.cores?.map((c) => c.toJson()).toList(),
      };

      expect(result, json);
    });

    test('equality should work correctly', () {
      final model1 = NetworkFirstStageModel.fromJson(json);
      final model2 = NetworkFirstStageModel.fromJson(json);

      expect(model1, equals(model2));
      expect(model1.hashCode, equals(model2.hashCode));
    });

    test('copyWith should override values', () {
      final model = NetworkFirstStageModel.fromJson(json);

      final updated = model.copyWith(
        cores: [
          const NetworkCoreModel(
            coreSerial: 'B9999',
            flight: 9,
            block: 9,
            gridfins: false,
            legs: false,
            reused: false,
            landSuccess: null,
            landingIntent: null,
            landingType: null,
            landingVehicle: null,
          ),
        ],
      );

      expect(updated.cores?.length, 1);
      expect(updated.cores?.first.coreSerial, 'B9999');
    });
  });
}

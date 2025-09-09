import 'package:flutter_bloc_app_template/data/network/model/stage/network_first_stage_model.dart';
import 'package:flutter_bloc_app_template/models/stage/first_stage_ext.dart';
import 'package:flutter_bloc_app_template/models/stage/stage_core_resource.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FirstStageExt.toResource', () {
    final model = NetworkFirstStageModel.fromJson({
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
    });

    test('should map cores to StageCoreResource correctly', () {
      final resource = model.toResource();

      expect(resource.cores, [
        const StageCoreResource(
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
        ),
        const StageCoreResource(
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
        ),
      ]);
    });

    test('should handle null cores correctly', () {
      final emptyModel = const NetworkFirstStageModel(cores: []);
      final resource = emptyModel.toResource();

      expect(resource.cores, <dynamic>[]);
    });
  });
}

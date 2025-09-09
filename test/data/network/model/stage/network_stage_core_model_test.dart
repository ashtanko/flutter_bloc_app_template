import 'package:flutter_bloc_app_template/data/network/model/stage/network_first_stage_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('NetworkStageCoreModel', () {
    final json = {
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
    };

    test('fromJson should parse correctly', () {
      final model = NetworkStageCoreModel.fromJson(json);

      expect(model.coreSerial, 'B1013');
      expect(model.flight, 1);
      expect(model.block, 1);
      expect(model.gridfins, true);
      expect(model.legs, true);
      expect(model.reused, false);
      expect(model.landSuccess, true);
      expect(model.landingIntent, true);
      expect(model.landingType, 'Ocean');
      expect(model.landingVehicle, isNull);
    });

    test('toJson should convert correctly', () {
      final model = NetworkStageCoreModel.fromJson(json);
      final result = model.toJson();

      expect(result, json);
    });

    test('equality should work correctly', () {
      final model1 = NetworkStageCoreModel.fromJson(json);
      final model2 = NetworkStageCoreModel.fromJson(json);

      expect(model1, equals(model2));
    });

    test('copyWith should override values', () {
      final model = NetworkStageCoreModel.fromJson(json);
      final updated = model.copyWith(coreSerial: 'B1014', flight: 2);

      expect(updated.coreSerial, 'B1014');
      expect(updated.flight, 2);
      expect(updated.block, model.block);
    });
  });
}

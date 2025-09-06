import 'package:flutter_bloc_app_template/data/network/model/core/network_core_model.dart';
import 'package:flutter_bloc_app_template/models/core/core_ext.dart';
import 'package:flutter_bloc_app_template/models/core/core_resource.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CoreExt.toResource', () {
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

    test('should map all fields correctly from NetworkCoreModel', () {
      final model = NetworkCoreModel.fromJson(json);
      final resource = model.toResource();

      expect(
        resource,
        equals(
          const CoreResource(
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
        ),
      );
    });

    test('should handle null fields correctly', () {
      final model = const NetworkCoreModel(
        coreSerial: null,
        flight: null,
        block: null,
        gridfins: null,
        legs: null,
        reused: null,
        landSuccess: null,
        landingIntent: null,
        landingType: null,
        landingVehicle: null,
      );
      final resource = model.toResource();

      expect(
        resource,
        equals(
          const CoreResource(
            coreSerial: null,
            flight: null,
            block: null,
            gridfins: null,
            legs: null,
            reused: null,
            landSuccess: null,
            landingIntent: null,
            landingType: null,
            landingVehicle: null,
          ),
        ),
      );
    });
  });
}

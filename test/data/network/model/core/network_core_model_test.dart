import 'dart:convert';

import 'package:flutter_bloc_app_template/data/network/model/core/network_core_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('NetworkCoreModel', () {
    const mission = NetworkMission(
      name: 'RatSat',
      flight: 4,
    );

    const coreModel = NetworkCoreModel(
      coreSerial: 'Merlin2C',
      block: null,
      status: 'lost',
      originalLaunch: '2008-09-28T23:15:00.000Z',
      originalLaunchUnix: 1222643700,
      missions: [mission],
      reuseCount: 0,
      rtlsAttempts: 0,
      rtlsLandings: 0,
      asdsAttempts: 0,
      asdsLandings: 0,
      waterLanding: false,
      details: 'Initially scheduled for 23–25 Sep, carried dummy payload – '
          'mass simulator, 165 kg (originally intended to be RazakSAT.',
    );

    final jsonMap = {
      'core_serial': 'Merlin2C',
      'block': null,
      'status': 'lost',
      'original_launch': '2008-09-28T23:15:00.000Z',
      'original_launch_unix': 1222643700,
      'missions': [
        {'name': 'RatSat', 'flight': 4}
      ],
      'reuse_count': 0,
      'rtls_attempts': 0,
      'rtls_landings': 0,
      'asds_attempts': 0,
      'asds_landings': 0,
      'water_landing': false,
      'details': 'Initially scheduled for 23–25 Sep, carried dummy payload – '
          'mass simulator, 165 kg (originally intended to be RazakSAT.'
    };

    test('fromJson should parse JSON correctly', () {
      final model = NetworkCoreModel.fromJson(jsonMap);
      expect(model, coreModel);
    });

    test('equality should work', () {
      final model1 = NetworkCoreModel.fromJson(jsonMap);
      final model2 = NetworkCoreModel.fromJson(jsonMap);
      expect(model1, model2);
      expect(model1.hashCode, model2.hashCode);
    });

    test('missions should contain correct values', () {
      final model = NetworkCoreModel.fromJson(jsonMap);
      expect(model.missions, isNotNull);
      expect(model.missions!.first.name, 'RatSat');
      expect(model.missions!.first.flight, 4);
    });

    test('can encode to JSON string', () {
      final jsonString = jsonEncode(coreModel.toJson());
      final decoded = jsonDecode(jsonString);
      expect(decoded, jsonMap);
    });
  });
}

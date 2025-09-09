import 'package:flutter_bloc_app_template/data/network/model/core/network_core_model.dart';
import 'package:flutter_bloc_app_template/models/core/core_ext.dart';
import 'package:flutter_bloc_app_template/models/core/core_resource.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CoreExt.toResource', () {
    test('maps full NetworkCoreModel to CoreResource', () {
      final network = const NetworkCoreModel(
        coreSerial: 'Merlin2C',
        block: null,
        status: 'lost',
        originalLaunch: '2008-09-28T23:15:00.000Z',
        originalLaunchUnix: 1222643700,
        missions: [
          NetworkMission(name: 'RatSat', flight: 4),
        ],
        reuseCount: 0,
        rtlsAttempts: 0,
        rtlsLandings: 0,
        asdsAttempts: 0,
        asdsLandings: 0,
        waterLanding: false,
        details:
            'Initially scheduled for 23–25 Sep, carried dummy payload – mass '
            'simulator, 165 kg (originally intended to be RazakSAT.',
      );

      final resource = network.toResource();

      expect(
        resource,
        const CoreResource(
          coreSerial: 'Merlin2C',
          block: null,
          status: 'lost',
          originalLaunch: '2008-09-28T23:15:00.000Z',
          originalLaunchUnix: 1222643700,
          missions: [
            MissionResource(name: 'RatSat', flight: 4),
          ],
          reuseCount: 0,
          rtlsAttempts: 0,
          rtlsLandings: 0,
          asdsAttempts: 0,
          asdsLandings: 0,
          waterLanding: false,
          details:
              'Initially scheduled for 23–25 Sep, carried dummy payload – mass '
              'simulator, 165 kg (originally intended to be RazakSAT.',
        ),
      );
    });

    test('handles null and empty fields gracefully', () {
      final network = const NetworkCoreModel(
        coreSerial: null,
        block: null,
        status: null,
        originalLaunch: null,
        originalLaunchUnix: null,
        missions: null,
        reuseCount: null,
        rtlsAttempts: null,
        rtlsLandings: null,
        asdsAttempts: null,
        asdsLandings: null,
        waterLanding: null,
        details: null,
      );

      final resource = network.toResource();

      expect(
        resource,
        const CoreResource(
          coreSerial: null,
          block: null,
          status: null,
          originalLaunch: null,
          originalLaunchUnix: null,
          missions: null,
          reuseCount: null,
          rtlsAttempts: null,
          rtlsLandings: null,
          asdsAttempts: null,
          asdsLandings: null,
          waterLanding: null,
          details: null,
        ),
      );
    });

    test('maps multiple missions correctly', () {
      final network = const NetworkCoreModel(
        missions: [
          NetworkMission(name: 'RatSat', flight: 4),
          NetworkMission(name: 'TestSat', flight: 5),
        ],
      );

      final resource = network.toResource();

      expect(
        resource.missions,
        const [
          MissionResource(name: 'RatSat', flight: 4),
          MissionResource(name: 'TestSat', flight: 5),
        ],
      );
    });
  });
}

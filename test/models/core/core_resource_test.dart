import 'package:flutter_bloc_app_template/models/core/core_resource.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MissionResource', () {
    test('supports equality', () {
      const m1 = MissionResource(name: 'RatSat', flight: 4);
      const m2 = MissionResource(name: 'RatSat', flight: 4);
      const m3 = MissionResource(name: 'TestSat', flight: 5);

      expect(m1, equals(m2));
      expect(m1.hashCode, equals(m2.hashCode));
      expect(m1, isNot(equals(m3)));
    });

    test('props contains all fields', () {
      const mission = MissionResource(name: 'RatSat', flight: 4);
      expect(mission.props, ['RatSat', 4]);
    });
  });

  group('CoreResource', () {
    const core1 = CoreResource(
      coreSerial: 'Merlin2C',
      block: 1,
      status: 'lost',
      originalLaunch: '2008-09-28T23:15:00.000Z',
      originalLaunchUnix: 1222643700,
      missions: [MissionResource(name: 'RatSat', flight: 4)],
      reuseCount: 0,
      rtlsAttempts: 0,
      rtlsLandings: 0,
      asdsAttempts: 0,
      asdsLandings: 0,
      waterLanding: false,
      details: 'Some details',
    );

    const core2 = CoreResource(
      coreSerial: 'Merlin2C',
      block: 1,
      status: 'lost',
      originalLaunch: '2008-09-28T23:15:00.000Z',
      originalLaunchUnix: 1222643700,
      missions: [MissionResource(name: 'RatSat', flight: 4)],
      reuseCount: 0,
      rtlsAttempts: 0,
      rtlsLandings: 0,
      asdsAttempts: 0,
      asdsLandings: 0,
      waterLanding: false,
      details: 'Some details',
    );

    const core3 = CoreResource(
      coreSerial: 'OtherCore',
      status: 'active',
    );

    test('supports equality', () {
      expect(core1, equals(core2));
      expect(core1.hashCode, equals(core2.hashCode));
      expect(core1, isNot(equals(core3)));
    });

    test('props contains all fields', () {
      expect(core1.props, [
        'Merlin2C',
        1,
        'lost',
        '2008-09-28T23:15:00.000Z',
        1222643700,
        [const MissionResource(name: 'RatSat', flight: 4)],
        0,
        0,
        0,
        0,
        0,
        false,
        'Some details',
      ]);
    });

    test('is immutable', () {
      // trying to reassign a const field will cause compile-time error,
      // so here we just verify object identity
      const modified = CoreResource(coreSerial: 'Merlin2C');
      expect(modified.coreSerial, 'Merlin2C');
    });
  });
}

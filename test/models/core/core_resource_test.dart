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

    test('should copyWith correctly', () {
      final core = const CoreResource(coreSerial: 'B1049', block: 5);
      final copied = core.copyWith(
        coreSerial: 'B1051',
        block: 6,
      );

      expect(copied.coreSerial, 'B1051');
      expect(copied.block, 6);
      expect(copied.status, isNull); // other fields stay the same
    });

    test('copyWith with no arguments should return identical object', () {
      final core = const CoreResource(
        coreSerial: 'B1049',
        block: 5,
        status: 'active',
      );

      final copied = core.copyWith();

      expect(copied, equals(core)); // Equatable should ensure equality
      expect(
          identical(copied, core), isFalse); // should not be the same reference
    });

    test('should check equality', () {
      final core1 = const CoreResource(coreSerial: 'B1049', block: 5);
      final core2 = const CoreResource(coreSerial: 'B1049', block: 5);
      final core3 = const CoreResource(coreSerial: 'B1051', block: 5);

      expect(core1, core2);
      expect(core1 == core3, isFalse);
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

    test('props contains all fields', () {
      final missionList = [const MissionResource(name: 'Falcon 9', flight: 1)];

      final core = CoreResource(
        coreSerial: 'B1049',
        block: 5,
        status: 'active',
        originalLaunch: '2020-06-30',
        originalLaunchUnix: 1593504000,
        missions: missionList,
        reuseCount: 3,
        rtlsAttempts: 3,
        rtlsLandings: 3,
        asdsAttempts: 1,
        asdsLandings: 1,
        waterLanding: false,
        details: 'Recovered from drone ship',
      );

      expect(core.props, [
        'B1049',
        5,
        'active',
        '2020-06-30',
        1593504000,
        missionList,
        3,
        3,
        3,
        1,
        1,
        false,
        'Recovered from drone ship',
      ]);
    });

    test('equality and hashCode are based on props', () {
      final core1 =
          const CoreResource(coreSerial: 'B1049', block: 5, status: 'active');
      final core2 =
          const CoreResource(coreSerial: 'B1049', block: 5, status: 'active');
      final core3 =
          const CoreResource(coreSerial: 'B1051', block: 5, status: 'active');

      // core1 and core2 have identical props
      expect(core1, equals(core2));
      expect(core1.hashCode, equals(core2.hashCode));

      // core3 differs in coreSerial
      expect(core1, isNot(equals(core3)));
      expect(core1.hashCode, isNot(equals(core3.hashCode)));
    });

    test('is immutable', () {
      // trying to reassign a const field will cause compile-time error,
      // so here we just verify object identity
      const modified = CoreResource(coreSerial: 'Merlin2C');
      expect(modified.coreSerial, 'Merlin2C');
    });
  });
}

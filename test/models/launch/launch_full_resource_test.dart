import 'package:flutter_bloc_app_template/models/launch/launch_full_resource.dart';
import 'package:flutter_bloc_app_template/models/launch/links_resource.dart';
import 'package:flutter_bloc_app_template/models/launch/rocket_resource.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('LaunchFullResource', () {
    const rocket = RocketResource(rocketName: 'Falcon 9', rocketType: 'FT');
    const links =
        LinksResource(wikipedia: 'https://en.wikipedia.org/wiki/Falcon_9');

    const resource1 = LaunchFullResource(
      id: '1',
      flightNumber: 100,
      missionName: 'Starlink-1',
      isTentative: false,
      tentativeMaxPrecision: null,
      tbd: false,
      launchDate: 'December 25, 2025',
      staticFireDate: 'December 25, 2025 - 14:30 UTC',
      launchWindow: 120,
      rocket: rocket,
      launchSuccess: true,
      links: links,
      ships: [],
    );

    const resource2 = LaunchFullResource(
      id: '1',
      flightNumber: 100,
      missionName: 'Starlink-1',
      isTentative: false,
      tentativeMaxPrecision: null,
      tbd: false,
      launchDate: 'December 25, 2025',
      staticFireDate: 'December 25, 2025 - 14:30 UTC',
      launchWindow: 120,
      rocket: rocket,
      launchSuccess: true,
      links: links,
      ships: [],
    );

    const resourceDifferent = LaunchFullResource(
      id: '2',
      flightNumber: 101,
      missionName: 'Starlink-2',
      rocket: null,
      launchSuccess: false,
      links: null,
      ships: [],
    );

    test('supports value equality', () {
      expect(resource1, equals(resource2));
      expect(resource1.hashCode, equals(resource2.hashCode));
    });

    test('detects inequality when fields differ', () {
      expect(resource1, isNot(equals(resourceDifferent)));
    });

    test('props should include all fields', () {
      expect(
        resource1.props,
        equals([
          '1',
          100,
          'Starlink-1',
          'December 25, 2025',
          'December 25, 2025 - 14:30 UTC',
          false,
          null,
          false,
          120,
          rocket,
          true,
          links,
          null,
          <String>[],
          null,
        ]),
      );
    });

    test('copyWith overrides specified fields', () {
      final updated = resource1.copyWith(
        missionName: 'Starlink-Updated',
        launchSuccess: false,
      );

      expect(updated.missionName, 'Starlink-Updated');
      expect(updated.launchSuccess, false);
      expect(updated.id, resource1.id); // unchanged
      expect(updated.rocket, resource1.rocket); // unchanged
    });

    test('handles null optional fields', () {
      const nullResource = LaunchFullResource(
        id: '3',
        flightNumber: 102,
        ships: [],
      );

      expect(nullResource.missionName, null);
      expect(nullResource.rocket, null);
      expect(nullResource.links, null);
      expect(nullResource.tbd, null);
    });
  });
}

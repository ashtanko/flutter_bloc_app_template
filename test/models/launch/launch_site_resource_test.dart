import 'package:flutter_bloc_app_template/models/launch/launch_site_resource.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('LaunchSiteResource', () {
    const resource1 = LaunchSiteResource(
      siteId: 'ccafs_slc_40',
      siteName: 'CCAFS SLC 40',
      siteNameLong: 'Cape Canaveral Air Force Station Space Launch Complex 40',
    );

    const resource2 = LaunchSiteResource(
      siteId: 'ccafs_slc_40',
      siteName: 'CCAFS SLC 40',
      siteNameLong: 'Cape Canaveral Air Force Station Space Launch Complex 40',
    );

    const resourceDifferent = LaunchSiteResource(
      siteId: 'ksc_lc_39a',
      siteName: 'KSC LC 39A',
      siteNameLong: 'Kennedy Space Center Launch Complex 39A',
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
          'ccafs_slc_40',
          'CCAFS SLC 40',
          'Cape Canaveral Air Force Station Space Launch Complex 40',
        ]),
      );
    });

    test('handles null optional fields', () {
      const nullResource = LaunchSiteResource();
      expect(nullResource.props, equals([null, null, null]));
    });
  });
}

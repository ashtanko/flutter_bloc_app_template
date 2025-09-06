import 'package:flutter_bloc_app_template/data/network/model/launch/full/network_launch_full_model.dart';
import 'package:flutter_bloc_app_template/models/launch/launch_site_ext.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('LaunchSiteExt.toResource', () {
    test('should map all fields correctly', () {
      final networkSite = const NetworkLaunchSite(
        siteId: 'ccafs_slc_40',
        siteName: 'CCAFS SLC 40',
        siteNameLong:
            'Cape Canaveral Air Force Station Space Launch Complex 40',
      );

      final resource = networkSite.toResource();

      expect(resource.siteId, 'ccafs_slc_40');
      expect(resource.siteName, 'CCAFS SLC 40');
      expect(resource.siteNameLong,
          'Cape Canaveral Air Force Station Space Launch Complex 40');
    });

    test('should handle null fields correctly', () {
      final networkSite = const NetworkLaunchSite();

      final resource = networkSite.toResource();

      expect(resource.siteId, null);
      expect(resource.siteName, null);
      expect(resource.siteNameLong, null);
    });
  });
}

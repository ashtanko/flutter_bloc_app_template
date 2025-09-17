import 'package:flutter_bloc_app_template/data/network/model/launch/full/network_launch_full_model.dart';
import 'package:flutter_bloc_app_template/models/launch/launch_site_resource.dart';

extension LaunchSiteExt on NetworkLaunchSite {
  LaunchSiteResource toResource() {
    return LaunchSiteResource(
      siteId: siteId,
      siteName: siteName,
      siteNameLong: siteNameLong,
    );
  }
}

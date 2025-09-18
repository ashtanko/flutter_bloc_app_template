import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
class LaunchSiteResource extends Equatable {
  const LaunchSiteResource({
    this.siteId,
    this.siteName,
    this.siteNameLong,
  });

  final String? siteId;
  final String? siteName;
  final String? siteNameLong;

  @override
  List<Object?> get props => [
        siteId,
        siteName,
        siteNameLong,
      ];
}

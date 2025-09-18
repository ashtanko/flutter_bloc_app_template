import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc_app_template/models/launch/launch_rocket_resource.dart';

import 'launch.dart';

@immutable
class LaunchFullResource extends Equatable {
  const LaunchFullResource({
    required this.id,
    required this.flightNumber,
    this.missionName,
    this.launchDate,
    this.staticFireDate,
    this.isTentative,
    this.tentativeMaxPrecision,
    this.details,
    this.tbd,
    this.launchWindow,
    this.rocket,
    this.launchSuccess,
    this.links,
    this.launchSite,
    required this.ships,
  });

  final String id;
  final int flightNumber;
  final String? missionName;
  final String? launchDate;
  final String? staticFireDate;
  final LaunchRocketResource? rocket;
  final bool? launchSuccess;
  final LinksResource? links;
  final LaunchSiteResource? launchSite;
  final bool? isTentative;
  final String? tentativeMaxPrecision;
  final String? details;
  final bool? tbd;
  final int? launchWindow;
  final List<String> ships;

  LaunchFullResource copyWith({
    String? id,
    int? flightNumber,
    String? missionName,
    String? launchDate,
    String? staticFireDate,
    bool? isTentative,
    String? tentativeMaxPrecision,
    String? details,
    bool? tbd,
    int? launchWindow,
    LaunchRocketResource? rocket,
    bool? launchSuccess,
    LinksResource? links,
    LaunchSiteResource? launchSite,
    List<String>? ships,
  }) {
    return LaunchFullResource(
      id: id ?? this.id,
      flightNumber: flightNumber ?? this.flightNumber,
      missionName: missionName ?? this.missionName,
      launchDate: launchDate ?? this.launchDate,
      staticFireDate: staticFireDate ?? this.staticFireDate,
      isTentative: isTentative ?? this.isTentative,
      tentativeMaxPrecision:
          tentativeMaxPrecision ?? this.tentativeMaxPrecision,
      tbd: tbd ?? this.tbd,
      launchWindow: launchWindow ?? this.launchWindow,
      rocket: rocket ?? this.rocket,
      launchSuccess: launchSuccess ?? this.launchSuccess,
      links: links ?? this.links,
      launchSite: launchSite ?? this.launchSite,
      ships: ships ?? this.ships,
      details: details ?? this.details,
    );
  }

  @override
  List<Object?> get props => [
        id,
        flightNumber,
        missionName,
        launchDate,
        staticFireDate,
        isTentative,
        tentativeMaxPrecision,
        tbd,
        launchWindow,
        rocket,
        launchSuccess,
        links,
        launchSite,
        ships,
        details,
      ];
}

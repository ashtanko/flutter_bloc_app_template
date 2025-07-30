import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

import 'launch.dart';

@immutable
class LaunchResource extends Equatable {
  const LaunchResource({
    required this.id,
    required this.flightNumber,
    this.missionName,
    this.launchDays,
    this.launchTime,
    this.rocket,
    this.launchSuccess,
    this.links,
  });

  final String id;
  final int flightNumber;
  final String? missionName;
  final LaunchDays? launchDays;
  final String? launchTime;
  final RocketResource? rocket;
  final bool? launchSuccess;
  final LinksResource? links;

  LaunchResource copyWith({
    String? id,
    int? flightNumber,
    String? missionName,
    LaunchDays? launchDays,
    String? launchTime,
    RocketResource? rocket,
    bool? launchSuccess,
    LinksResource? links,
  }) {
    return LaunchResource(
      id: id ?? this.id,
      flightNumber: flightNumber ?? this.flightNumber,
      missionName: missionName ?? this.missionName,
      launchDays: launchDays ?? this.launchDays,
      launchTime: launchTime ?? this.launchTime,
      rocket: rocket ?? this.rocket,
      launchSuccess: launchSuccess ?? this.launchSuccess,
      links: links ?? this.links,
    );
  }

  @override
  List<Object?> get props => [
        id,
        flightNumber,
        missionName,
        launchDays,
        launchTime,
        rocket,
        launchSuccess,
        links,
      ];
}

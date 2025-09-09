import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
class CoreResource extends Equatable {
  const CoreResource({
    this.coreSerial,
    this.block,
    this.status,
    this.originalLaunch,
    this.originalLaunchUnix,
    this.missions,
    this.reuseCount,
    this.rtlsAttempts,
    this.rtlsLandings,
    this.asdsAttempts,
    this.asdsLandings,
    this.waterLanding,
    this.details,
  });

  final String? coreSerial;
  final int? block;
  final String? status;
  final String? originalLaunch;
  final int? originalLaunchUnix;
  final List<MissionResource>? missions;
  final int? reuseCount;
  final int? rtlsAttempts;
  final int? rtlsLandings;
  final int? asdsAttempts;
  final int? asdsLandings;
  final bool? waterLanding;
  final String? details;

  CoreResource copyWith({
    String? coreSerial,
    int? block,
    String? status,
    String? originalLaunch,
    int? originalLaunchUnix,
    List<MissionResource>? missions,
    int? reuseCount,
    int? rtlsAttempts,
    int? rtlsLandings,
    int? asdsAttempts,
    int? asdsLandings,
    bool? waterLanding,
    String? details,
  }) {
    return CoreResource(
      coreSerial: coreSerial ?? this.coreSerial,
      block: block ?? this.block,
      status: status ?? this.status,
      originalLaunch: originalLaunch ?? this.originalLaunch,
      originalLaunchUnix: originalLaunchUnix ?? this.originalLaunchUnix,
      missions: missions ?? this.missions,
      reuseCount: reuseCount ?? this.reuseCount,
      rtlsAttempts: rtlsAttempts ?? this.rtlsAttempts,
      rtlsLandings: rtlsLandings ?? this.rtlsLandings,
      asdsAttempts: asdsAttempts ?? this.asdsAttempts,
      asdsLandings: asdsLandings ?? this.asdsLandings,
      waterLanding: waterLanding ?? this.waterLanding,
      details: details ?? this.details,
    );
  }

  @override
  List<Object?> get props => [
    coreSerial,
    block,
    status,
    originalLaunch,
    originalLaunchUnix,
    missions,
    reuseCount,
    rtlsAttempts,
    rtlsLandings,
    asdsAttempts,
    asdsLandings,
    waterLanding,
    details,
  ];
}

@immutable
class MissionResource extends Equatable {
  const MissionResource({
    this.name,
    this.flight,
  });

  final String? name;
  final int? flight;

  @override
  List<Object?> get props => [name, flight];
}

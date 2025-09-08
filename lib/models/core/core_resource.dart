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

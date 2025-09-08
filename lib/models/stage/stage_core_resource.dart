import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
class StageCoreResource extends Equatable {
  const StageCoreResource({
    this.coreSerial,
    this.flight,
    this.block,
    this.gridfins,
    this.legs,
    this.reused,
    this.landSuccess,
    this.landingIntent,
    this.landingType,
    this.landingVehicle,
  });

  final String? coreSerial;
  final int? flight;
  final int? block;
  final bool? gridfins;
  final bool? legs;
  final bool? reused;
  final bool? landSuccess;
  final bool? landingIntent;
  final String? landingType;
  final String? landingVehicle;

  @override
  List<Object?> get props => [
        coreSerial,
        flight,
        block,
        gridfins,
        legs,
        reused,
        landSuccess,
        landingIntent,
        landingType,
        landingVehicle,
      ];
}

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc_app_template/models/rocket/rocket.dart';

@immutable
class RocketSecondStageResource extends Equatable {
  const RocketSecondStageResource({
    this.reusable,
    this.engines,
    this.fuelAmountTons,
    this.burnTimeSec,
    this.thrust,
  });

  final bool? reusable;
  final int? engines;
  final double? fuelAmountTons;
  final int? burnTimeSec;
  final ThrustResource? thrust;

  @override
  List<Object?> get props => [
        reusable,
        engines,
        fuelAmountTons,
        burnTimeSec,
        thrust,
      ];
}

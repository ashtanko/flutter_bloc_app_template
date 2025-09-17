import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc_app_template/models/rocket/thrust_resource.dart';

@immutable
class RocketFirstStageResource extends Equatable {
  const RocketFirstStageResource({
    this.thrustVacuum,
    this.reusable,
    this.engines,
    this.fuelAmountTons,
    this.burnTimeSec,
    this.thrustSeaLevel,
  });

  final bool? reusable;
  final int? engines;
  final double? fuelAmountTons;
  final int? burnTimeSec;
  final ThrustResource? thrustSeaLevel;
  final ThrustResource? thrustVacuum;

  @override
  List<Object?> get props => [
        reusable,
        engines,
        fuelAmountTons,
        burnTimeSec,
        thrustSeaLevel,
        thrustVacuum
      ];
}

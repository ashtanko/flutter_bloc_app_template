import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

import 'rocket.dart';

@immutable
class EnginesResource extends Equatable {
  const EnginesResource({
    this.number,
    this.type,
    this.version,
    this.layout,
    this.isp,
    this.engineLossMax,
    this.propellant1,
    this.propellant2,
    this.thrustSeaLevel,
    this.thrustVacuum,
    this.thrustToWeight,
  });

  final int? number;
  final String? type;
  final String? version;
  final String? layout;
  final IspResource? isp;
  final int? engineLossMax;
  final String? propellant1;
  final String? propellant2;
  final ThrustResource? thrustSeaLevel;
  final ThrustResource? thrustVacuum;
  final int? thrustToWeight;

  @override
  List<Object?> get props => [
        number,
        type,
        version,
        layout,
        isp,
        engineLossMax,
        propellant1,
        propellant2,
        thrustSeaLevel,
        thrustVacuum,
        thrustToWeight,
      ];
}

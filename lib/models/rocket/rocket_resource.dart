import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

import 'rocket.dart';

@immutable
class RocketResource extends Equatable {
  const RocketResource({
    this.id,
    this.active,
    this.stages,
    this.boosters,
    this.costPerLaunch,
    this.successRatePct,
    this.firstFlight,
    this.country,
    this.company,
    this.height,
    this.diameter,
    this.mass,
    this.payloadWeights,
    this.firstStage,
    this.secondStage,
    this.engines,
    this.landingLegs,
    this.flickrImages,
    this.wikipedia,
    this.description,
    this.rocketId,
    this.rocketName,
    this.rocketType,
  });

  final int? id;
  final bool? active;
  final int? stages;
  final int? boosters;
  final int? costPerLaunch;
  final int? successRatePct;
  final String? firstFlight;
  final String? country;
  final String? company;
  final DimensionResource? height;
  final DimensionResource? diameter;
  final MassResource? mass;
  final List<PayloadWeightResource>? payloadWeights;
  final RocketFirstStageResource? firstStage;
  final RocketSecondStageResource? secondStage;
  final EnginesResource? engines;
  final LandingLegsResource? landingLegs;
  final List<String>? flickrImages;
  final String? wikipedia;
  final String? description;
  final String? rocketId;
  final String? rocketName;
  final String? rocketType;

  @override
  List<Object?> get props => [
        id,
        active,
        stages,
        boosters,
        costPerLaunch,
        successRatePct,
        firstFlight,
        country,
        company,
        height,
        diameter,
        mass,
        payloadWeights,
        firstStage,
        secondStage,
        engines,
        landingLegs,
        flickrImages,
        wikipedia,
        description,
        rocketId,
        rocketName,
        rocketType,
      ];
}

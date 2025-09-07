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

  RocketResource copyWith({
    int? id,
    bool? active,
    int? stages,
    int? boosters,
    int? costPerLaunch,
    int? successRatePct,
    String? firstFlight,
    String? country,
    String? company,
    DimensionResource? height,
    DimensionResource? diameter,
    MassResource? mass,
    List<PayloadWeightResource>? payloadWeights,
    RocketFirstStageResource? firstStage,
    RocketSecondStageResource? secondStage,
    EnginesResource? engines,
    LandingLegsResource? landingLegs,
    List<String>? flickrImages,
    String? wikipedia,
    String? description,
    String? rocketId,
    String? rocketName,
    String? rocketType,
  }) {
    return RocketResource(
      id: id ?? this.id,
      active: active ?? this.active,
      stages: stages ?? this.stages,
      boosters: boosters ?? this.boosters,
      costPerLaunch: costPerLaunch ?? this.costPerLaunch,
      successRatePct: successRatePct ?? this.successRatePct,
      firstFlight: firstFlight ?? this.firstFlight,
      country: country ?? this.country,
      company: company ?? this.company,
      height: height ?? this.height,
      diameter: diameter ?? this.diameter,
      mass: mass ?? this.mass,
      payloadWeights: payloadWeights ?? this.payloadWeights,
      firstStage: firstStage ?? this.firstStage,
      secondStage: secondStage ?? this.secondStage,
      engines: engines ?? this.engines,
      landingLegs: landingLegs ?? this.landingLegs,
      flickrImages: flickrImages ?? this.flickrImages,
      wikipedia: wikipedia ?? this.wikipedia,
      description: description ?? this.description,
      rocketId: rocketId ?? this.rocketId,
      rocketName: rocketName ?? this.rocketName,
      rocketType: rocketType ?? this.rocketType,
    );
  }

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

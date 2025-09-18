import 'package:flutter_bloc_app_template/data/network/model/rocket/network_rocket_model.dart';
import 'package:flutter_bloc_app_template/index.dart';
import 'package:flutter_bloc_app_template/models/rocket/dimension_resource.dart';
import 'package:flutter_bloc_app_template/models/rocket/engines_resource.dart';
import 'package:flutter_bloc_app_template/models/rocket/isp_resource.dart';
import 'package:flutter_bloc_app_template/models/rocket/landing_legs_resource.dart';
import 'package:flutter_bloc_app_template/models/rocket/mass_resource.dart';
import 'package:flutter_bloc_app_template/models/rocket/payload_weight_resource.dart';
import 'package:flutter_bloc_app_template/models/rocket/rocket_first_stage_resource.dart';
import 'package:flutter_bloc_app_template/models/rocket/rocket_second_stage_resource.dart';
import 'package:flutter_bloc_app_template/models/rocket/thrust_resource.dart';

extension RocketExt on NetworkRocketModel {
  RocketResource toResource() {
    return RocketResource(
      id: id,
      active: active,
      stages: stages,
      boosters: boosters,
      costPerLaunch: costPerLaunch,
      successRatePct: successRatePct,
      firstFlight: firstFlight,
      country: country,
      company: company,
      height: height?.toResource(),
      diameter: diameter?.toResource(),
      mass: mass?.toResource(),
      payloadWeights: payloadWeights?.map((e) => e.toResource()).toList(),
      firstStage: firstStage?.toResource(),
      secondStage: secondStage?.toResource(),
      engines: engines?.toResource(),
      landingLegs: landingLegs?.toResource(),
      flickrImages: flickrImages,
      wikipedia: wikipedia,
      description: description,
      rocketId: rocketId,
      rocketName: name,
      rocketType: type,
    );
  }
}

extension RocketFirstStageResourceExt on NetworkRocketFirstStageModel {
  RocketFirstStageResource toResource() {
    return RocketFirstStageResource(
      thrustVacuum: thrustVacuum?.toResource(),
      reusable: reusable,
      engines: engines,
      fuelAmountTons: fuelAmountTons,
      burnTimeSec: burnTimeSec,
      thrustSeaLevel: thrustSeaLevel?.toResource(),
    );
  }
}

extension RocketSecondStageResourceExt on NetworkRocketSecondStageModel {
  RocketSecondStageResource toResource() {
    return RocketSecondStageResource(
      reusable: reusable,
      engines: engines,
      fuelAmountTons: fuelAmountTons,
      burnTimeSec: burnTimeSec,
      thrust: thrust?.toResource(),
    );
  }
}

extension DimensionExt on NetworkDimension {
  DimensionResource toResource() => DimensionResource(
        meters: meters,
        feet: feet,
      );
}

extension MassExt on NetworkMass {
  MassResource toResource() => MassResource(
        kg: kg,
        lb: lb,
      );
}

extension PayloadWeightExt on NetworkPayloadWeight {
  PayloadWeightResource toResource() => PayloadWeightResource(
        id: id,
        name: name,
        kg: kg,
        lb: lb,
      );
}

extension EnginesExt on NetworkEngines {
  EnginesResource toResource() => EnginesResource(
        number: number,
        type: type,
        version: version,
        layout: layout,
        isp: isp?.toResource(),
        engineLossMax: engineLossMax,
        propellant1: propellant1,
        propellant2: propellant2,
        thrustSeaLevel: thrustSeaLevel?.toResource(),
        thrustVacuum: thrustVacuum?.toResource(),
        thrustToWeight: thrustToWeight,
      );
}

extension IspExt on NetworkIsp {
  IspResource toResource() => IspResource(
        seaLevel: seaLevel,
        vacuum: vacuum,
      );
}

extension ThrustExt on NetworkThrust {
  ThrustResource toResource() => ThrustResource(
        kN: kN,
        lbf: lbf,
      );
}

extension LandingLegsExt on NetworkLandingLegs {
  LandingLegsResource toResource() => LandingLegsResource(
        number: number,
        material: material,
      );
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_rocket_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NetworkRocketModel _$NetworkRocketModelFromJson(Map<String, dynamic> json) =>
    _NetworkRocketModel(
      rocketId: json['rocket_id'] as String,
      id: (json['id'] as num?)?.toInt(),
      active: json['active'] as bool?,
      stages: (json['stages'] as num?)?.toInt(),
      boosters: (json['boosters'] as num?)?.toInt(),
      costPerLaunch: (json['cost_per_launch'] as num?)?.toInt(),
      successRatePct: (json['success_rate_pct'] as num?)?.toInt(),
      firstFlight: json['first_flight'] as String?,
      country: json['country'] as String?,
      company: json['company'] as String?,
      height: json['height'] == null
          ? null
          : NetworkDimension.fromJson(json['height'] as Map<String, dynamic>),
      diameter: json['diameter'] == null
          ? null
          : NetworkDimension.fromJson(json['diameter'] as Map<String, dynamic>),
      mass: json['mass'] == null
          ? null
          : NetworkMass.fromJson(json['mass'] as Map<String, dynamic>),
      payloadWeights: (json['payload_weights'] as List<dynamic>?)
          ?.map((e) => NetworkPayloadWeight.fromJson(e as Map<String, dynamic>))
          .toList(),
      engines: json['engines'] == null
          ? null
          : NetworkEngines.fromJson(json['engines'] as Map<String, dynamic>),
      wikipedia: json['wikipedia'] as String?,
      description: json['description'] as String?,
      landingLegs: json['landing_legs'] == null
          ? null
          : NetworkLandingLegs.fromJson(
              json['landing_legs'] as Map<String, dynamic>),
      flickrImages: (json['flickr_images'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      type: json['rocket_type'] as String?,
      name: json['rocket_name'] as String?,
      firstStage: json['first_stage'] == null
          ? null
          : NetworkRocketFirstStageModel.fromJson(
              json['first_stage'] as Map<String, dynamic>),
      secondStage: json['second_stage'] == null
          ? null
          : NetworkRocketSecondStageModel.fromJson(
              json['second_stage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NetworkRocketModelToJson(_NetworkRocketModel instance) =>
    <String, dynamic>{
      'rocket_id': instance.rocketId,
      'id': instance.id,
      'active': instance.active,
      'stages': instance.stages,
      'boosters': instance.boosters,
      'cost_per_launch': instance.costPerLaunch,
      'success_rate_pct': instance.successRatePct,
      'first_flight': instance.firstFlight,
      'country': instance.country,
      'company': instance.company,
      'height': instance.height,
      'diameter': instance.diameter,
      'mass': instance.mass,
      'payload_weights': instance.payloadWeights,
      'engines': instance.engines,
      'wikipedia': instance.wikipedia,
      'description': instance.description,
      'landing_legs': instance.landingLegs,
      'flickr_images': instance.flickrImages,
      'rocket_type': instance.type,
      'rocket_name': instance.name,
      'first_stage': instance.firstStage,
      'second_stage': instance.secondStage,
    };

_NetworkRocketFirstStageModel _$NetworkRocketFirstStageModelFromJson(
        Map<String, dynamic> json) =>
    _NetworkRocketFirstStageModel(
      reusable: json['reusable'] as bool?,
      engines: (json['engines'] as num?)?.toInt(),
      fuelAmountTons: (json['fuel_amount_tons'] as num?)?.toDouble(),
      burnTimeSec: (json['burn_time_sec'] as num?)?.toInt(),
      thrustSeaLevel: json['thrust_sea_level'] == null
          ? null
          : NetworkThrust.fromJson(
              json['thrust_sea_level'] as Map<String, dynamic>),
      thrustVacuum: json['thrust_vacuum'] == null
          ? null
          : NetworkThrust.fromJson(
              json['thrust_vacuum'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NetworkRocketFirstStageModelToJson(
        _NetworkRocketFirstStageModel instance) =>
    <String, dynamic>{
      'reusable': instance.reusable,
      'engines': instance.engines,
      'fuel_amount_tons': instance.fuelAmountTons,
      'burn_time_sec': instance.burnTimeSec,
      'thrust_sea_level': instance.thrustSeaLevel,
      'thrust_vacuum': instance.thrustVacuum,
    };

_NetworkRocketSecondStageModel _$NetworkRocketSecondStageModelFromJson(
        Map<String, dynamic> json) =>
    _NetworkRocketSecondStageModel(
      reusable: json['reusable'] as bool?,
      engines: (json['engines'] as num?)?.toInt(),
      fuelAmountTons: (json['fuel_amount_tons'] as num?)?.toDouble(),
      burnTimeSec: (json['burn_time_sec'] as num?)?.toInt(),
      thrust: json['thrust'] == null
          ? null
          : NetworkThrust.fromJson(json['thrust'] as Map<String, dynamic>),
      payloads: json['payloads'] == null
          ? null
          : NetworkRocketPayloadsModel.fromJson(
              json['payloads'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NetworkRocketSecondStageModelToJson(
        _NetworkRocketSecondStageModel instance) =>
    <String, dynamic>{
      'reusable': instance.reusable,
      'engines': instance.engines,
      'fuel_amount_tons': instance.fuelAmountTons,
      'burn_time_sec': instance.burnTimeSec,
      'thrust': instance.thrust,
      'payloads': instance.payloads,
    };

_NetworkRocketPayloadsModel _$NetworkRocketPayloadsModelFromJson(
        Map<String, dynamic> json) =>
    _NetworkRocketPayloadsModel(
      option_1: json['option_1'] as String?,
      compositeFairing: json['composite_fairing'] == null
          ? null
          : NetworkCompositeFairing.fromJson(
              json['composite_fairing'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NetworkRocketPayloadsModelToJson(
        _NetworkRocketPayloadsModel instance) =>
    <String, dynamic>{
      'option_1': instance.option_1,
      'composite_fairing': instance.compositeFairing,
    };

_NetworkCompositeFairing _$NetworkCompositeFairingFromJson(
        Map<String, dynamic> json) =>
    _NetworkCompositeFairing(
      height: json['height'] == null
          ? null
          : NetworkDimension.fromJson(json['height'] as Map<String, dynamic>),
      diameter: json['diameter'] == null
          ? null
          : NetworkDimension.fromJson(json['diameter'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NetworkCompositeFairingToJson(
        _NetworkCompositeFairing instance) =>
    <String, dynamic>{
      'height': instance.height,
      'diameter': instance.diameter,
    };

_NetworkDimension _$NetworkDimensionFromJson(Map<String, dynamic> json) =>
    _NetworkDimension(
      meters: (json['meters'] as num?)?.toDouble(),
      feet: (json['feet'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$NetworkDimensionToJson(_NetworkDimension instance) =>
    <String, dynamic>{
      'meters': instance.meters,
      'feet': instance.feet,
    };

_NetworkMass _$NetworkMassFromJson(Map<String, dynamic> json) => _NetworkMass(
      kg: (json['kg'] as num?)?.toInt(),
      lb: (json['lb'] as num?)?.toInt(),
    );

Map<String, dynamic> _$NetworkMassToJson(_NetworkMass instance) =>
    <String, dynamic>{
      'kg': instance.kg,
      'lb': instance.lb,
    };

_NetworkPayloadWeight _$NetworkPayloadWeightFromJson(
        Map<String, dynamic> json) =>
    _NetworkPayloadWeight(
      id: json['id'] as String?,
      name: json['name'] as String?,
      kg: (json['kg'] as num?)?.toInt(),
      lb: (json['lb'] as num?)?.toInt(),
    );

Map<String, dynamic> _$NetworkPayloadWeightToJson(
        _NetworkPayloadWeight instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'kg': instance.kg,
      'lb': instance.lb,
    };

_NetworkEngines _$NetworkEnginesFromJson(Map<String, dynamic> json) =>
    _NetworkEngines(
      number: (json['number'] as num?)?.toInt(),
      type: json['type'] as String?,
      version: json['version'] as String?,
      layout: json['layout'] as String?,
      isp: json['isp'] == null
          ? null
          : NetworkIsp.fromJson(json['isp'] as Map<String, dynamic>),
      engineLossMax: (json['engine_loss_max'] as num?)?.toInt(),
      propellant1: json['propellant_1'] as String?,
      propellant2: json['propellant_2'] as String?,
      thrustSeaLevel: json['thrust_sea_level'] == null
          ? null
          : NetworkThrust.fromJson(
              json['thrust_sea_level'] as Map<String, dynamic>),
      thrustVacuum: json['thrust_vacuum'] == null
          ? null
          : NetworkThrust.fromJson(
              json['thrust_vacuum'] as Map<String, dynamic>),
      thrustToWeight: (json['thrust_to_weight'] as num?)?.toInt(),
    );

Map<String, dynamic> _$NetworkEnginesToJson(_NetworkEngines instance) =>
    <String, dynamic>{
      'number': instance.number,
      'type': instance.type,
      'version': instance.version,
      'layout': instance.layout,
      'isp': instance.isp,
      'engine_loss_max': instance.engineLossMax,
      'propellant_1': instance.propellant1,
      'propellant_2': instance.propellant2,
      'thrust_sea_level': instance.thrustSeaLevel,
      'thrust_vacuum': instance.thrustVacuum,
      'thrust_to_weight': instance.thrustToWeight,
    };

_NetworkIsp _$NetworkIspFromJson(Map<String, dynamic> json) => _NetworkIsp(
      seaLevel: (json['sea_level'] as num?)?.toInt(),
      vacuum: (json['vacuum'] as num?)?.toInt(),
    );

Map<String, dynamic> _$NetworkIspToJson(_NetworkIsp instance) =>
    <String, dynamic>{
      'sea_level': instance.seaLevel,
      'vacuum': instance.vacuum,
    };

_NetworkThrust _$NetworkThrustFromJson(Map<String, dynamic> json) =>
    _NetworkThrust(
      kN: (json['kN'] as num?)?.toDouble(),
      lbf: (json['lbf'] as num?)?.toInt(),
    );

Map<String, dynamic> _$NetworkThrustToJson(_NetworkThrust instance) =>
    <String, dynamic>{
      'kN': instance.kN,
      'lbf': instance.lbf,
    };

_NetworkLandingLegs _$NetworkLandingLegsFromJson(Map<String, dynamic> json) =>
    _NetworkLandingLegs(
      number: (json['number'] as num?)?.toInt(),
      material: json['material'] as String?,
    );

Map<String, dynamic> _$NetworkLandingLegsToJson(_NetworkLandingLegs instance) =>
    <String, dynamic>{
      'number': instance.number,
      'material': instance.material,
    };

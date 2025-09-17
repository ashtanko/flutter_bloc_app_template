import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_rocket_model.freezed.dart';
part 'network_rocket_model.g.dart';

@freezed
abstract class NetworkRocketModel with _$NetworkRocketModel {
  const factory NetworkRocketModel({
    @JsonKey(name: 'rocket_id') required String rocketId,
    int? id,
    bool? active,
    int? stages,
    int? boosters,
    @JsonKey(name: 'cost_per_launch') int? costPerLaunch,
    @JsonKey(name: 'success_rate_pct') int? successRatePct,
    @JsonKey(name: 'first_flight') String? firstFlight,
    String? country,
    String? company,
    NetworkDimension? height,
    NetworkDimension? diameter,
    NetworkMass? mass,
    @JsonKey(name: 'payload_weights')
    List<NetworkPayloadWeight>? payloadWeights,
    NetworkEngines? engines,
    String? wikipedia,
    String? description,
    @JsonKey(name: 'landing_legs') NetworkLandingLegs? landingLegs,
    @JsonKey(name: 'flickr_images') List<String>? flickrImages,
    @JsonKey(name: 'rocket_type') String? type,
    @JsonKey(name: 'rocket_name') String? name,
    @JsonKey(name: 'first_stage') NetworkRocketFirstStageModel? firstStage,
    @JsonKey(name: 'second_stage') NetworkRocketSecondStageModel? secondStage,
  }) = _NetworkRocketModel;

  const NetworkRocketModel._();

  factory NetworkRocketModel.fromJson(Map<String, dynamic> json) =>
      _$NetworkRocketModelFromJson(json);
}

@freezed
abstract class NetworkRocketFirstStageModel
    with _$NetworkRocketFirstStageModel {
  const factory NetworkRocketFirstStageModel({
    bool? reusable,
    int? engines,
    @JsonKey(name: 'fuel_amount_tons') double? fuelAmountTons,
    @JsonKey(name: 'burn_time_sec') int? burnTimeSec,
    @JsonKey(name: 'thrust_sea_level') NetworkThrust? thrustSeaLevel,
    @JsonKey(name: 'thrust_vacuum') NetworkThrust? thrustVacuum,
  }) = _NetworkRocketFirstStageModel;

  factory NetworkRocketFirstStageModel.fromJson(Map<String, dynamic> json) =>
      _$NetworkRocketFirstStageModelFromJson(json);
}

@freezed
abstract class NetworkRocketSecondStageModel
    with _$NetworkRocketSecondStageModel {
  const factory NetworkRocketSecondStageModel({
    bool? reusable,
    int? engines,
    @JsonKey(name: 'fuel_amount_tons') double? fuelAmountTons,
    @JsonKey(name: 'burn_time_sec') int? burnTimeSec,
    NetworkThrust? thrust,
    NetworkRocketPayloadsModel? payloads,
  }) = _NetworkRocketSecondStageModel;

  factory NetworkRocketSecondStageModel.fromJson(Map<String, dynamic> json) =>
      _$NetworkRocketSecondStageModelFromJson(json);
}

@freezed
abstract class NetworkRocketPayloadsModel with _$NetworkRocketPayloadsModel {
  const factory NetworkRocketPayloadsModel({
    String? option_1,
    @JsonKey(name: 'composite_fairing')
    NetworkCompositeFairing? compositeFairing,
  }) = _NetworkRocketPayloadsModel;

  factory NetworkRocketPayloadsModel.fromJson(Map<String, dynamic> json) =>
      _$NetworkRocketPayloadsModelFromJson(json);
}

@freezed
abstract class NetworkCompositeFairing with _$NetworkCompositeFairing {
  const factory NetworkCompositeFairing({
    NetworkDimension? height,
    NetworkDimension? diameter,
  }) = _NetworkCompositeFairing;

  factory NetworkCompositeFairing.fromJson(Map<String, dynamic> json) =>
      _$NetworkCompositeFairingFromJson(json);
}

@freezed
abstract class NetworkDimension with _$NetworkDimension {
  const factory NetworkDimension({
    double? meters,
    double? feet,
  }) = _NetworkDimension;

  factory NetworkDimension.fromJson(Map<String, dynamic> json) =>
      _$NetworkDimensionFromJson(json);
}

@freezed
abstract class NetworkMass with _$NetworkMass {
  const factory NetworkMass({
    int? kg,
    int? lb,
  }) = _NetworkMass;

  factory NetworkMass.fromJson(Map<String, dynamic> json) =>
      _$NetworkMassFromJson(json);
}

@freezed
abstract class NetworkPayloadWeight with _$NetworkPayloadWeight {
  const factory NetworkPayloadWeight({
    String? id,
    String? name,
    int? kg,
    int? lb,
  }) = _NetworkPayloadWeight;

  factory NetworkPayloadWeight.fromJson(Map<String, dynamic> json) =>
      _$NetworkPayloadWeightFromJson(json);
}

@freezed
abstract class NetworkEngines with _$NetworkEngines {
  const factory NetworkEngines({
    int? number,
    String? type,
    String? version,
    String? layout,
    NetworkIsp? isp,
    @JsonKey(name: 'engine_loss_max') int? engineLossMax,
    @JsonKey(name: 'propellant_1') String? propellant1,
    @JsonKey(name: 'propellant_2') String? propellant2,
    @JsonKey(name: 'thrust_sea_level') NetworkThrust? thrustSeaLevel,
    @JsonKey(name: 'thrust_vacuum') NetworkThrust? thrustVacuum,
    @JsonKey(name: 'thrust_to_weight') int? thrustToWeight,
  }) = _NetworkEngines;

  factory NetworkEngines.fromJson(Map<String, dynamic> json) =>
      _$NetworkEnginesFromJson(json);
}

@freezed
abstract class NetworkIsp with _$NetworkIsp {
  const factory NetworkIsp({
    @JsonKey(name: 'sea_level') int? seaLevel,
    int? vacuum,
  }) = _NetworkIsp;

  factory NetworkIsp.fromJson(Map<String, dynamic> json) =>
      _$NetworkIspFromJson(json);
}

@freezed
abstract class NetworkThrust with _$NetworkThrust {
  const factory NetworkThrust({
    double? kN,
    int? lbf,
  }) = _NetworkThrust;

  factory NetworkThrust.fromJson(Map<String, dynamic> json) =>
      _$NetworkThrustFromJson(json);
}

@freezed
abstract class NetworkLandingLegs with _$NetworkLandingLegs {
  const factory NetworkLandingLegs({
    int? number,
    String? material,
  }) = _NetworkLandingLegs;

  factory NetworkLandingLegs.fromJson(Map<String, dynamic> json) =>
      _$NetworkLandingLegsFromJson(json);
}

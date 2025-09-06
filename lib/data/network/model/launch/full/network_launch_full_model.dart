import 'package:flutter_bloc_app_template/data/network/converter/timestamp_serializer.dart';
import 'package:flutter_bloc_app_template/data/network/model/launch/network_launch_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_launch_full_model.freezed.dart';
part 'network_launch_full_model.g.dart';

@freezed
abstract class NetworkLaunchFullModel with _$NetworkLaunchFullModel {
  const factory NetworkLaunchFullModel({
    @JsonKey(name: '_id') String? id,
    @JsonKey(name: 'flight_number') int? flightNumber,
    @JsonKey(name: 'mission_name') String? missionName,
    @JsonKey(name: 'mission_id') List<dynamic>? missionId,
    @JsonKey(name: 'upcoming') bool? upcoming,
    @JsonKey(name: 'launch_year') String? launchYear,
    @JsonKey(name: 'launch_date_unix') int? launchDateUnix,
    @TimestampSerializer()
    @JsonKey(name: 'launch_date_utc')
    DateTime? launchDate,
    @JsonKey(name: 'launch_date_local') String? launchDateLocal,
    @JsonKey(name: 'is_tentative') bool? isTentative,
    @JsonKey(name: 'tentative_max_precision') String? tentativeMaxPrecision,
    @JsonKey(name: 'tbd') bool? tbd,
    @JsonKey(name: 'launch_window') int? launchWindow,
    @JsonKey(name: 'rocket') NetworkRocketModel? rocket,
    @JsonKey(name: 'ships') List<String>? ships,
    @JsonKey(name: 'telemetry') NetworkTelemetry? telemetry,
    @JsonKey(name: 'launch_site') NetworkLaunchSite? launchSite,
    @JsonKey(name: 'launch_success') bool? success,
    @JsonKey(name: 'launch_failure_details')
    NetworkLaunchFailureDetails? launchFailureDetails,
    @JsonKey(name: 'links') NetworkLaunchLinksModel? links,
    String? details,
    @TimestampSerializer()
    @JsonKey(name: 'static_fire_date_utc')
    DateTime? staticFireDate,
    @JsonKey(name: 'static_fire_date_unix') int? staticFireDateUnix,
    NetworkTimeline? timeline,
  }) = _NetworkLaunchFullModel;

  factory NetworkLaunchFullModel.fromJson(Map<String, dynamic> json) =>
      _$NetworkLaunchFullModelFromJson(json);
}

@freezed
abstract class NetworkFirstStage with _$NetworkFirstStage {
  const factory NetworkFirstStage({
    required List<NetworkCore>? cores,
  }) = _NetworkFirstStage;

  factory NetworkFirstStage.fromJson(Map<String, dynamic> json) =>
      _$NetworkFirstStageFromJson(json);
}

@freezed
abstract class NetworkCore with _$NetworkCore {
  const factory NetworkCore({
    @JsonKey(name: 'core_serial') String? coreSerial,
    @JsonKey(name: 'flight') int? flight,
    @JsonKey(name: 'block') String? block,
    @JsonKey(name: 'gridfins') bool? gridfins,
    @JsonKey(name: 'legs') bool? legs,
    @JsonKey(name: 'reused') bool? reused,
    @JsonKey(name: 'land_success') bool? landSuccess,
    @JsonKey(name: 'landing_intent') bool? landingIntent,
    @JsonKey(name: 'landing_type') String? landingType,
    @JsonKey(name: 'landing_vehicle') String? landingVehicle,
  }) = _NetworkCore;

  factory NetworkCore.fromJson(Map<String, dynamic> json) =>
      _$NetworkCoreFromJson(json);
}

@freezed
abstract class NetworkSecondStage with _$NetworkSecondStage {
  const factory NetworkSecondStage({
    int? block,
    List<NetworkPayload>? payloads,
  }) = _NetworkSecondStage;

  factory NetworkSecondStage.fromJson(Map<String, dynamic> json) =>
      _$NetworkSecondStageFromJson(json);
}

@freezed
abstract class NetworkPayload with _$NetworkPayload {
  const factory NetworkPayload({
    @JsonKey(name: 'payload_id') String? payloadId,
    @JsonKey(name: 'norad_id') List<dynamic>? noradId,
    @JsonKey(name: 'reused') bool? reused,
    @JsonKey(name: 'customers') List<String>? customers,
    @JsonKey(name: 'nationality') String? nationality,
    @JsonKey(name: 'manufacturer') String? manufacturer,
    @JsonKey(name: 'payload_type') String? payloadType,
    @JsonKey(name: 'payload_mass_kg') int? payloadMassKg,
    @JsonKey(name: 'payload_mass_lbs') int? payloadMassLbs,
    @JsonKey(name: 'orbit') String? orbit,
    @JsonKey(name: 'orbit_params') NetworkOrbitParams? orbitParams,
  }) = _NetworkPayload;

  factory NetworkPayload.fromJson(Map<String, dynamic> json) =>
      _$NetworkPayloadFromJson(json);
}

@freezed
abstract class NetworkOrbitParams with _$NetworkOrbitParams {
  const factory NetworkOrbitParams({
    @JsonKey(name: 'reference_system') String? referenceSystem,
    @JsonKey(name: 'regime') String? regime,
    @JsonKey(name: 'longitude') int? longitude,
    @JsonKey(name: 'semi_major_axis_km') double? semiMajorAxisKm,
    @JsonKey(name: 'eccentricity') double? eccentricity,
    @JsonKey(name: 'periapsis_km') int? periapsisKm,
    @JsonKey(name: 'apoapsis_km') int? apoapsisKm,
    @JsonKey(name: 'inclination_deg') int? inclinationDeg,
  }) = _NetworkOrbitParams;

  factory NetworkOrbitParams.fromJson(Map<String, dynamic> json) =>
      _$NetworkOrbitParamsFromJson(json);
}

@freezed
abstract class NetworkFairings with _$NetworkFairings {
  const factory NetworkFairings({
    @JsonKey(name: 'reused') bool? reused,
    @JsonKey(name: 'recovery_attempt') bool? recoveryAttempt,
    @JsonKey(name: 'recovered') bool? recovered,
    @JsonKey(name: 'ship') String? ship,
  }) = _NetworkFairings;

  factory NetworkFairings.fromJson(Map<String, dynamic> json) =>
      _$NetworkFairingsFromJson(json);
}

@freezed
abstract class NetworkTelemetry with _$NetworkTelemetry {
  const factory NetworkTelemetry({
    @JsonKey(name: 'flight_club') String? flightClub,
  }) = _NetworkTelemetry;

  factory NetworkTelemetry.fromJson(Map<String, dynamic> json) =>
      _$NetworkTelemetryFromJson(json);
}

@freezed
abstract class NetworkLaunchSite with _$NetworkLaunchSite {
  const factory NetworkLaunchSite({
    @JsonKey(name: 'site_id') String? siteId,
    @JsonKey(name: 'site_name') String? siteName,
    @JsonKey(name: 'site_name_long') String? siteNameLong,
  }) = _NetworkLaunchSite;

  factory NetworkLaunchSite.fromJson(Map<String, dynamic> json) =>
      _$NetworkLaunchSiteFromJson(json);
}

@freezed
abstract class NetworkLaunchFailureDetails with _$NetworkLaunchFailureDetails {
  const factory NetworkLaunchFailureDetails({
    @JsonKey(name: 'time') int? time,
    @JsonKey(name: 'altitude') int? altitude,
    @JsonKey(name: 'reason') String? reason,
  }) = _NetworkLaunchFailureDetails;

  factory NetworkLaunchFailureDetails.fromJson(Map<String, dynamic> json) =>
      _$NetworkLaunchFailureDetailsFromJson(json);
}

@freezed
abstract class NetworkTimeline with _$NetworkTimeline {
  const factory NetworkTimeline({
    @JsonKey(name: 'webcast_liftoff') int? webcastLiftoff,
  }) = _NetworkTimeline;

  factory NetworkTimeline.fromJson(Map<String, dynamic> json) =>
      _$NetworkTimelineFromJson(json);
}

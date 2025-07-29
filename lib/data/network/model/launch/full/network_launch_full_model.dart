import 'package:flutter_bloc_app_template/data/network/model/launch/network_launch_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_launch_full_model.freezed.dart';
part 'network_launch_full_model.g.dart';

@freezed
abstract class NetworkLaunchFullModel with _$NetworkLaunchFullModel {
  const factory NetworkLaunchFullModel({
    required int flightNumber,
    String? missionName,
    List<dynamic>? missionId,
    bool? upcoming,
    String? launchYear,
    int? launchDateUnix,
    String? launchDateUtc,
    String? launchDateLocal,
    bool? isTentative,
    String? tentativeMaxPrecision,
    bool? tbd,
    int? launchWindow,
    NetworkRocketModel? rocket,
    List<dynamic>? ships,
    NetworkTelemetry? telemetry,
    NetworkLaunchSite? launchSite,
    bool? launchSuccess,
    NetworkLaunchFailureDetails? launchFailureDetails,
    NetworkLaunchLinksModel? links,
    String? details,
    String? staticFireDateUtc,
    int? staticFireDateUnix,
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
    String? coreSerial,
    int? flight,
    String? block,
    bool? gridfins,
    bool? legs,
    bool? reused,
    bool? landSuccess,
    bool? landingIntent,
    String? landingType,
    String? landingVehicle,
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
    String? payloadId,
    List<dynamic>? noradId,
    bool? reused,
    List<String>? customers,
    String? nationality,
    String? manufacturer,
    String? payloadType,
    int? payloadMassKg,
    int? payloadMassLbs,
    String? orbit,
    NetworkOrbitParams? orbitParams,
  }) = _NetworkPayload;

  factory NetworkPayload.fromJson(Map<String, dynamic> json) =>
      _$NetworkPayloadFromJson(json);
}

@freezed
abstract class NetworkOrbitParams with _$NetworkOrbitParams {
  const factory NetworkOrbitParams({
    String? referenceSystem,
    String? regime,
    int? longitude,
    double? semiMajorAxisKm,
    double? eccentricity,
    int? periapsisKm,
    int? apoapsisKm,
    int? inclinationDeg,
  }) = _NetworkOrbitParams;

  factory NetworkOrbitParams.fromJson(Map<String, dynamic> json) =>
      _$NetworkOrbitParamsFromJson(json);
}

@freezed
abstract class NetworkFairings with _$NetworkFairings {
  const factory NetworkFairings({
    bool? reused,
    bool? recoveryAttempt,
    bool? recovered,
    String? ship,
  }) = _NetworkFairings;

  factory NetworkFairings.fromJson(Map<String, dynamic> json) =>
      _$NetworkFairingsFromJson(json);
}

@freezed
abstract class NetworkTelemetry with _$NetworkTelemetry {
  const factory NetworkTelemetry({
    String? flightClub,
  }) = _NetworkTelemetry;

  factory NetworkTelemetry.fromJson(Map<String, dynamic> json) =>
      _$NetworkTelemetryFromJson(json);
}

@freezed
abstract class NetworkLaunchSite with _$NetworkLaunchSite {
  const factory NetworkLaunchSite({
    String? siteId,
    String? siteName,
    String? siteNameLong,
  }) = _NetworkLaunchSite;

  factory NetworkLaunchSite.fromJson(Map<String, dynamic> json) =>
      _$NetworkLaunchSiteFromJson(json);
}

@freezed
abstract class NetworkLaunchFailureDetails with _$NetworkLaunchFailureDetails {
  const factory NetworkLaunchFailureDetails({
    int? time,
    String? altitude,
    String? reason,
  }) = _NetworkLaunchFailureDetails;

  factory NetworkLaunchFailureDetails.fromJson(Map<String, dynamic> json) =>
      _$NetworkLaunchFailureDetailsFromJson(json);
}

@freezed
abstract class NetworkTimeline with _$NetworkTimeline {
  const factory NetworkTimeline({
    int? webcastLiftoff,
  }) = _NetworkTimeline;

  factory NetworkTimeline.fromJson(Map<String, dynamic> json) =>
      _$NetworkTimelineFromJson(json);
}

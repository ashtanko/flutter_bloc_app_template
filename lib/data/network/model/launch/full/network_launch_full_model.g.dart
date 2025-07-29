// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_launch_full_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NetworkLaunchFullModel _$NetworkLaunchFullModelFromJson(
        Map<String, dynamic> json) =>
    _NetworkLaunchFullModel(
      flightNumber: (json['flightNumber'] as num).toInt(),
      missionName: json['missionName'] as String?,
      missionId: json['missionId'] as List<dynamic>?,
      upcoming: json['upcoming'] as bool?,
      launchYear: json['launchYear'] as String?,
      launchDateUnix: (json['launchDateUnix'] as num?)?.toInt(),
      launchDateUtc: json['launchDateUtc'] as String?,
      launchDateLocal: json['launchDateLocal'] as String?,
      isTentative: json['isTentative'] as bool?,
      tentativeMaxPrecision: json['tentativeMaxPrecision'] as String?,
      tbd: json['tbd'] as bool?,
      launchWindow: (json['launchWindow'] as num?)?.toInt(),
      rocket: json['rocket'] == null
          ? null
          : NetworkRocketModel.fromJson(json['rocket'] as Map<String, dynamic>),
      ships: json['ships'] as List<dynamic>?,
      telemetry: json['telemetry'] == null
          ? null
          : NetworkTelemetry.fromJson(
              json['telemetry'] as Map<String, dynamic>),
      launchSite: json['launchSite'] == null
          ? null
          : NetworkLaunchSite.fromJson(
              json['launchSite'] as Map<String, dynamic>),
      launchSuccess: json['launchSuccess'] as bool?,
      launchFailureDetails: json['launchFailureDetails'] == null
          ? null
          : NetworkLaunchFailureDetails.fromJson(
              json['launchFailureDetails'] as Map<String, dynamic>),
      links: json['links'] == null
          ? null
          : NetworkLaunchLinksModel.fromJson(
              json['links'] as Map<String, dynamic>),
      details: json['details'] as String?,
      staticFireDateUtc: json['staticFireDateUtc'] as String?,
      staticFireDateUnix: (json['staticFireDateUnix'] as num?)?.toInt(),
      timeline: json['timeline'] == null
          ? null
          : NetworkTimeline.fromJson(json['timeline'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NetworkLaunchFullModelToJson(
        _NetworkLaunchFullModel instance) =>
    <String, dynamic>{
      'flightNumber': instance.flightNumber,
      'missionName': instance.missionName,
      'missionId': instance.missionId,
      'upcoming': instance.upcoming,
      'launchYear': instance.launchYear,
      'launchDateUnix': instance.launchDateUnix,
      'launchDateUtc': instance.launchDateUtc,
      'launchDateLocal': instance.launchDateLocal,
      'isTentative': instance.isTentative,
      'tentativeMaxPrecision': instance.tentativeMaxPrecision,
      'tbd': instance.tbd,
      'launchWindow': instance.launchWindow,
      'rocket': instance.rocket,
      'ships': instance.ships,
      'telemetry': instance.telemetry,
      'launchSite': instance.launchSite,
      'launchSuccess': instance.launchSuccess,
      'launchFailureDetails': instance.launchFailureDetails,
      'links': instance.links,
      'details': instance.details,
      'staticFireDateUtc': instance.staticFireDateUtc,
      'staticFireDateUnix': instance.staticFireDateUnix,
      'timeline': instance.timeline,
    };

_NetworkFirstStage _$NetworkFirstStageFromJson(Map<String, dynamic> json) =>
    _NetworkFirstStage(
      cores: (json['cores'] as List<dynamic>?)
          ?.map((e) => NetworkCore.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NetworkFirstStageToJson(_NetworkFirstStage instance) =>
    <String, dynamic>{
      'cores': instance.cores,
    };

_NetworkCore _$NetworkCoreFromJson(Map<String, dynamic> json) => _NetworkCore(
      coreSerial: json['coreSerial'] as String?,
      flight: (json['flight'] as num?)?.toInt(),
      block: json['block'] as String?,
      gridfins: json['gridfins'] as bool?,
      legs: json['legs'] as bool?,
      reused: json['reused'] as bool?,
      landSuccess: json['landSuccess'] as bool?,
      landingIntent: json['landingIntent'] as bool?,
      landingType: json['landingType'] as String?,
      landingVehicle: json['landingVehicle'] as String?,
    );

Map<String, dynamic> _$NetworkCoreToJson(_NetworkCore instance) =>
    <String, dynamic>{
      'coreSerial': instance.coreSerial,
      'flight': instance.flight,
      'block': instance.block,
      'gridfins': instance.gridfins,
      'legs': instance.legs,
      'reused': instance.reused,
      'landSuccess': instance.landSuccess,
      'landingIntent': instance.landingIntent,
      'landingType': instance.landingType,
      'landingVehicle': instance.landingVehicle,
    };

_NetworkSecondStage _$NetworkSecondStageFromJson(Map<String, dynamic> json) =>
    _NetworkSecondStage(
      block: (json['block'] as num?)?.toInt(),
      payloads: (json['payloads'] as List<dynamic>?)
          ?.map((e) => NetworkPayload.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NetworkSecondStageToJson(_NetworkSecondStage instance) =>
    <String, dynamic>{
      'block': instance.block,
      'payloads': instance.payloads,
    };

_NetworkPayload _$NetworkPayloadFromJson(Map<String, dynamic> json) =>
    _NetworkPayload(
      payloadId: json['payloadId'] as String?,
      noradId: json['noradId'] as List<dynamic>?,
      reused: json['reused'] as bool?,
      customers: (json['customers'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      nationality: json['nationality'] as String?,
      manufacturer: json['manufacturer'] as String?,
      payloadType: json['payloadType'] as String?,
      payloadMassKg: (json['payloadMassKg'] as num?)?.toInt(),
      payloadMassLbs: (json['payloadMassLbs'] as num?)?.toInt(),
      orbit: json['orbit'] as String?,
      orbitParams: json['orbitParams'] == null
          ? null
          : NetworkOrbitParams.fromJson(
              json['orbitParams'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NetworkPayloadToJson(_NetworkPayload instance) =>
    <String, dynamic>{
      'payloadId': instance.payloadId,
      'noradId': instance.noradId,
      'reused': instance.reused,
      'customers': instance.customers,
      'nationality': instance.nationality,
      'manufacturer': instance.manufacturer,
      'payloadType': instance.payloadType,
      'payloadMassKg': instance.payloadMassKg,
      'payloadMassLbs': instance.payloadMassLbs,
      'orbit': instance.orbit,
      'orbitParams': instance.orbitParams,
    };

_NetworkOrbitParams _$NetworkOrbitParamsFromJson(Map<String, dynamic> json) =>
    _NetworkOrbitParams(
      referenceSystem: json['referenceSystem'] as String?,
      regime: json['regime'] as String?,
      longitude: (json['longitude'] as num?)?.toInt(),
      semiMajorAxisKm: (json['semiMajorAxisKm'] as num?)?.toDouble(),
      eccentricity: (json['eccentricity'] as num?)?.toDouble(),
      periapsisKm: (json['periapsisKm'] as num?)?.toInt(),
      apoapsisKm: (json['apoapsisKm'] as num?)?.toInt(),
      inclinationDeg: (json['inclinationDeg'] as num?)?.toInt(),
    );

Map<String, dynamic> _$NetworkOrbitParamsToJson(_NetworkOrbitParams instance) =>
    <String, dynamic>{
      'referenceSystem': instance.referenceSystem,
      'regime': instance.regime,
      'longitude': instance.longitude,
      'semiMajorAxisKm': instance.semiMajorAxisKm,
      'eccentricity': instance.eccentricity,
      'periapsisKm': instance.periapsisKm,
      'apoapsisKm': instance.apoapsisKm,
      'inclinationDeg': instance.inclinationDeg,
    };

_NetworkFairings _$NetworkFairingsFromJson(Map<String, dynamic> json) =>
    _NetworkFairings(
      reused: json['reused'] as bool?,
      recoveryAttempt: json['recoveryAttempt'] as bool?,
      recovered: json['recovered'] as bool?,
      ship: json['ship'] as String?,
    );

Map<String, dynamic> _$NetworkFairingsToJson(_NetworkFairings instance) =>
    <String, dynamic>{
      'reused': instance.reused,
      'recoveryAttempt': instance.recoveryAttempt,
      'recovered': instance.recovered,
      'ship': instance.ship,
    };

_NetworkTelemetry _$NetworkTelemetryFromJson(Map<String, dynamic> json) =>
    _NetworkTelemetry(
      flightClub: json['flightClub'] as String?,
    );

Map<String, dynamic> _$NetworkTelemetryToJson(_NetworkTelemetry instance) =>
    <String, dynamic>{
      'flightClub': instance.flightClub,
    };

_NetworkLaunchSite _$NetworkLaunchSiteFromJson(Map<String, dynamic> json) =>
    _NetworkLaunchSite(
      siteId: json['siteId'] as String?,
      siteName: json['siteName'] as String?,
      siteNameLong: json['siteNameLong'] as String?,
    );

Map<String, dynamic> _$NetworkLaunchSiteToJson(_NetworkLaunchSite instance) =>
    <String, dynamic>{
      'siteId': instance.siteId,
      'siteName': instance.siteName,
      'siteNameLong': instance.siteNameLong,
    };

_NetworkLaunchFailureDetails _$NetworkLaunchFailureDetailsFromJson(
        Map<String, dynamic> json) =>
    _NetworkLaunchFailureDetails(
      time: (json['time'] as num?)?.toInt(),
      altitude: json['altitude'] as String?,
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$NetworkLaunchFailureDetailsToJson(
        _NetworkLaunchFailureDetails instance) =>
    <String, dynamic>{
      'time': instance.time,
      'altitude': instance.altitude,
      'reason': instance.reason,
    };

_NetworkTimeline _$NetworkTimelineFromJson(Map<String, dynamic> json) =>
    _NetworkTimeline(
      webcastLiftoff: (json['webcastLiftoff'] as num?)?.toInt(),
    );

Map<String, dynamic> _$NetworkTimelineToJson(_NetworkTimeline instance) =>
    <String, dynamic>{
      'webcastLiftoff': instance.webcastLiftoff,
    };

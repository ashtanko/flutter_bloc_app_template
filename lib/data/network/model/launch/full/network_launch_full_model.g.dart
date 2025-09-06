// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_launch_full_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NetworkLaunchFullModel _$NetworkLaunchFullModelFromJson(
        Map<String, dynamic> json) =>
    _NetworkLaunchFullModel(
      id: json['_id'] as String?,
      flightNumber: (json['flight_number'] as num?)?.toInt(),
      missionName: json['mission_name'] as String?,
      missionId: json['mission_id'] as List<dynamic>?,
      upcoming: json['upcoming'] as bool?,
      launchYear: json['launch_year'] as String?,
      launchDateUnix: (json['launch_date_unix'] as num?)?.toInt(),
      launchDate: const TimestampSerializer().fromJson(json['launch_date_utc']),
      launchDateLocal: json['launch_date_local'] as String?,
      isTentative: json['is_tentative'] as bool?,
      tentativeMaxPrecision: json['tentative_max_precision'] as String?,
      tbd: json['tbd'] as bool?,
      launchWindow: (json['launch_window'] as num?)?.toInt(),
      rocket: json['rocket'] == null
          ? null
          : NetworkRocketModel.fromJson(json['rocket'] as Map<String, dynamic>),
      ships:
          (json['ships'] as List<dynamic>?)?.map((e) => e as String).toList(),
      telemetry: json['telemetry'] == null
          ? null
          : NetworkTelemetry.fromJson(
              json['telemetry'] as Map<String, dynamic>),
      launchSite: json['launch_site'] == null
          ? null
          : NetworkLaunchSite.fromJson(
              json['launch_site'] as Map<String, dynamic>),
      success: json['launch_success'] as bool?,
      launchFailureDetails: json['launch_failure_details'] == null
          ? null
          : NetworkLaunchFailureDetails.fromJson(
              json['launch_failure_details'] as Map<String, dynamic>),
      links: json['links'] == null
          ? null
          : NetworkLaunchLinksModel.fromJson(
              json['links'] as Map<String, dynamic>),
      details: json['details'] as String?,
      staticFireDate:
          const TimestampSerializer().fromJson(json['static_fire_date_utc']),
      staticFireDateUnix: (json['static_fire_date_unix'] as num?)?.toInt(),
      timeline: json['timeline'] == null
          ? null
          : NetworkTimeline.fromJson(json['timeline'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NetworkLaunchFullModelToJson(
        _NetworkLaunchFullModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'flight_number': instance.flightNumber,
      'mission_name': instance.missionName,
      'mission_id': instance.missionId,
      'upcoming': instance.upcoming,
      'launch_year': instance.launchYear,
      'launch_date_unix': instance.launchDateUnix,
      'launch_date_utc':
          const TimestampSerializer().toJson(instance.launchDate),
      'launch_date_local': instance.launchDateLocal,
      'is_tentative': instance.isTentative,
      'tentative_max_precision': instance.tentativeMaxPrecision,
      'tbd': instance.tbd,
      'launch_window': instance.launchWindow,
      'rocket': instance.rocket,
      'ships': instance.ships,
      'telemetry': instance.telemetry,
      'launch_site': instance.launchSite,
      'launch_success': instance.success,
      'launch_failure_details': instance.launchFailureDetails,
      'links': instance.links,
      'details': instance.details,
      'static_fire_date_utc':
          const TimestampSerializer().toJson(instance.staticFireDate),
      'static_fire_date_unix': instance.staticFireDateUnix,
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
      coreSerial: json['core_serial'] as String?,
      flight: (json['flight'] as num?)?.toInt(),
      block: json['block'] as String?,
      gridfins: json['gridfins'] as bool?,
      legs: json['legs'] as bool?,
      reused: json['reused'] as bool?,
      landSuccess: json['land_success'] as bool?,
      landingIntent: json['landing_intent'] as bool?,
      landingType: json['landing_type'] as String?,
      landingVehicle: json['landing_vehicle'] as String?,
    );

Map<String, dynamic> _$NetworkCoreToJson(_NetworkCore instance) =>
    <String, dynamic>{
      'core_serial': instance.coreSerial,
      'flight': instance.flight,
      'block': instance.block,
      'gridfins': instance.gridfins,
      'legs': instance.legs,
      'reused': instance.reused,
      'land_success': instance.landSuccess,
      'landing_intent': instance.landingIntent,
      'landing_type': instance.landingType,
      'landing_vehicle': instance.landingVehicle,
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
      payloadId: json['payload_id'] as String?,
      noradId: json['norad_id'] as List<dynamic>?,
      reused: json['reused'] as bool?,
      customers: (json['customers'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      nationality: json['nationality'] as String?,
      manufacturer: json['manufacturer'] as String?,
      payloadType: json['payload_type'] as String?,
      payloadMassKg: (json['payload_mass_kg'] as num?)?.toInt(),
      payloadMassLbs: (json['payload_mass_lbs'] as num?)?.toInt(),
      orbit: json['orbit'] as String?,
      orbitParams: json['orbit_params'] == null
          ? null
          : NetworkOrbitParams.fromJson(
              json['orbit_params'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NetworkPayloadToJson(_NetworkPayload instance) =>
    <String, dynamic>{
      'payload_id': instance.payloadId,
      'norad_id': instance.noradId,
      'reused': instance.reused,
      'customers': instance.customers,
      'nationality': instance.nationality,
      'manufacturer': instance.manufacturer,
      'payload_type': instance.payloadType,
      'payload_mass_kg': instance.payloadMassKg,
      'payload_mass_lbs': instance.payloadMassLbs,
      'orbit': instance.orbit,
      'orbit_params': instance.orbitParams,
    };

_NetworkOrbitParams _$NetworkOrbitParamsFromJson(Map<String, dynamic> json) =>
    _NetworkOrbitParams(
      referenceSystem: json['reference_system'] as String?,
      regime: json['regime'] as String?,
      longitude: (json['longitude'] as num?)?.toInt(),
      semiMajorAxisKm: (json['semi_major_axis_km'] as num?)?.toDouble(),
      eccentricity: (json['eccentricity'] as num?)?.toDouble(),
      periapsisKm: (json['periapsis_km'] as num?)?.toInt(),
      apoapsisKm: (json['apoapsis_km'] as num?)?.toInt(),
      inclinationDeg: (json['inclination_deg'] as num?)?.toInt(),
    );

Map<String, dynamic> _$NetworkOrbitParamsToJson(_NetworkOrbitParams instance) =>
    <String, dynamic>{
      'reference_system': instance.referenceSystem,
      'regime': instance.regime,
      'longitude': instance.longitude,
      'semi_major_axis_km': instance.semiMajorAxisKm,
      'eccentricity': instance.eccentricity,
      'periapsis_km': instance.periapsisKm,
      'apoapsis_km': instance.apoapsisKm,
      'inclination_deg': instance.inclinationDeg,
    };

_NetworkFairings _$NetworkFairingsFromJson(Map<String, dynamic> json) =>
    _NetworkFairings(
      reused: json['reused'] as bool?,
      recoveryAttempt: json['recovery_attempt'] as bool?,
      recovered: json['recovered'] as bool?,
      ship: json['ship'] as String?,
    );

Map<String, dynamic> _$NetworkFairingsToJson(_NetworkFairings instance) =>
    <String, dynamic>{
      'reused': instance.reused,
      'recovery_attempt': instance.recoveryAttempt,
      'recovered': instance.recovered,
      'ship': instance.ship,
    };

_NetworkTelemetry _$NetworkTelemetryFromJson(Map<String, dynamic> json) =>
    _NetworkTelemetry(
      flightClub: json['flight_club'] as String?,
    );

Map<String, dynamic> _$NetworkTelemetryToJson(_NetworkTelemetry instance) =>
    <String, dynamic>{
      'flight_club': instance.flightClub,
    };

_NetworkLaunchSite _$NetworkLaunchSiteFromJson(Map<String, dynamic> json) =>
    _NetworkLaunchSite(
      siteId: json['site_id'] as String?,
      siteName: json['site_name'] as String?,
      siteNameLong: json['site_name_long'] as String?,
    );

Map<String, dynamic> _$NetworkLaunchSiteToJson(_NetworkLaunchSite instance) =>
    <String, dynamic>{
      'site_id': instance.siteId,
      'site_name': instance.siteName,
      'site_name_long': instance.siteNameLong,
    };

_NetworkLaunchFailureDetails _$NetworkLaunchFailureDetailsFromJson(
        Map<String, dynamic> json) =>
    _NetworkLaunchFailureDetails(
      time: (json['time'] as num?)?.toInt(),
      altitude: (json['altitude'] as num?)?.toInt(),
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
      webcastLiftoff: (json['webcast_liftoff'] as num?)?.toInt(),
    );

Map<String, dynamic> _$NetworkTimelineToJson(_NetworkTimeline instance) =>
    <String, dynamic>{
      'webcast_liftoff': instance.webcastLiftoff,
    };

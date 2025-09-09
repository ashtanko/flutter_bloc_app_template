// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_core_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NetworkCoreModel _$NetworkCoreModelFromJson(Map<String, dynamic> json) =>
    _NetworkCoreModel(
      coreSerial: json['core_serial'] as String?,
      block: (json['block'] as num?)?.toInt(),
      status: json['status'] as String?,
      originalLaunch: json['original_launch'] as String?,
      originalLaunchUnix: (json['original_launch_unix'] as num?)?.toInt(),
      missions: (json['missions'] as List<dynamic>?)
          ?.map((e) => NetworkMission.fromJson(e as Map<String, dynamic>))
          .toList(),
      reuseCount: (json['reuse_count'] as num?)?.toInt(),
      rtlsAttempts: (json['rtls_attempts'] as num?)?.toInt(),
      rtlsLandings: (json['rtls_landings'] as num?)?.toInt(),
      asdsAttempts: (json['asds_attempts'] as num?)?.toInt(),
      asdsLandings: (json['asds_landings'] as num?)?.toInt(),
      waterLanding: json['water_landing'] as bool?,
      details: json['details'] as String?,
    );

Map<String, dynamic> _$NetworkCoreModelToJson(_NetworkCoreModel instance) =>
    <String, dynamic>{
      'core_serial': instance.coreSerial,
      'block': instance.block,
      'status': instance.status,
      'original_launch': instance.originalLaunch,
      'original_launch_unix': instance.originalLaunchUnix,
      'missions': instance.missions,
      'reuse_count': instance.reuseCount,
      'rtls_attempts': instance.rtlsAttempts,
      'rtls_landings': instance.rtlsLandings,
      'asds_attempts': instance.asdsAttempts,
      'asds_landings': instance.asdsLandings,
      'water_landing': instance.waterLanding,
      'details': instance.details,
    };

_NetworkMission _$NetworkMissionFromJson(Map<String, dynamic> json) =>
    _NetworkMission(
      name: json['name'] as String?,
      flight: (json['flight'] as num?)?.toInt(),
    );

Map<String, dynamic> _$NetworkMissionToJson(_NetworkMission instance) =>
    <String, dynamic>{
      'name': instance.name,
      'flight': instance.flight,
    };

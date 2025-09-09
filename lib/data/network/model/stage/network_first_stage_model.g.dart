// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_first_stage_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NetworkFirstStageModel _$NetworkFirstStageModelFromJson(
        Map<String, dynamic> json) =>
    _NetworkFirstStageModel(
      cores: (json['cores'] as List<dynamic>?)
          ?.map(
              (e) => NetworkStageCoreModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NetworkFirstStageModelToJson(
        _NetworkFirstStageModel instance) =>
    <String, dynamic>{
      'cores': instance.cores,
    };

_NetworkStageCoreModel _$NetworkStageCoreModelFromJson(
        Map<String, dynamic> json) =>
    _NetworkStageCoreModel(
      coreSerial: json['core_serial'] as String?,
      flight: (json['flight'] as num?)?.toInt(),
      block: (json['block'] as num?)?.toInt(),
      gridfins: json['gridfins'] as bool?,
      legs: json['legs'] as bool?,
      reused: json['reused'] as bool?,
      landSuccess: json['land_success'] as bool?,
      landingIntent: json['landing_intent'] as bool?,
      landingType: json['landing_type'] as String?,
      landingVehicle: json['landing_vehicle'] as String?,
    );

Map<String, dynamic> _$NetworkStageCoreModelToJson(
        _NetworkStageCoreModel instance) =>
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

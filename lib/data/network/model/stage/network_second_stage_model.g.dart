// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_second_stage_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NetworkSecondStageModel _$NetworkSecondStageModelFromJson(
        Map<String, dynamic> json) =>
    _NetworkSecondStageModel(
      block: (json['block'] as num?)?.toInt(),
      payloads: (json['payloads'] as List<dynamic>?)
          ?.map((e) => NetworkPayloadModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NetworkSecondStageModelToJson(
        _NetworkSecondStageModel instance) =>
    <String, dynamic>{
      'block': instance.block,
      'payloads': instance.payloads,
    };

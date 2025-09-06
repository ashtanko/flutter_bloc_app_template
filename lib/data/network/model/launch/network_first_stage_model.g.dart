// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_first_stage_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NetworkFirstStageModel _$NetworkFirstStageModelFromJson(
        Map<String, dynamic> json) =>
    _NetworkFirstStageModel(
      cores: (json['cores'] as List<dynamic>?)
          ?.map((e) => NetworkCoreModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NetworkFirstStageModelToJson(
        _NetworkFirstStageModel instance) =>
    <String, dynamic>{
      'cores': instance.cores,
    };

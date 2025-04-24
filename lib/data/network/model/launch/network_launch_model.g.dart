// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_launch_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NetworkLaunchModel _$NetworkLaunchModelFromJson(Map<String, dynamic> json) =>
    _NetworkLaunchModel(
      id: json['_id'] as String?,
      missionName: json['mission_name'] as String?,
      launchDate: const TimestampSerializer().fromJson(json['launch_date_utc']),
      rocket: json['rocket'] == null
          ? null
          : NetworkRocketModel.fromJson(json['rocket'] as Map<String, dynamic>),
      success: json['launch_success'] as bool? ?? false,
      links: json['links'] == null
          ? null
          : NetworkLaunchLinksModel.fromJson(
              json['links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NetworkLaunchModelToJson(_NetworkLaunchModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'mission_name': instance.missionName,
      'launch_date_utc':
          const TimestampSerializer().toJson(instance.launchDate),
      'rocket': instance.rocket,
      'launch_success': instance.success,
      'links': instance.links,
    };

_NetworkRocketModel _$NetworkRocketModelFromJson(Map<String, dynamic> json) =>
    _NetworkRocketModel(
      id: json['rocket_id'] as String,
      type: json['rocket_type'] as String?,
      name: json['rocket_name'] as String?,
    );

Map<String, dynamic> _$NetworkRocketModelToJson(_NetworkRocketModel instance) =>
    <String, dynamic>{
      'rocket_id': instance.id,
      'rocket_type': instance.type,
      'rocket_name': instance.name,
    };

_NetworkLaunchLinksModel _$NetworkLaunchLinksModelFromJson(
        Map<String, dynamic> json) =>
    _NetworkLaunchLinksModel(
      missionPatch: json['mission_patch'] as String?,
      missionPatchSmall: json['mission_patch_small'] as String?,
      articleLink: json['article_link'] as String?,
      wikipedia: json['wikipedia'] as String?,
      youtubeId: json['youtube_id'] as String?,
    );

Map<String, dynamic> _$NetworkLaunchLinksModelToJson(
        _NetworkLaunchLinksModel instance) =>
    <String, dynamic>{
      'mission_patch': instance.missionPatch,
      'mission_patch_small': instance.missionPatchSmall,
      'article_link': instance.articleLink,
      'wikipedia': instance.wikipedia,
      'youtube_id': instance.youtubeId,
    };

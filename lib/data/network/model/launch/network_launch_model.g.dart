// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_launch_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NetworkLaunchModel _$NetworkLaunchModelFromJson(Map<String, dynamic> json) =>
    _NetworkLaunchModel(
      id: json['_id'] as String?,
      flightNumber: (json['flight_number'] as num?)?.toInt(),
      missionName: json['mission_name'] as String?,
      launchDate: const TimestampSerializer().fromJson(json['launch_date_utc']),
      rocket: json['rocket'] == null
          ? null
          : NetworkLaunchRocketModel.fromJson(
              json['rocket'] as Map<String, dynamic>,
            ),
      success: json['launch_success'] as bool? ?? false,
      links: json['links'] == null
          ? null
          : NetworkLaunchLinksModel.fromJson(
              json['links'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$NetworkLaunchModelToJson(
  _NetworkLaunchModel instance,
) => <String, dynamic>{
  '_id': instance.id,
  'flight_number': instance.flightNumber,
  'mission_name': instance.missionName,
  'launch_date_utc': const TimestampSerializer().toJson(instance.launchDate),
  'rocket': instance.rocket,
  'launch_success': instance.success,
  'links': instance.links,
};

_NetworkLaunchLinksModel _$NetworkLaunchLinksModelFromJson(
  Map<String, dynamic> json,
) => _NetworkLaunchLinksModel(
  missionPatch: json['mission_patch'] as String?,
  missionPatchSmall: json['mission_patch_small'] as String?,
  articleLink: json['article_link'] as String?,
  wikipedia: json['wikipedia'] as String?,
  youtubeId: json['youtube_id'] as String?,
  redditLaunch: json['reddit_launch'] as String?,
  videoLink: json['video_link'] as String?,
  presskit: json['presskit'] as String?,
  flickrImages: (json['flickr_images'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$NetworkLaunchLinksModelToJson(
  _NetworkLaunchLinksModel instance,
) => <String, dynamic>{
  'mission_patch': instance.missionPatch,
  'mission_patch_small': instance.missionPatchSmall,
  'article_link': instance.articleLink,
  'wikipedia': instance.wikipedia,
  'youtube_id': instance.youtubeId,
  'reddit_launch': instance.redditLaunch,
  'video_link': instance.videoLink,
  'presskit': instance.presskit,
  'flickr_images': instance.flickrImages,
};

_NetworkLaunchRocketModel _$NetworkLaunchRocketModelFromJson(
  Map<String, dynamic> json,
) => _NetworkLaunchRocketModel(
  id: json['rocket_id'] as String,
  type: json['rocket_type'] as String?,
  name: json['rocket_name'] as String?,
  firstStage: json['first_stage'] == null
      ? null
      : NetworkFirstStageModel.fromJson(
          json['first_stage'] as Map<String, dynamic>,
        ),
  secondStage: json['second_stage'] == null
      ? null
      : NetworkSecondStageModel.fromJson(
          json['second_stage'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$NetworkLaunchRocketModelToJson(
  _NetworkLaunchRocketModel instance,
) => <String, dynamic>{
  'rocket_id': instance.id,
  'rocket_type': instance.type,
  'rocket_name': instance.name,
  'first_stage': instance.firstStage,
  'second_stage': instance.secondStage,
};

import 'package:flutter_bloc_app_template/data/network/converter/timestamp_serializer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_launch_model.freezed.dart';
part 'network_launch_model.g.dart';

@freezed
abstract class NetworkLaunchModel with _$NetworkLaunchModel {
  const factory NetworkLaunchModel({
    @JsonKey(name: '_id') String? id,
    @JsonKey(name: 'flight_number') int? flightNumber,
    @JsonKey(name: 'mission_name') String? missionName,
    @TimestampSerializer()
    @JsonKey(name: 'launch_date_utc')
    DateTime? launchDate,
    @JsonKey(name: 'rocket') NetworkRocketModel? rocket,
    @JsonKey(name: 'launch_success') @Default(false) bool success,
    @JsonKey(name: 'links') NetworkLaunchLinksModel? links,
  }) = _NetworkLaunchModel;

  const NetworkLaunchModel._();

  factory NetworkLaunchModel.fromJson(Map<String, dynamic> json) =>
      _$NetworkLaunchModelFromJson(json);
}

@freezed
abstract class NetworkRocketModel with _$NetworkRocketModel {
  const factory NetworkRocketModel({
    @JsonKey(name: 'rocket_id') required String id,
    @JsonKey(name: 'rocket_type') String? type,
    @JsonKey(name: 'rocket_name') String? name,
  }) = _NetworkRocketModel;

  const NetworkRocketModel._();

  factory NetworkRocketModel.fromJson(Map<String, dynamic> json) =>
      _$NetworkRocketModelFromJson(json);
}

@freezed
abstract class NetworkLaunchLinksModel with _$NetworkLaunchLinksModel {
  const factory NetworkLaunchLinksModel({
    @JsonKey(name: 'mission_patch') String? missionPatch,
    @JsonKey(name: 'mission_patch_small') String? missionPatchSmall,
    @JsonKey(name: 'article_link') String? articleLink,
    @JsonKey(name: 'wikipedia') String? wikipedia,
    @JsonKey(name: 'youtube_id') String? youtubeId,
  }) = _NetworkLaunchLinksModel;

  const NetworkLaunchLinksModel._();

  factory NetworkLaunchLinksModel.fromJson(Map<String, dynamic> json) =>
      _$NetworkLaunchLinksModelFromJson(json);
}

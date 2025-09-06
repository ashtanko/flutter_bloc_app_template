import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
class LinksResource extends Equatable {
  const LinksResource({
    this.missionPatch,
    this.missionPatchSmall,
    this.articleLink,
    this.wikipedia,
    this.youtubeId,
    this.redditLaunch,
    this.videoLink,
    this.presskit,
  });

  final String? missionPatch;
  final String? missionPatchSmall;
  final String? articleLink;
  final String? wikipedia;
  final String? youtubeId;
  final String? redditLaunch;
  final String? videoLink;
  final String? presskit;

  @override
  List<Object?> get props => [
        missionPatch,
        missionPatchSmall,
        articleLink,
        wikipedia,
        youtubeId,
        redditLaunch,
        videoLink,
        presskit,
      ];
}

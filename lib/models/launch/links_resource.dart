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
  });

  final String? missionPatch;
  final String? missionPatchSmall;
  final String? articleLink;
  final String? wikipedia;
  final String? youtubeId;

  @override
  List<Object?> get props => [
        missionPatch,
        missionPatchSmall,
        articleLink,
        wikipedia,
        youtubeId,
      ];
}

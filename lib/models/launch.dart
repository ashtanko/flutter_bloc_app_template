import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc_app_template/data/network/model/launch/network_launch_model.dart';
import 'package:intl/intl.dart';

extension LaunchResourceExtension on NetworkLaunchModel {
  LaunchResource toResource() {
    return LaunchResource(
      id: id,
      missionName: missionName,
      launchDays: launchDate?.formatDateWithDays(),
      launchTime: launchDate.toFormattedTime(),
      rocket: rocket?.toResource(),
      launchSuccess: success,
      links: links?.toResource(),
    );
  }
}

extension RocketResourceExtension on NetworkRocketModel {
  RocketResource toResource() {
    return RocketResource(
      rocketName: name,
      rocketType: type,
    );
  }
}

extension LinksResourceExtension on NetworkLaunchLinksModel {
  LinksResource toResource() {
    return LinksResource(
      missionPatch: missionPatch,
      missionPatchSmall: missionPatchSmall,
      articleLink: articleLink,
      wikipedia: wikipedia,
      youtubeId: youtubeId,
    );
  }
}

@immutable
class LaunchResource extends Equatable {
  const LaunchResource({
    required this.id,
    this.missionName,
    this.launchDays,
    this.launchTime,
    this.rocket,
    this.launchSuccess,
    this.links,
  });

  final String id;
  final String? missionName;
  final LaunchDays? launchDays;
  final String? launchTime;
  final RocketResource? rocket;
  final bool? launchSuccess;
  final LinksResource? links;

  @override
  List<Object?> get props => [
        id,
        missionName,
        launchDays,
        launchTime,
        rocket,
        launchSuccess,
        links,
      ];
}

extension LaunchResourceX on DateTime? {
  LaunchDays formatDateWithDays() {
    final now = DateTime.now().toUtc();
    if (this == null) return const Unknown();

    final target = this!.toUtc();
    final diffMillis = target.difference(now).inMilliseconds;
    final daysDifference = (diffMillis ~/ Duration.millisecondsPerDay);

    return daysDifference < 0
        ? Since('${daysDifference.abs()}')
        : From('$daysDifference');
  }

  String toFormattedTime() {
    if (this == null) return '';
    return DateFormat('hh:mm a, MMM yyyy').format(this!);
  }
}

@immutable
abstract class LaunchDays extends Equatable {
  const LaunchDays();
}

class Since extends LaunchDays {
  const Since(this.formattedDate);

  final String? formattedDate;

  @override
  List<Object?> get props => [formattedDate];
}

class Unknown extends LaunchDays {
  const Unknown();

  @override
  List<Object?> get props => [];
}

class From extends LaunchDays {
  const From(this.formattedDate);

  final String? formattedDate;

  @override
  List<Object?> get props => [formattedDate];
}

@immutable
class RocketResource extends Equatable {
  const RocketResource({
    this.rocketName,
    this.rocketType,
  });

  final String? rocketName;
  final String? rocketType;

  @override
  List<Object?> get props => [
        rocketName,
        rocketType,
      ];
}

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

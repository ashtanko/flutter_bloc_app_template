import 'package:flutter_bloc_app_template/data/network/model/launch/full/network_launch_full_model.dart';
import 'package:flutter_bloc_app_template/data/network/model/launch/network_launch_model.dart';
import 'package:flutter_bloc_app_template/models/launch/launch_days.dart';
import 'package:flutter_bloc_app_template/models/launch/launch_full_resource.dart';
import 'package:flutter_bloc_app_template/models/launch/launch_resource.dart';
import 'package:flutter_bloc_app_template/models/launch/links_resource.dart';
import 'package:flutter_bloc_app_template/models/launch/rocket_resource.dart';
import 'package:intl/intl.dart';

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

extension RocketResourceExtension on NetworkRocketModel {
  RocketResource toResource() {
    return RocketResource(
      rocketName: name,
      rocketType: type,
    );
  }
}

extension LaunchResourceExtension on NetworkLaunchModel {
  LaunchResource toResource() {
    return LaunchResource(
      id: id ?? '',
      flightNumber: flightNumber ?? 1,
      missionName: missionName,
      launchDays: launchDate?.formatDateWithDays(),
      launchTime: launchDate.toFormattedTime(),
      rocket: rocket?.toResource(),
      launchSuccess: success,
      links: links?.toResource(),
    );
  }
}

extension LaunchFullResourceExtension on NetworkLaunchFullModel {
  LaunchFullResource toResource() {
    return LaunchFullResource(
      id: id ?? '',
      flightNumber: flightNumber ?? 1,
      missionName: missionName,
      launchDays: launchDate?.formatDateWithDays(),
      launchTime: launchDate.toFormattedTime(),
      rocket: rocket?.toResource(),
      launchSuccess: success,
      links: links?.toResource(),
    );
  }
}

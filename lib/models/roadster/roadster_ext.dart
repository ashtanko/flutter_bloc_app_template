import 'package:flutter_bloc_app_template/data/network/model/roadster/network_roadster_model.dart';
import 'package:flutter_bloc_app_template/models/roadster/roadster_resource.dart';

extension RoadsterExt on NetworkRoadsterModel {
  RoadsterResource toResource() {
    return RoadsterResource(
      name: name,
      launchDateUtc: launchDateUtc,
      launchDateUnix: launchDateUnix,
      launchMassKg: launchMassKg,
      launchMassLbs: launchMassLbs,
      noradId: noradId,
      epochJd: epochJd,
      orbitType: orbitType,
      apoapsisAu: apoapsisAu,
      periapsisAu: periapsisAu,
      semiMajorAxisAu: semiMajorAxisAu,
      eccentricity: eccentricity,
      inclination: inclination,
      longitude: longitude,
      periapsisArg: periapsisArg,
      periodDays: periodDays,
      speedKph: speedKph,
      speedMph: speedMph,
      earthDistanceKm: earthDistanceKm,
      earthDistanceMi: earthDistanceMi,
      marsDistanceKm: marsDistanceKm,
      marsDistanceMi: marsDistanceMi,
      flickrImages: flickrImages,
      wikipedia: wikipedia,
      video: video,
      details: details,
      id: id,
    );
  }
}

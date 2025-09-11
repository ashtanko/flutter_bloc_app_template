import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
class RoadsterResource extends Equatable {
  const RoadsterResource({
    this.name,
    this.launchDateUtc,
    this.launchDateUnix,
    this.launchMassKg,
    this.launchMassLbs,
    this.noradId,
    this.epochJd,
    this.orbitType,
    this.apoapsisAu,
    this.periapsisAu,
    this.semiMajorAxisAu,
    this.eccentricity,
    this.inclination,
    this.longitude,
    this.periapsisArg,
    this.periodDays,
    this.speedKph,
    this.speedMph,
    this.earthDistanceKm,
    this.earthDistanceMi,
    this.marsDistanceKm,
    this.marsDistanceMi,
    this.flickrImages,
    this.wikipedia,
    this.video,
    this.details,
    this.id,
  });

  final String? name;
  final String? launchDateUtc;
  final int? launchDateUnix;
  final int? launchMassKg;
  final int? launchMassLbs;
  final int? noradId;
  final double? epochJd;
  final String? orbitType;
  final double? apoapsisAu;
  final double? periapsisAu;
  final double? semiMajorAxisAu;
  final double? eccentricity;
  final double? inclination;
  final double? longitude;
  final double? periapsisArg;
  final double? periodDays;
  final double? speedKph;
  final double? speedMph;
  final double? earthDistanceKm;
  final double? earthDistanceMi;
  final double? marsDistanceKm;
  final double? marsDistanceMi;
  final List<String>? flickrImages;
  final String? wikipedia;
  final String? video;
  final String? details;
  final String? id;

  @override
  List<Object?> get props => [
        name,
        launchDateUtc,
        launchDateUnix,
        launchMassKg,
        launchMassLbs,
        noradId,
        epochJd,
        orbitType,
        apoapsisAu,
        periapsisAu,
        semiMajorAxisAu,
        eccentricity,
        inclination,
        longitude,
        periapsisArg,
        periodDays,
        speedKph,
        speedMph,
        earthDistanceKm,
        earthDistanceMi,
        marsDistanceKm,
        marsDistanceMi,
        flickrImages,
        wikipedia,
        video,
        details,
        id,
      ];
}

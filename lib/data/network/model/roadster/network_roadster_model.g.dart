// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_roadster_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NetworkRoadsterModel _$NetworkRoadsterModelFromJson(
  Map<String, dynamic> json,
) => _NetworkRoadsterModel(
  name: json['name'] as String?,
  launchDateUtc: json['launch_date_utc'] as String?,
  launchDateUnix: (json['launch_date_unix'] as num?)?.toInt(),
  launchMassKg: (json['launch_mass_kg'] as num?)?.toInt(),
  launchMassLbs: (json['launch_mass_lbs'] as num?)?.toInt(),
  noradId: (json['norad_id'] as num?)?.toInt(),
  epochJd: (json['epoch_jd'] as num?)?.toDouble(),
  orbitType: json['orbit_type'] as String?,
  apoapsisAu: (json['apoapsis_au'] as num?)?.toDouble(),
  periapsisAu: (json['periapsis_au'] as num?)?.toDouble(),
  semiMajorAxisAu: (json['semi_major_axis_au'] as num?)?.toDouble(),
  eccentricity: (json['eccentricity'] as num?)?.toDouble(),
  inclination: (json['inclination'] as num?)?.toDouble(),
  longitude: (json['longitude'] as num?)?.toDouble(),
  periapsisArg: (json['periapsis_arg'] as num?)?.toDouble(),
  periodDays: (json['period_days'] as num?)?.toDouble(),
  speedKph: (json['speed_kph'] as num?)?.toDouble(),
  speedMph: (json['speed_mph'] as num?)?.toDouble(),
  earthDistanceKm: (json['earth_distance_km'] as num?)?.toDouble(),
  earthDistanceMi: (json['earth_distance_mi'] as num?)?.toDouble(),
  marsDistanceKm: (json['mars_distance_km'] as num?)?.toDouble(),
  marsDistanceMi: (json['mars_distance_mi'] as num?)?.toDouble(),
  flickrImages: (json['flickr_images'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  wikipedia: json['wikipedia'] as String?,
  video: json['video'] as String?,
  details: json['details'] as String?,
  id: json['id'] as String?,
);

Map<String, dynamic> _$NetworkRoadsterModelToJson(
  _NetworkRoadsterModel instance,
) => <String, dynamic>{
  'name': instance.name,
  'launch_date_utc': instance.launchDateUtc,
  'launch_date_unix': instance.launchDateUnix,
  'launch_mass_kg': instance.launchMassKg,
  'launch_mass_lbs': instance.launchMassLbs,
  'norad_id': instance.noradId,
  'epoch_jd': instance.epochJd,
  'orbit_type': instance.orbitType,
  'apoapsis_au': instance.apoapsisAu,
  'periapsis_au': instance.periapsisAu,
  'semi_major_axis_au': instance.semiMajorAxisAu,
  'eccentricity': instance.eccentricity,
  'inclination': instance.inclination,
  'longitude': instance.longitude,
  'periapsis_arg': instance.periapsisArg,
  'period_days': instance.periodDays,
  'speed_kph': instance.speedKph,
  'speed_mph': instance.speedMph,
  'earth_distance_km': instance.earthDistanceKm,
  'earth_distance_mi': instance.earthDistanceMi,
  'mars_distance_km': instance.marsDistanceKm,
  'mars_distance_mi': instance.marsDistanceMi,
  'flickr_images': instance.flickrImages,
  'wikipedia': instance.wikipedia,
  'video': instance.video,
  'details': instance.details,
  'id': instance.id,
};

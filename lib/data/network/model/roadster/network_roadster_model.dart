import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_roadster_model.freezed.dart';
part 'network_roadster_model.g.dart';

@freezed
abstract class NetworkRoadsterModel with _$NetworkRoadsterModel {
  const factory NetworkRoadsterModel({
    String? name,
    @JsonKey(name: 'launch_date_utc') String? launchDateUtc,
    @JsonKey(name: 'launch_date_unix') int? launchDateUnix,
    @JsonKey(name: 'launch_mass_kg') int? launchMassKg,
    @JsonKey(name: 'launch_mass_lbs') int? launchMassLbs,
    @JsonKey(name: 'norad_id') int? noradId,
    @JsonKey(name: 'epoch_jd') double? epochJd,
    @JsonKey(name: 'orbit_type') String? orbitType,
    @JsonKey(name: 'apoapsis_au') double? apoapsisAu,
    @JsonKey(name: 'periapsis_au') double? periapsisAu,
    @JsonKey(name: 'semi_major_axis_au') double? semiMajorAxisAu,
    double? eccentricity,
    double? inclination,
    double? longitude,
    @JsonKey(name: 'periapsis_arg') double? periapsisArg,
    @JsonKey(name: 'period_days') double? periodDays,
    @JsonKey(name: 'speed_kph') double? speedKph,
    @JsonKey(name: 'speed_mph') double? speedMph,
    @JsonKey(name: 'earth_distance_km') double? earthDistanceKm,
    @JsonKey(name: 'earth_distance_mi') double? earthDistanceMi,
    @JsonKey(name: 'mars_distance_km') double? marsDistanceKm,
    @JsonKey(name: 'mars_distance_mi') double? marsDistanceMi,
    @JsonKey(name: 'flickr_images') List<String>? flickrImages,
    String? wikipedia,
    String? video,
    String? details,
    String? id,
  }) = _NetworkRoadsterModel;

  const NetworkRoadsterModel._();

  factory NetworkRoadsterModel.fromJson(Map<String, dynamic> json) =>
      _$NetworkRoadsterModelFromJson(json);
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_roadster_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NetworkRoadsterModel {

 String? get name;@JsonKey(name: 'launch_date_utc') String? get launchDateUtc;@JsonKey(name: 'launch_date_unix') int? get launchDateUnix;@JsonKey(name: 'launch_mass_kg') int? get launchMassKg;@JsonKey(name: 'launch_mass_lbs') int? get launchMassLbs;@JsonKey(name: 'norad_id') int? get noradId;@JsonKey(name: 'epoch_jd') double? get epochJd;@JsonKey(name: 'orbit_type') String? get orbitType;@JsonKey(name: 'apoapsis_au') double? get apoapsisAu;@JsonKey(name: 'periapsis_au') double? get periapsisAu;@JsonKey(name: 'semi_major_axis_au') double? get semiMajorAxisAu; double? get eccentricity; double? get inclination; double? get longitude;@JsonKey(name: 'periapsis_arg') double? get periapsisArg;@JsonKey(name: 'period_days') double? get periodDays;@JsonKey(name: 'speed_kph') double? get speedKph;@JsonKey(name: 'speed_mph') double? get speedMph;@JsonKey(name: 'earth_distance_km') double? get earthDistanceKm;@JsonKey(name: 'earth_distance_mi') double? get earthDistanceMi;@JsonKey(name: 'mars_distance_km') double? get marsDistanceKm;@JsonKey(name: 'mars_distance_mi') double? get marsDistanceMi;@JsonKey(name: 'flickr_images') List<String>? get flickrImages; String? get wikipedia; String? get video; String? get details; String? get id;
/// Create a copy of NetworkRoadsterModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NetworkRoadsterModelCopyWith<NetworkRoadsterModel> get copyWith => _$NetworkRoadsterModelCopyWithImpl<NetworkRoadsterModel>(this as NetworkRoadsterModel, _$identity);

  /// Serializes this NetworkRoadsterModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as NetworkRoadsterModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkRoadsterModel&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.launchDateUtc, _this.launchDateUtc) || other.launchDateUtc == _this.launchDateUtc)&&(identical(other.launchDateUnix, _this.launchDateUnix) || other.launchDateUnix == _this.launchDateUnix)&&(identical(other.launchMassKg, _this.launchMassKg) || other.launchMassKg == _this.launchMassKg)&&(identical(other.launchMassLbs, _this.launchMassLbs) || other.launchMassLbs == _this.launchMassLbs)&&(identical(other.noradId, _this.noradId) || other.noradId == _this.noradId)&&(identical(other.epochJd, _this.epochJd) || other.epochJd == _this.epochJd)&&(identical(other.orbitType, _this.orbitType) || other.orbitType == _this.orbitType)&&(identical(other.apoapsisAu, _this.apoapsisAu) || other.apoapsisAu == _this.apoapsisAu)&&(identical(other.periapsisAu, _this.periapsisAu) || other.periapsisAu == _this.periapsisAu)&&(identical(other.semiMajorAxisAu, _this.semiMajorAxisAu) || other.semiMajorAxisAu == _this.semiMajorAxisAu)&&(identical(other.eccentricity, _this.eccentricity) || other.eccentricity == _this.eccentricity)&&(identical(other.inclination, _this.inclination) || other.inclination == _this.inclination)&&(identical(other.longitude, _this.longitude) || other.longitude == _this.longitude)&&(identical(other.periapsisArg, _this.periapsisArg) || other.periapsisArg == _this.periapsisArg)&&(identical(other.periodDays, _this.periodDays) || other.periodDays == _this.periodDays)&&(identical(other.speedKph, _this.speedKph) || other.speedKph == _this.speedKph)&&(identical(other.speedMph, _this.speedMph) || other.speedMph == _this.speedMph)&&(identical(other.earthDistanceKm, _this.earthDistanceKm) || other.earthDistanceKm == _this.earthDistanceKm)&&(identical(other.earthDistanceMi, _this.earthDistanceMi) || other.earthDistanceMi == _this.earthDistanceMi)&&(identical(other.marsDistanceKm, _this.marsDistanceKm) || other.marsDistanceKm == _this.marsDistanceKm)&&(identical(other.marsDistanceMi, _this.marsDistanceMi) || other.marsDistanceMi == _this.marsDistanceMi)&&const DeepCollectionEquality().equals(other.flickrImages, _this.flickrImages)&&(identical(other.wikipedia, _this.wikipedia) || other.wikipedia == _this.wikipedia)&&(identical(other.video, _this.video) || other.video == _this.video)&&(identical(other.details, _this.details) || other.details == _this.details)&&(identical(other.id, _this.id) || other.id == _this.id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as NetworkRoadsterModel;
  return Object.hashAll([runtimeType,_this.name,_this.launchDateUtc,_this.launchDateUnix,_this.launchMassKg,_this.launchMassLbs,_this.noradId,_this.epochJd,_this.orbitType,_this.apoapsisAu,_this.periapsisAu,_this.semiMajorAxisAu,_this.eccentricity,_this.inclination,_this.longitude,_this.periapsisArg,_this.periodDays,_this.speedKph,_this.speedMph,_this.earthDistanceKm,_this.earthDistanceMi,_this.marsDistanceKm,_this.marsDistanceMi,const DeepCollectionEquality().hash(_this.flickrImages),_this.wikipedia,_this.video,_this.details,_this.id]);
}

@override
String toString() {
  final _this = this as NetworkRoadsterModel;
  return 'NetworkRoadsterModel(name: ${_this.name}, launchDateUtc: ${_this.launchDateUtc}, launchDateUnix: ${_this.launchDateUnix}, launchMassKg: ${_this.launchMassKg}, launchMassLbs: ${_this.launchMassLbs}, noradId: ${_this.noradId}, epochJd: ${_this.epochJd}, orbitType: ${_this.orbitType}, apoapsisAu: ${_this.apoapsisAu}, periapsisAu: ${_this.periapsisAu}, semiMajorAxisAu: ${_this.semiMajorAxisAu}, eccentricity: ${_this.eccentricity}, inclination: ${_this.inclination}, longitude: ${_this.longitude}, periapsisArg: ${_this.periapsisArg}, periodDays: ${_this.periodDays}, speedKph: ${_this.speedKph}, speedMph: ${_this.speedMph}, earthDistanceKm: ${_this.earthDistanceKm}, earthDistanceMi: ${_this.earthDistanceMi}, marsDistanceKm: ${_this.marsDistanceKm}, marsDistanceMi: ${_this.marsDistanceMi}, flickrImages: ${_this.flickrImages}, wikipedia: ${_this.wikipedia}, video: ${_this.video}, details: ${_this.details}, id: ${_this.id})';
}


}

/// @nodoc
abstract mixin class $NetworkRoadsterModelCopyWith<$Res>  {
  factory $NetworkRoadsterModelCopyWith(NetworkRoadsterModel value, $Res Function(NetworkRoadsterModel) _then) = _$NetworkRoadsterModelCopyWithImpl;
@useResult
$Res call({
 String? name,@JsonKey(name: 'launch_date_utc') String? launchDateUtc,@JsonKey(name: 'launch_date_unix') int? launchDateUnix,@JsonKey(name: 'launch_mass_kg') int? launchMassKg,@JsonKey(name: 'launch_mass_lbs') int? launchMassLbs,@JsonKey(name: 'norad_id') int? noradId,@JsonKey(name: 'epoch_jd') double? epochJd,@JsonKey(name: 'orbit_type') String? orbitType,@JsonKey(name: 'apoapsis_au') double? apoapsisAu,@JsonKey(name: 'periapsis_au') double? periapsisAu,@JsonKey(name: 'semi_major_axis_au') double? semiMajorAxisAu, double? eccentricity, double? inclination, double? longitude,@JsonKey(name: 'periapsis_arg') double? periapsisArg,@JsonKey(name: 'period_days') double? periodDays,@JsonKey(name: 'speed_kph') double? speedKph,@JsonKey(name: 'speed_mph') double? speedMph,@JsonKey(name: 'earth_distance_km') double? earthDistanceKm,@JsonKey(name: 'earth_distance_mi') double? earthDistanceMi,@JsonKey(name: 'mars_distance_km') double? marsDistanceKm,@JsonKey(name: 'mars_distance_mi') double? marsDistanceMi,@JsonKey(name: 'flickr_images') List<String>? flickrImages, String? wikipedia, String? video, String? details, String? id
});




}
/// @nodoc
class _$NetworkRoadsterModelCopyWithImpl<$Res>
    implements $NetworkRoadsterModelCopyWith<$Res> {
  _$NetworkRoadsterModelCopyWithImpl(this._self, this._then);

  final NetworkRoadsterModel _self;
  final $Res Function(NetworkRoadsterModel) _then;

/// Create a copy of NetworkRoadsterModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? launchDateUtc = freezed,Object? launchDateUnix = freezed,Object? launchMassKg = freezed,Object? launchMassLbs = freezed,Object? noradId = freezed,Object? epochJd = freezed,Object? orbitType = freezed,Object? apoapsisAu = freezed,Object? periapsisAu = freezed,Object? semiMajorAxisAu = freezed,Object? eccentricity = freezed,Object? inclination = freezed,Object? longitude = freezed,Object? periapsisArg = freezed,Object? periodDays = freezed,Object? speedKph = freezed,Object? speedMph = freezed,Object? earthDistanceKm = freezed,Object? earthDistanceMi = freezed,Object? marsDistanceKm = freezed,Object? marsDistanceMi = freezed,Object? flickrImages = freezed,Object? wikipedia = freezed,Object? video = freezed,Object? details = freezed,Object? id = freezed,}) {
  return _then(NetworkRoadsterModel(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,launchDateUtc: freezed == launchDateUtc ? _self.launchDateUtc : launchDateUtc // ignore: cast_nullable_to_non_nullable
as String?,launchDateUnix: freezed == launchDateUnix ? _self.launchDateUnix : launchDateUnix // ignore: cast_nullable_to_non_nullable
as int?,launchMassKg: freezed == launchMassKg ? _self.launchMassKg : launchMassKg // ignore: cast_nullable_to_non_nullable
as int?,launchMassLbs: freezed == launchMassLbs ? _self.launchMassLbs : launchMassLbs // ignore: cast_nullable_to_non_nullable
as int?,noradId: freezed == noradId ? _self.noradId : noradId // ignore: cast_nullable_to_non_nullable
as int?,epochJd: freezed == epochJd ? _self.epochJd : epochJd // ignore: cast_nullable_to_non_nullable
as double?,orbitType: freezed == orbitType ? _self.orbitType : orbitType // ignore: cast_nullable_to_non_nullable
as String?,apoapsisAu: freezed == apoapsisAu ? _self.apoapsisAu : apoapsisAu // ignore: cast_nullable_to_non_nullable
as double?,periapsisAu: freezed == periapsisAu ? _self.periapsisAu : periapsisAu // ignore: cast_nullable_to_non_nullable
as double?,semiMajorAxisAu: freezed == semiMajorAxisAu ? _self.semiMajorAxisAu : semiMajorAxisAu // ignore: cast_nullable_to_non_nullable
as double?,eccentricity: freezed == eccentricity ? _self.eccentricity : eccentricity // ignore: cast_nullable_to_non_nullable
as double?,inclination: freezed == inclination ? _self.inclination : inclination // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,periapsisArg: freezed == periapsisArg ? _self.periapsisArg : periapsisArg // ignore: cast_nullable_to_non_nullable
as double?,periodDays: freezed == periodDays ? _self.periodDays : periodDays // ignore: cast_nullable_to_non_nullable
as double?,speedKph: freezed == speedKph ? _self.speedKph : speedKph // ignore: cast_nullable_to_non_nullable
as double?,speedMph: freezed == speedMph ? _self.speedMph : speedMph // ignore: cast_nullable_to_non_nullable
as double?,earthDistanceKm: freezed == earthDistanceKm ? _self.earthDistanceKm : earthDistanceKm // ignore: cast_nullable_to_non_nullable
as double?,earthDistanceMi: freezed == earthDistanceMi ? _self.earthDistanceMi : earthDistanceMi // ignore: cast_nullable_to_non_nullable
as double?,marsDistanceKm: freezed == marsDistanceKm ? _self.marsDistanceKm : marsDistanceKm // ignore: cast_nullable_to_non_nullable
as double?,marsDistanceMi: freezed == marsDistanceMi ? _self.marsDistanceMi : marsDistanceMi // ignore: cast_nullable_to_non_nullable
as double?,flickrImages: freezed == flickrImages ? _self.flickrImages : flickrImages // ignore: cast_nullable_to_non_nullable
as List<String>?,wikipedia: freezed == wikipedia ? _self.wikipedia : wikipedia // ignore: cast_nullable_to_non_nullable
as String?,video: freezed == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as String?,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [NetworkRoadsterModel].
extension NetworkRoadsterModelPatterns on NetworkRoadsterModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NetworkRoadsterModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NetworkRoadsterModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NetworkRoadsterModel value)  $default,){
final _that = this;
switch (_that) {
case _NetworkRoadsterModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NetworkRoadsterModel value)?  $default,){
final _that = this;
switch (_that) {
case _NetworkRoadsterModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name, @JsonKey(name: 'launch_date_utc')  String? launchDateUtc, @JsonKey(name: 'launch_date_unix')  int? launchDateUnix, @JsonKey(name: 'launch_mass_kg')  int? launchMassKg, @JsonKey(name: 'launch_mass_lbs')  int? launchMassLbs, @JsonKey(name: 'norad_id')  int? noradId, @JsonKey(name: 'epoch_jd')  double? epochJd, @JsonKey(name: 'orbit_type')  String? orbitType, @JsonKey(name: 'apoapsis_au')  double? apoapsisAu, @JsonKey(name: 'periapsis_au')  double? periapsisAu, @JsonKey(name: 'semi_major_axis_au')  double? semiMajorAxisAu,  double? eccentricity,  double? inclination,  double? longitude, @JsonKey(name: 'periapsis_arg')  double? periapsisArg, @JsonKey(name: 'period_days')  double? periodDays, @JsonKey(name: 'speed_kph')  double? speedKph, @JsonKey(name: 'speed_mph')  double? speedMph, @JsonKey(name: 'earth_distance_km')  double? earthDistanceKm, @JsonKey(name: 'earth_distance_mi')  double? earthDistanceMi, @JsonKey(name: 'mars_distance_km')  double? marsDistanceKm, @JsonKey(name: 'mars_distance_mi')  double? marsDistanceMi, @JsonKey(name: 'flickr_images')  List<String>? flickrImages,  String? wikipedia,  String? video,  String? details,  String? id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NetworkRoadsterModel() when $default != null:
return $default(_that.name,_that.launchDateUtc,_that.launchDateUnix,_that.launchMassKg,_that.launchMassLbs,_that.noradId,_that.epochJd,_that.orbitType,_that.apoapsisAu,_that.periapsisAu,_that.semiMajorAxisAu,_that.eccentricity,_that.inclination,_that.longitude,_that.periapsisArg,_that.periodDays,_that.speedKph,_that.speedMph,_that.earthDistanceKm,_that.earthDistanceMi,_that.marsDistanceKm,_that.marsDistanceMi,_that.flickrImages,_that.wikipedia,_that.video,_that.details,_that.id);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name, @JsonKey(name: 'launch_date_utc')  String? launchDateUtc, @JsonKey(name: 'launch_date_unix')  int? launchDateUnix, @JsonKey(name: 'launch_mass_kg')  int? launchMassKg, @JsonKey(name: 'launch_mass_lbs')  int? launchMassLbs, @JsonKey(name: 'norad_id')  int? noradId, @JsonKey(name: 'epoch_jd')  double? epochJd, @JsonKey(name: 'orbit_type')  String? orbitType, @JsonKey(name: 'apoapsis_au')  double? apoapsisAu, @JsonKey(name: 'periapsis_au')  double? periapsisAu, @JsonKey(name: 'semi_major_axis_au')  double? semiMajorAxisAu,  double? eccentricity,  double? inclination,  double? longitude, @JsonKey(name: 'periapsis_arg')  double? periapsisArg, @JsonKey(name: 'period_days')  double? periodDays, @JsonKey(name: 'speed_kph')  double? speedKph, @JsonKey(name: 'speed_mph')  double? speedMph, @JsonKey(name: 'earth_distance_km')  double? earthDistanceKm, @JsonKey(name: 'earth_distance_mi')  double? earthDistanceMi, @JsonKey(name: 'mars_distance_km')  double? marsDistanceKm, @JsonKey(name: 'mars_distance_mi')  double? marsDistanceMi, @JsonKey(name: 'flickr_images')  List<String>? flickrImages,  String? wikipedia,  String? video,  String? details,  String? id)  $default,) {final _that = this;
switch (_that) {
case _NetworkRoadsterModel():
return $default(_that.name,_that.launchDateUtc,_that.launchDateUnix,_that.launchMassKg,_that.launchMassLbs,_that.noradId,_that.epochJd,_that.orbitType,_that.apoapsisAu,_that.periapsisAu,_that.semiMajorAxisAu,_that.eccentricity,_that.inclination,_that.longitude,_that.periapsisArg,_that.periodDays,_that.speedKph,_that.speedMph,_that.earthDistanceKm,_that.earthDistanceMi,_that.marsDistanceKm,_that.marsDistanceMi,_that.flickrImages,_that.wikipedia,_that.video,_that.details,_that.id);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name, @JsonKey(name: 'launch_date_utc')  String? launchDateUtc, @JsonKey(name: 'launch_date_unix')  int? launchDateUnix, @JsonKey(name: 'launch_mass_kg')  int? launchMassKg, @JsonKey(name: 'launch_mass_lbs')  int? launchMassLbs, @JsonKey(name: 'norad_id')  int? noradId, @JsonKey(name: 'epoch_jd')  double? epochJd, @JsonKey(name: 'orbit_type')  String? orbitType, @JsonKey(name: 'apoapsis_au')  double? apoapsisAu, @JsonKey(name: 'periapsis_au')  double? periapsisAu, @JsonKey(name: 'semi_major_axis_au')  double? semiMajorAxisAu,  double? eccentricity,  double? inclination,  double? longitude, @JsonKey(name: 'periapsis_arg')  double? periapsisArg, @JsonKey(name: 'period_days')  double? periodDays, @JsonKey(name: 'speed_kph')  double? speedKph, @JsonKey(name: 'speed_mph')  double? speedMph, @JsonKey(name: 'earth_distance_km')  double? earthDistanceKm, @JsonKey(name: 'earth_distance_mi')  double? earthDistanceMi, @JsonKey(name: 'mars_distance_km')  double? marsDistanceKm, @JsonKey(name: 'mars_distance_mi')  double? marsDistanceMi, @JsonKey(name: 'flickr_images')  List<String>? flickrImages,  String? wikipedia,  String? video,  String? details,  String? id)?  $default,) {final _that = this;
switch (_that) {
case _NetworkRoadsterModel() when $default != null:
return $default(_that.name,_that.launchDateUtc,_that.launchDateUnix,_that.launchMassKg,_that.launchMassLbs,_that.noradId,_that.epochJd,_that.orbitType,_that.apoapsisAu,_that.periapsisAu,_that.semiMajorAxisAu,_that.eccentricity,_that.inclination,_that.longitude,_that.periapsisArg,_that.periodDays,_that.speedKph,_that.speedMph,_that.earthDistanceKm,_that.earthDistanceMi,_that.marsDistanceKm,_that.marsDistanceMi,_that.flickrImages,_that.wikipedia,_that.video,_that.details,_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NetworkRoadsterModel extends NetworkRoadsterModel {
  const _NetworkRoadsterModel({this.name, @JsonKey(name: 'launch_date_utc') this.launchDateUtc, @JsonKey(name: 'launch_date_unix') this.launchDateUnix, @JsonKey(name: 'launch_mass_kg') this.launchMassKg, @JsonKey(name: 'launch_mass_lbs') this.launchMassLbs, @JsonKey(name: 'norad_id') this.noradId, @JsonKey(name: 'epoch_jd') this.epochJd, @JsonKey(name: 'orbit_type') this.orbitType, @JsonKey(name: 'apoapsis_au') this.apoapsisAu, @JsonKey(name: 'periapsis_au') this.periapsisAu, @JsonKey(name: 'semi_major_axis_au') this.semiMajorAxisAu, this.eccentricity, this.inclination, this.longitude, @JsonKey(name: 'periapsis_arg') this.periapsisArg, @JsonKey(name: 'period_days') this.periodDays, @JsonKey(name: 'speed_kph') this.speedKph, @JsonKey(name: 'speed_mph') this.speedMph, @JsonKey(name: 'earth_distance_km') this.earthDistanceKm, @JsonKey(name: 'earth_distance_mi') this.earthDistanceMi, @JsonKey(name: 'mars_distance_km') this.marsDistanceKm, @JsonKey(name: 'mars_distance_mi') this.marsDistanceMi, @JsonKey(name: 'flickr_images')  List<String>? flickrImages, this.wikipedia, this.video, this.details, this.id}): _flickrImages = flickrImages,super._();
  factory _NetworkRoadsterModel.fromJson(Map<String, dynamic> json) => _$NetworkRoadsterModelFromJson(json);

@override final  String? name;
@override@JsonKey(name: 'launch_date_utc') final  String? launchDateUtc;
@override@JsonKey(name: 'launch_date_unix') final  int? launchDateUnix;
@override@JsonKey(name: 'launch_mass_kg') final  int? launchMassKg;
@override@JsonKey(name: 'launch_mass_lbs') final  int? launchMassLbs;
@override@JsonKey(name: 'norad_id') final  int? noradId;
@override@JsonKey(name: 'epoch_jd') final  double? epochJd;
@override@JsonKey(name: 'orbit_type') final  String? orbitType;
@override@JsonKey(name: 'apoapsis_au') final  double? apoapsisAu;
@override@JsonKey(name: 'periapsis_au') final  double? periapsisAu;
@override@JsonKey(name: 'semi_major_axis_au') final  double? semiMajorAxisAu;
@override final  double? eccentricity;
@override final  double? inclination;
@override final  double? longitude;
@override@JsonKey(name: 'periapsis_arg') final  double? periapsisArg;
@override@JsonKey(name: 'period_days') final  double? periodDays;
@override@JsonKey(name: 'speed_kph') final  double? speedKph;
@override@JsonKey(name: 'speed_mph') final  double? speedMph;
@override@JsonKey(name: 'earth_distance_km') final  double? earthDistanceKm;
@override@JsonKey(name: 'earth_distance_mi') final  double? earthDistanceMi;
@override@JsonKey(name: 'mars_distance_km') final  double? marsDistanceKm;
@override@JsonKey(name: 'mars_distance_mi') final  double? marsDistanceMi;
 final  List<String>? _flickrImages;
@override@JsonKey(name: 'flickr_images') List<String>? get flickrImages {
  final value = _flickrImages;
  if (value == null) return null;
  if (_flickrImages is EqualUnmodifiableListView) return _flickrImages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? wikipedia;
@override final  String? video;
@override final  String? details;
@override final  String? id;

/// Create a copy of NetworkRoadsterModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NetworkRoadsterModelCopyWith<_NetworkRoadsterModel> get copyWith => __$NetworkRoadsterModelCopyWithImpl<_NetworkRoadsterModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NetworkRoadsterModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _NetworkRoadsterModel&&(identical(other.name, name) || other.name == name)&&(identical(other.launchDateUtc, launchDateUtc) || other.launchDateUtc == launchDateUtc)&&(identical(other.launchDateUnix, launchDateUnix) || other.launchDateUnix == launchDateUnix)&&(identical(other.launchMassKg, launchMassKg) || other.launchMassKg == launchMassKg)&&(identical(other.launchMassLbs, launchMassLbs) || other.launchMassLbs == launchMassLbs)&&(identical(other.noradId, noradId) || other.noradId == noradId)&&(identical(other.epochJd, epochJd) || other.epochJd == epochJd)&&(identical(other.orbitType, orbitType) || other.orbitType == orbitType)&&(identical(other.apoapsisAu, apoapsisAu) || other.apoapsisAu == apoapsisAu)&&(identical(other.periapsisAu, periapsisAu) || other.periapsisAu == periapsisAu)&&(identical(other.semiMajorAxisAu, semiMajorAxisAu) || other.semiMajorAxisAu == semiMajorAxisAu)&&(identical(other.eccentricity, eccentricity) || other.eccentricity == eccentricity)&&(identical(other.inclination, inclination) || other.inclination == inclination)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.periapsisArg, periapsisArg) || other.periapsisArg == periapsisArg)&&(identical(other.periodDays, periodDays) || other.periodDays == periodDays)&&(identical(other.speedKph, speedKph) || other.speedKph == speedKph)&&(identical(other.speedMph, speedMph) || other.speedMph == speedMph)&&(identical(other.earthDistanceKm, earthDistanceKm) || other.earthDistanceKm == earthDistanceKm)&&(identical(other.earthDistanceMi, earthDistanceMi) || other.earthDistanceMi == earthDistanceMi)&&(identical(other.marsDistanceKm, marsDistanceKm) || other.marsDistanceKm == marsDistanceKm)&&(identical(other.marsDistanceMi, marsDistanceMi) || other.marsDistanceMi == marsDistanceMi)&&const DeepCollectionEquality().equals(other.flickrImages, _flickrImages)&&(identical(other.wikipedia, wikipedia) || other.wikipedia == wikipedia)&&(identical(other.video, video) || other.video == video)&&(identical(other.details, details) || other.details == details)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hashAll([runtimeType,name,launchDateUtc,launchDateUnix,launchMassKg,launchMassLbs,noradId,epochJd,orbitType,apoapsisAu,periapsisAu,semiMajorAxisAu,eccentricity,inclination,longitude,periapsisArg,periodDays,speedKph,speedMph,earthDistanceKm,earthDistanceMi,marsDistanceKm,marsDistanceMi,const DeepCollectionEquality().hash(_flickrImages),wikipedia,video,details,id]);
}

@override
String toString() {
    return 'NetworkRoadsterModel(name: $name, launchDateUtc: $launchDateUtc, launchDateUnix: $launchDateUnix, launchMassKg: $launchMassKg, launchMassLbs: $launchMassLbs, noradId: $noradId, epochJd: $epochJd, orbitType: $orbitType, apoapsisAu: $apoapsisAu, periapsisAu: $periapsisAu, semiMajorAxisAu: $semiMajorAxisAu, eccentricity: $eccentricity, inclination: $inclination, longitude: $longitude, periapsisArg: $periapsisArg, periodDays: $periodDays, speedKph: $speedKph, speedMph: $speedMph, earthDistanceKm: $earthDistanceKm, earthDistanceMi: $earthDistanceMi, marsDistanceKm: $marsDistanceKm, marsDistanceMi: $marsDistanceMi, flickrImages: $flickrImages, wikipedia: $wikipedia, video: $video, details: $details, id: $id)';
}


}

/// @nodoc
abstract mixin class _$NetworkRoadsterModelCopyWith<$Res> implements $NetworkRoadsterModelCopyWith<$Res> {
  factory _$NetworkRoadsterModelCopyWith(_NetworkRoadsterModel value, $Res Function(_NetworkRoadsterModel) _then) = __$NetworkRoadsterModelCopyWithImpl;
@override @useResult
$Res call({
 String? name,@JsonKey(name: 'launch_date_utc') String? launchDateUtc,@JsonKey(name: 'launch_date_unix') int? launchDateUnix,@JsonKey(name: 'launch_mass_kg') int? launchMassKg,@JsonKey(name: 'launch_mass_lbs') int? launchMassLbs,@JsonKey(name: 'norad_id') int? noradId,@JsonKey(name: 'epoch_jd') double? epochJd,@JsonKey(name: 'orbit_type') String? orbitType,@JsonKey(name: 'apoapsis_au') double? apoapsisAu,@JsonKey(name: 'periapsis_au') double? periapsisAu,@JsonKey(name: 'semi_major_axis_au') double? semiMajorAxisAu, double? eccentricity, double? inclination, double? longitude,@JsonKey(name: 'periapsis_arg') double? periapsisArg,@JsonKey(name: 'period_days') double? periodDays,@JsonKey(name: 'speed_kph') double? speedKph,@JsonKey(name: 'speed_mph') double? speedMph,@JsonKey(name: 'earth_distance_km') double? earthDistanceKm,@JsonKey(name: 'earth_distance_mi') double? earthDistanceMi,@JsonKey(name: 'mars_distance_km') double? marsDistanceKm,@JsonKey(name: 'mars_distance_mi') double? marsDistanceMi,@JsonKey(name: 'flickr_images') List<String>? flickrImages, String? wikipedia, String? video, String? details, String? id
});




}
/// @nodoc
class __$NetworkRoadsterModelCopyWithImpl<$Res>
    implements _$NetworkRoadsterModelCopyWith<$Res> {
  __$NetworkRoadsterModelCopyWithImpl(this._self, this._then);

  final _NetworkRoadsterModel _self;
  final $Res Function(_NetworkRoadsterModel) _then;

/// Create a copy of NetworkRoadsterModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? launchDateUtc = freezed,Object? launchDateUnix = freezed,Object? launchMassKg = freezed,Object? launchMassLbs = freezed,Object? noradId = freezed,Object? epochJd = freezed,Object? orbitType = freezed,Object? apoapsisAu = freezed,Object? periapsisAu = freezed,Object? semiMajorAxisAu = freezed,Object? eccentricity = freezed,Object? inclination = freezed,Object? longitude = freezed,Object? periapsisArg = freezed,Object? periodDays = freezed,Object? speedKph = freezed,Object? speedMph = freezed,Object? earthDistanceKm = freezed,Object? earthDistanceMi = freezed,Object? marsDistanceKm = freezed,Object? marsDistanceMi = freezed,Object? flickrImages = freezed,Object? wikipedia = freezed,Object? video = freezed,Object? details = freezed,Object? id = freezed,}) {
  return _then(_NetworkRoadsterModel(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,launchDateUtc: freezed == launchDateUtc ? _self.launchDateUtc : launchDateUtc // ignore: cast_nullable_to_non_nullable
as String?,launchDateUnix: freezed == launchDateUnix ? _self.launchDateUnix : launchDateUnix // ignore: cast_nullable_to_non_nullable
as int?,launchMassKg: freezed == launchMassKg ? _self.launchMassKg : launchMassKg // ignore: cast_nullable_to_non_nullable
as int?,launchMassLbs: freezed == launchMassLbs ? _self.launchMassLbs : launchMassLbs // ignore: cast_nullable_to_non_nullable
as int?,noradId: freezed == noradId ? _self.noradId : noradId // ignore: cast_nullable_to_non_nullable
as int?,epochJd: freezed == epochJd ? _self.epochJd : epochJd // ignore: cast_nullable_to_non_nullable
as double?,orbitType: freezed == orbitType ? _self.orbitType : orbitType // ignore: cast_nullable_to_non_nullable
as String?,apoapsisAu: freezed == apoapsisAu ? _self.apoapsisAu : apoapsisAu // ignore: cast_nullable_to_non_nullable
as double?,periapsisAu: freezed == periapsisAu ? _self.periapsisAu : periapsisAu // ignore: cast_nullable_to_non_nullable
as double?,semiMajorAxisAu: freezed == semiMajorAxisAu ? _self.semiMajorAxisAu : semiMajorAxisAu // ignore: cast_nullable_to_non_nullable
as double?,eccentricity: freezed == eccentricity ? _self.eccentricity : eccentricity // ignore: cast_nullable_to_non_nullable
as double?,inclination: freezed == inclination ? _self.inclination : inclination // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,periapsisArg: freezed == periapsisArg ? _self.periapsisArg : periapsisArg // ignore: cast_nullable_to_non_nullable
as double?,periodDays: freezed == periodDays ? _self.periodDays : periodDays // ignore: cast_nullable_to_non_nullable
as double?,speedKph: freezed == speedKph ? _self.speedKph : speedKph // ignore: cast_nullable_to_non_nullable
as double?,speedMph: freezed == speedMph ? _self.speedMph : speedMph // ignore: cast_nullable_to_non_nullable
as double?,earthDistanceKm: freezed == earthDistanceKm ? _self.earthDistanceKm : earthDistanceKm // ignore: cast_nullable_to_non_nullable
as double?,earthDistanceMi: freezed == earthDistanceMi ? _self.earthDistanceMi : earthDistanceMi // ignore: cast_nullable_to_non_nullable
as double?,marsDistanceKm: freezed == marsDistanceKm ? _self.marsDistanceKm : marsDistanceKm // ignore: cast_nullable_to_non_nullable
as double?,marsDistanceMi: freezed == marsDistanceMi ? _self.marsDistanceMi : marsDistanceMi // ignore: cast_nullable_to_non_nullable
as double?,flickrImages: freezed == flickrImages ? _self._flickrImages : flickrImages // ignore: cast_nullable_to_non_nullable
as List<String>?,wikipedia: freezed == wikipedia ? _self.wikipedia : wikipedia // ignore: cast_nullable_to_non_nullable
as String?,video: freezed == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as String?,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_core_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NetworkCoreModel {

@JsonKey(name: 'core_serial') String? get coreSerial; int? get block; String? get status;@JsonKey(name: 'original_launch') String? get originalLaunch;@JsonKey(name: 'original_launch_unix') int? get originalLaunchUnix; List<NetworkMission>? get missions;@JsonKey(name: 'reuse_count') int? get reuseCount;@JsonKey(name: 'rtls_attempts') int? get rtlsAttempts;@JsonKey(name: 'rtls_landings') int? get rtlsLandings;@JsonKey(name: 'asds_attempts') int? get asdsAttempts;@JsonKey(name: 'asds_landings') int? get asdsLandings;@JsonKey(name: 'water_landing') bool? get waterLanding; String? get details;
/// Create a copy of NetworkCoreModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NetworkCoreModelCopyWith<NetworkCoreModel> get copyWith => _$NetworkCoreModelCopyWithImpl<NetworkCoreModel>(this as NetworkCoreModel, _$identity);

  /// Serializes this NetworkCoreModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkCoreModel&&(identical(other.coreSerial, coreSerial) || other.coreSerial == coreSerial)&&(identical(other.block, block) || other.block == block)&&(identical(other.status, status) || other.status == status)&&(identical(other.originalLaunch, originalLaunch) || other.originalLaunch == originalLaunch)&&(identical(other.originalLaunchUnix, originalLaunchUnix) || other.originalLaunchUnix == originalLaunchUnix)&&const DeepCollectionEquality().equals(other.missions, missions)&&(identical(other.reuseCount, reuseCount) || other.reuseCount == reuseCount)&&(identical(other.rtlsAttempts, rtlsAttempts) || other.rtlsAttempts == rtlsAttempts)&&(identical(other.rtlsLandings, rtlsLandings) || other.rtlsLandings == rtlsLandings)&&(identical(other.asdsAttempts, asdsAttempts) || other.asdsAttempts == asdsAttempts)&&(identical(other.asdsLandings, asdsLandings) || other.asdsLandings == asdsLandings)&&(identical(other.waterLanding, waterLanding) || other.waterLanding == waterLanding)&&(identical(other.details, details) || other.details == details));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,coreSerial,block,status,originalLaunch,originalLaunchUnix,const DeepCollectionEquality().hash(missions),reuseCount,rtlsAttempts,rtlsLandings,asdsAttempts,asdsLandings,waterLanding,details);

@override
String toString() {
  return 'NetworkCoreModel(coreSerial: $coreSerial, block: $block, status: $status, originalLaunch: $originalLaunch, originalLaunchUnix: $originalLaunchUnix, missions: $missions, reuseCount: $reuseCount, rtlsAttempts: $rtlsAttempts, rtlsLandings: $rtlsLandings, asdsAttempts: $asdsAttempts, asdsLandings: $asdsLandings, waterLanding: $waterLanding, details: $details)';
}


}

/// @nodoc
abstract mixin class $NetworkCoreModelCopyWith<$Res>  {
  factory $NetworkCoreModelCopyWith(NetworkCoreModel value, $Res Function(NetworkCoreModel) _then) = _$NetworkCoreModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'core_serial') String? coreSerial, int? block, String? status,@JsonKey(name: 'original_launch') String? originalLaunch,@JsonKey(name: 'original_launch_unix') int? originalLaunchUnix, List<NetworkMission>? missions,@JsonKey(name: 'reuse_count') int? reuseCount,@JsonKey(name: 'rtls_attempts') int? rtlsAttempts,@JsonKey(name: 'rtls_landings') int? rtlsLandings,@JsonKey(name: 'asds_attempts') int? asdsAttempts,@JsonKey(name: 'asds_landings') int? asdsLandings,@JsonKey(name: 'water_landing') bool? waterLanding, String? details
});




}
/// @nodoc
class _$NetworkCoreModelCopyWithImpl<$Res>
    implements $NetworkCoreModelCopyWith<$Res> {
  _$NetworkCoreModelCopyWithImpl(this._self, this._then);

  final NetworkCoreModel _self;
  final $Res Function(NetworkCoreModel) _then;

/// Create a copy of NetworkCoreModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? coreSerial = freezed,Object? block = freezed,Object? status = freezed,Object? originalLaunch = freezed,Object? originalLaunchUnix = freezed,Object? missions = freezed,Object? reuseCount = freezed,Object? rtlsAttempts = freezed,Object? rtlsLandings = freezed,Object? asdsAttempts = freezed,Object? asdsLandings = freezed,Object? waterLanding = freezed,Object? details = freezed,}) {
  return _then(_self.copyWith(
coreSerial: freezed == coreSerial ? _self.coreSerial : coreSerial // ignore: cast_nullable_to_non_nullable
as String?,block: freezed == block ? _self.block : block // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,originalLaunch: freezed == originalLaunch ? _self.originalLaunch : originalLaunch // ignore: cast_nullable_to_non_nullable
as String?,originalLaunchUnix: freezed == originalLaunchUnix ? _self.originalLaunchUnix : originalLaunchUnix // ignore: cast_nullable_to_non_nullable
as int?,missions: freezed == missions ? _self.missions : missions // ignore: cast_nullable_to_non_nullable
as List<NetworkMission>?,reuseCount: freezed == reuseCount ? _self.reuseCount : reuseCount // ignore: cast_nullable_to_non_nullable
as int?,rtlsAttempts: freezed == rtlsAttempts ? _self.rtlsAttempts : rtlsAttempts // ignore: cast_nullable_to_non_nullable
as int?,rtlsLandings: freezed == rtlsLandings ? _self.rtlsLandings : rtlsLandings // ignore: cast_nullable_to_non_nullable
as int?,asdsAttempts: freezed == asdsAttempts ? _self.asdsAttempts : asdsAttempts // ignore: cast_nullable_to_non_nullable
as int?,asdsLandings: freezed == asdsLandings ? _self.asdsLandings : asdsLandings // ignore: cast_nullable_to_non_nullable
as int?,waterLanding: freezed == waterLanding ? _self.waterLanding : waterLanding // ignore: cast_nullable_to_non_nullable
as bool?,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [NetworkCoreModel].
extension NetworkCoreModelPatterns on NetworkCoreModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NetworkCoreModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NetworkCoreModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NetworkCoreModel value)  $default,){
final _that = this;
switch (_that) {
case _NetworkCoreModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NetworkCoreModel value)?  $default,){
final _that = this;
switch (_that) {
case _NetworkCoreModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'core_serial')  String? coreSerial,  int? block,  String? status, @JsonKey(name: 'original_launch')  String? originalLaunch, @JsonKey(name: 'original_launch_unix')  int? originalLaunchUnix,  List<NetworkMission>? missions, @JsonKey(name: 'reuse_count')  int? reuseCount, @JsonKey(name: 'rtls_attempts')  int? rtlsAttempts, @JsonKey(name: 'rtls_landings')  int? rtlsLandings, @JsonKey(name: 'asds_attempts')  int? asdsAttempts, @JsonKey(name: 'asds_landings')  int? asdsLandings, @JsonKey(name: 'water_landing')  bool? waterLanding,  String? details)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NetworkCoreModel() when $default != null:
return $default(_that.coreSerial,_that.block,_that.status,_that.originalLaunch,_that.originalLaunchUnix,_that.missions,_that.reuseCount,_that.rtlsAttempts,_that.rtlsLandings,_that.asdsAttempts,_that.asdsLandings,_that.waterLanding,_that.details);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'core_serial')  String? coreSerial,  int? block,  String? status, @JsonKey(name: 'original_launch')  String? originalLaunch, @JsonKey(name: 'original_launch_unix')  int? originalLaunchUnix,  List<NetworkMission>? missions, @JsonKey(name: 'reuse_count')  int? reuseCount, @JsonKey(name: 'rtls_attempts')  int? rtlsAttempts, @JsonKey(name: 'rtls_landings')  int? rtlsLandings, @JsonKey(name: 'asds_attempts')  int? asdsAttempts, @JsonKey(name: 'asds_landings')  int? asdsLandings, @JsonKey(name: 'water_landing')  bool? waterLanding,  String? details)  $default,) {final _that = this;
switch (_that) {
case _NetworkCoreModel():
return $default(_that.coreSerial,_that.block,_that.status,_that.originalLaunch,_that.originalLaunchUnix,_that.missions,_that.reuseCount,_that.rtlsAttempts,_that.rtlsLandings,_that.asdsAttempts,_that.asdsLandings,_that.waterLanding,_that.details);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'core_serial')  String? coreSerial,  int? block,  String? status, @JsonKey(name: 'original_launch')  String? originalLaunch, @JsonKey(name: 'original_launch_unix')  int? originalLaunchUnix,  List<NetworkMission>? missions, @JsonKey(name: 'reuse_count')  int? reuseCount, @JsonKey(name: 'rtls_attempts')  int? rtlsAttempts, @JsonKey(name: 'rtls_landings')  int? rtlsLandings, @JsonKey(name: 'asds_attempts')  int? asdsAttempts, @JsonKey(name: 'asds_landings')  int? asdsLandings, @JsonKey(name: 'water_landing')  bool? waterLanding,  String? details)?  $default,) {final _that = this;
switch (_that) {
case _NetworkCoreModel() when $default != null:
return $default(_that.coreSerial,_that.block,_that.status,_that.originalLaunch,_that.originalLaunchUnix,_that.missions,_that.reuseCount,_that.rtlsAttempts,_that.rtlsLandings,_that.asdsAttempts,_that.asdsLandings,_that.waterLanding,_that.details);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NetworkCoreModel extends NetworkCoreModel {
  const _NetworkCoreModel({@JsonKey(name: 'core_serial') this.coreSerial, this.block, this.status, @JsonKey(name: 'original_launch') this.originalLaunch, @JsonKey(name: 'original_launch_unix') this.originalLaunchUnix, final  List<NetworkMission>? missions, @JsonKey(name: 'reuse_count') this.reuseCount, @JsonKey(name: 'rtls_attempts') this.rtlsAttempts, @JsonKey(name: 'rtls_landings') this.rtlsLandings, @JsonKey(name: 'asds_attempts') this.asdsAttempts, @JsonKey(name: 'asds_landings') this.asdsLandings, @JsonKey(name: 'water_landing') this.waterLanding, this.details}): _missions = missions,super._();
  factory _NetworkCoreModel.fromJson(Map<String, dynamic> json) => _$NetworkCoreModelFromJson(json);

@override@JsonKey(name: 'core_serial') final  String? coreSerial;
@override final  int? block;
@override final  String? status;
@override@JsonKey(name: 'original_launch') final  String? originalLaunch;
@override@JsonKey(name: 'original_launch_unix') final  int? originalLaunchUnix;
 final  List<NetworkMission>? _missions;
@override List<NetworkMission>? get missions {
  final value = _missions;
  if (value == null) return null;
  if (_missions is EqualUnmodifiableListView) return _missions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'reuse_count') final  int? reuseCount;
@override@JsonKey(name: 'rtls_attempts') final  int? rtlsAttempts;
@override@JsonKey(name: 'rtls_landings') final  int? rtlsLandings;
@override@JsonKey(name: 'asds_attempts') final  int? asdsAttempts;
@override@JsonKey(name: 'asds_landings') final  int? asdsLandings;
@override@JsonKey(name: 'water_landing') final  bool? waterLanding;
@override final  String? details;

/// Create a copy of NetworkCoreModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NetworkCoreModelCopyWith<_NetworkCoreModel> get copyWith => __$NetworkCoreModelCopyWithImpl<_NetworkCoreModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NetworkCoreModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NetworkCoreModel&&(identical(other.coreSerial, coreSerial) || other.coreSerial == coreSerial)&&(identical(other.block, block) || other.block == block)&&(identical(other.status, status) || other.status == status)&&(identical(other.originalLaunch, originalLaunch) || other.originalLaunch == originalLaunch)&&(identical(other.originalLaunchUnix, originalLaunchUnix) || other.originalLaunchUnix == originalLaunchUnix)&&const DeepCollectionEquality().equals(other._missions, _missions)&&(identical(other.reuseCount, reuseCount) || other.reuseCount == reuseCount)&&(identical(other.rtlsAttempts, rtlsAttempts) || other.rtlsAttempts == rtlsAttempts)&&(identical(other.rtlsLandings, rtlsLandings) || other.rtlsLandings == rtlsLandings)&&(identical(other.asdsAttempts, asdsAttempts) || other.asdsAttempts == asdsAttempts)&&(identical(other.asdsLandings, asdsLandings) || other.asdsLandings == asdsLandings)&&(identical(other.waterLanding, waterLanding) || other.waterLanding == waterLanding)&&(identical(other.details, details) || other.details == details));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,coreSerial,block,status,originalLaunch,originalLaunchUnix,const DeepCollectionEquality().hash(_missions),reuseCount,rtlsAttempts,rtlsLandings,asdsAttempts,asdsLandings,waterLanding,details);

@override
String toString() {
  return 'NetworkCoreModel(coreSerial: $coreSerial, block: $block, status: $status, originalLaunch: $originalLaunch, originalLaunchUnix: $originalLaunchUnix, missions: $missions, reuseCount: $reuseCount, rtlsAttempts: $rtlsAttempts, rtlsLandings: $rtlsLandings, asdsAttempts: $asdsAttempts, asdsLandings: $asdsLandings, waterLanding: $waterLanding, details: $details)';
}


}

/// @nodoc
abstract mixin class _$NetworkCoreModelCopyWith<$Res> implements $NetworkCoreModelCopyWith<$Res> {
  factory _$NetworkCoreModelCopyWith(_NetworkCoreModel value, $Res Function(_NetworkCoreModel) _then) = __$NetworkCoreModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'core_serial') String? coreSerial, int? block, String? status,@JsonKey(name: 'original_launch') String? originalLaunch,@JsonKey(name: 'original_launch_unix') int? originalLaunchUnix, List<NetworkMission>? missions,@JsonKey(name: 'reuse_count') int? reuseCount,@JsonKey(name: 'rtls_attempts') int? rtlsAttempts,@JsonKey(name: 'rtls_landings') int? rtlsLandings,@JsonKey(name: 'asds_attempts') int? asdsAttempts,@JsonKey(name: 'asds_landings') int? asdsLandings,@JsonKey(name: 'water_landing') bool? waterLanding, String? details
});




}
/// @nodoc
class __$NetworkCoreModelCopyWithImpl<$Res>
    implements _$NetworkCoreModelCopyWith<$Res> {
  __$NetworkCoreModelCopyWithImpl(this._self, this._then);

  final _NetworkCoreModel _self;
  final $Res Function(_NetworkCoreModel) _then;

/// Create a copy of NetworkCoreModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? coreSerial = freezed,Object? block = freezed,Object? status = freezed,Object? originalLaunch = freezed,Object? originalLaunchUnix = freezed,Object? missions = freezed,Object? reuseCount = freezed,Object? rtlsAttempts = freezed,Object? rtlsLandings = freezed,Object? asdsAttempts = freezed,Object? asdsLandings = freezed,Object? waterLanding = freezed,Object? details = freezed,}) {
  return _then(_NetworkCoreModel(
coreSerial: freezed == coreSerial ? _self.coreSerial : coreSerial // ignore: cast_nullable_to_non_nullable
as String?,block: freezed == block ? _self.block : block // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,originalLaunch: freezed == originalLaunch ? _self.originalLaunch : originalLaunch // ignore: cast_nullable_to_non_nullable
as String?,originalLaunchUnix: freezed == originalLaunchUnix ? _self.originalLaunchUnix : originalLaunchUnix // ignore: cast_nullable_to_non_nullable
as int?,missions: freezed == missions ? _self._missions : missions // ignore: cast_nullable_to_non_nullable
as List<NetworkMission>?,reuseCount: freezed == reuseCount ? _self.reuseCount : reuseCount // ignore: cast_nullable_to_non_nullable
as int?,rtlsAttempts: freezed == rtlsAttempts ? _self.rtlsAttempts : rtlsAttempts // ignore: cast_nullable_to_non_nullable
as int?,rtlsLandings: freezed == rtlsLandings ? _self.rtlsLandings : rtlsLandings // ignore: cast_nullable_to_non_nullable
as int?,asdsAttempts: freezed == asdsAttempts ? _self.asdsAttempts : asdsAttempts // ignore: cast_nullable_to_non_nullable
as int?,asdsLandings: freezed == asdsLandings ? _self.asdsLandings : asdsLandings // ignore: cast_nullable_to_non_nullable
as int?,waterLanding: freezed == waterLanding ? _self.waterLanding : waterLanding // ignore: cast_nullable_to_non_nullable
as bool?,details: freezed == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$NetworkMission {

 String? get name; int? get flight;
/// Create a copy of NetworkMission
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NetworkMissionCopyWith<NetworkMission> get copyWith => _$NetworkMissionCopyWithImpl<NetworkMission>(this as NetworkMission, _$identity);

  /// Serializes this NetworkMission to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkMission&&(identical(other.name, name) || other.name == name)&&(identical(other.flight, flight) || other.flight == flight));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,flight);

@override
String toString() {
  return 'NetworkMission(name: $name, flight: $flight)';
}


}

/// @nodoc
abstract mixin class $NetworkMissionCopyWith<$Res>  {
  factory $NetworkMissionCopyWith(NetworkMission value, $Res Function(NetworkMission) _then) = _$NetworkMissionCopyWithImpl;
@useResult
$Res call({
 String? name, int? flight
});




}
/// @nodoc
class _$NetworkMissionCopyWithImpl<$Res>
    implements $NetworkMissionCopyWith<$Res> {
  _$NetworkMissionCopyWithImpl(this._self, this._then);

  final NetworkMission _self;
  final $Res Function(NetworkMission) _then;

/// Create a copy of NetworkMission
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? flight = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,flight: freezed == flight ? _self.flight : flight // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [NetworkMission].
extension NetworkMissionPatterns on NetworkMission {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NetworkMission value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NetworkMission() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NetworkMission value)  $default,){
final _that = this;
switch (_that) {
case _NetworkMission():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NetworkMission value)?  $default,){
final _that = this;
switch (_that) {
case _NetworkMission() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  int? flight)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NetworkMission() when $default != null:
return $default(_that.name,_that.flight);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  int? flight)  $default,) {final _that = this;
switch (_that) {
case _NetworkMission():
return $default(_that.name,_that.flight);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  int? flight)?  $default,) {final _that = this;
switch (_that) {
case _NetworkMission() when $default != null:
return $default(_that.name,_that.flight);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NetworkMission extends NetworkMission {
  const _NetworkMission({this.name, this.flight}): super._();
  factory _NetworkMission.fromJson(Map<String, dynamic> json) => _$NetworkMissionFromJson(json);

@override final  String? name;
@override final  int? flight;

/// Create a copy of NetworkMission
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NetworkMissionCopyWith<_NetworkMission> get copyWith => __$NetworkMissionCopyWithImpl<_NetworkMission>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NetworkMissionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NetworkMission&&(identical(other.name, name) || other.name == name)&&(identical(other.flight, flight) || other.flight == flight));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,flight);

@override
String toString() {
  return 'NetworkMission(name: $name, flight: $flight)';
}


}

/// @nodoc
abstract mixin class _$NetworkMissionCopyWith<$Res> implements $NetworkMissionCopyWith<$Res> {
  factory _$NetworkMissionCopyWith(_NetworkMission value, $Res Function(_NetworkMission) _then) = __$NetworkMissionCopyWithImpl;
@override @useResult
$Res call({
 String? name, int? flight
});




}
/// @nodoc
class __$NetworkMissionCopyWithImpl<$Res>
    implements _$NetworkMissionCopyWith<$Res> {
  __$NetworkMissionCopyWithImpl(this._self, this._then);

  final _NetworkMission _self;
  final $Res Function(_NetworkMission) _then;

/// Create a copy of NetworkMission
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? flight = freezed,}) {
  return _then(_NetworkMission(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,flight: freezed == flight ? _self.flight : flight // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on

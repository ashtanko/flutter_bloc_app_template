// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_rocket_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NetworkRocketModel {

@JsonKey(name: 'rocket_id') String get rocketId; int? get id; bool? get active; int? get stages; int? get boosters;@JsonKey(name: 'cost_per_launch') int? get costPerLaunch;@JsonKey(name: 'success_rate_pct') int? get successRatePct;@JsonKey(name: 'first_flight') String? get firstFlight; String? get country; String? get company; NetworkDimension? get height; NetworkDimension? get diameter; NetworkMass? get mass;@JsonKey(name: 'payload_weights') List<NetworkPayloadWeight>? get payloadWeights; NetworkEngines? get engines; String? get wikipedia; String? get description;@JsonKey(name: 'landing_legs') NetworkLandingLegs? get landingLegs;@JsonKey(name: 'flickr_images') List<String>? get flickrImages;@JsonKey(name: 'rocket_type') String? get type;@JsonKey(name: 'rocket_name') String? get name;@JsonKey(name: 'first_stage') NetworkRocketFirstStageModel? get firstStage;@JsonKey(name: 'second_stage') NetworkRocketSecondStageModel? get secondStage;
/// Create a copy of NetworkRocketModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NetworkRocketModelCopyWith<NetworkRocketModel> get copyWith => _$NetworkRocketModelCopyWithImpl<NetworkRocketModel>(this as NetworkRocketModel, _$identity);

  /// Serializes this NetworkRocketModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkRocketModel&&(identical(other.rocketId, rocketId) || other.rocketId == rocketId)&&(identical(other.id, id) || other.id == id)&&(identical(other.active, active) || other.active == active)&&(identical(other.stages, stages) || other.stages == stages)&&(identical(other.boosters, boosters) || other.boosters == boosters)&&(identical(other.costPerLaunch, costPerLaunch) || other.costPerLaunch == costPerLaunch)&&(identical(other.successRatePct, successRatePct) || other.successRatePct == successRatePct)&&(identical(other.firstFlight, firstFlight) || other.firstFlight == firstFlight)&&(identical(other.country, country) || other.country == country)&&(identical(other.company, company) || other.company == company)&&(identical(other.height, height) || other.height == height)&&(identical(other.diameter, diameter) || other.diameter == diameter)&&(identical(other.mass, mass) || other.mass == mass)&&const DeepCollectionEquality().equals(other.payloadWeights, payloadWeights)&&(identical(other.engines, engines) || other.engines == engines)&&(identical(other.wikipedia, wikipedia) || other.wikipedia == wikipedia)&&(identical(other.description, description) || other.description == description)&&(identical(other.landingLegs, landingLegs) || other.landingLegs == landingLegs)&&const DeepCollectionEquality().equals(other.flickrImages, flickrImages)&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&(identical(other.firstStage, firstStage) || other.firstStage == firstStage)&&(identical(other.secondStage, secondStage) || other.secondStage == secondStage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,rocketId,id,active,stages,boosters,costPerLaunch,successRatePct,firstFlight,country,company,height,diameter,mass,const DeepCollectionEquality().hash(payloadWeights),engines,wikipedia,description,landingLegs,const DeepCollectionEquality().hash(flickrImages),type,name,firstStage,secondStage]);

@override
String toString() {
  return 'NetworkRocketModel(rocketId: $rocketId, id: $id, active: $active, stages: $stages, boosters: $boosters, costPerLaunch: $costPerLaunch, successRatePct: $successRatePct, firstFlight: $firstFlight, country: $country, company: $company, height: $height, diameter: $diameter, mass: $mass, payloadWeights: $payloadWeights, engines: $engines, wikipedia: $wikipedia, description: $description, landingLegs: $landingLegs, flickrImages: $flickrImages, type: $type, name: $name, firstStage: $firstStage, secondStage: $secondStage)';
}


}

/// @nodoc
abstract mixin class $NetworkRocketModelCopyWith<$Res>  {
  factory $NetworkRocketModelCopyWith(NetworkRocketModel value, $Res Function(NetworkRocketModel) _then) = _$NetworkRocketModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'rocket_id') String rocketId, int? id, bool? active, int? stages, int? boosters,@JsonKey(name: 'cost_per_launch') int? costPerLaunch,@JsonKey(name: 'success_rate_pct') int? successRatePct,@JsonKey(name: 'first_flight') String? firstFlight, String? country, String? company, NetworkDimension? height, NetworkDimension? diameter, NetworkMass? mass,@JsonKey(name: 'payload_weights') List<NetworkPayloadWeight>? payloadWeights, NetworkEngines? engines, String? wikipedia, String? description,@JsonKey(name: 'landing_legs') NetworkLandingLegs? landingLegs,@JsonKey(name: 'flickr_images') List<String>? flickrImages,@JsonKey(name: 'rocket_type') String? type,@JsonKey(name: 'rocket_name') String? name,@JsonKey(name: 'first_stage') NetworkRocketFirstStageModel? firstStage,@JsonKey(name: 'second_stage') NetworkRocketSecondStageModel? secondStage
});


$NetworkDimensionCopyWith<$Res>? get height;$NetworkDimensionCopyWith<$Res>? get diameter;$NetworkMassCopyWith<$Res>? get mass;$NetworkEnginesCopyWith<$Res>? get engines;$NetworkLandingLegsCopyWith<$Res>? get landingLegs;$NetworkRocketFirstStageModelCopyWith<$Res>? get firstStage;$NetworkRocketSecondStageModelCopyWith<$Res>? get secondStage;

}
/// @nodoc
class _$NetworkRocketModelCopyWithImpl<$Res>
    implements $NetworkRocketModelCopyWith<$Res> {
  _$NetworkRocketModelCopyWithImpl(this._self, this._then);

  final NetworkRocketModel _self;
  final $Res Function(NetworkRocketModel) _then;

/// Create a copy of NetworkRocketModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rocketId = null,Object? id = freezed,Object? active = freezed,Object? stages = freezed,Object? boosters = freezed,Object? costPerLaunch = freezed,Object? successRatePct = freezed,Object? firstFlight = freezed,Object? country = freezed,Object? company = freezed,Object? height = freezed,Object? diameter = freezed,Object? mass = freezed,Object? payloadWeights = freezed,Object? engines = freezed,Object? wikipedia = freezed,Object? description = freezed,Object? landingLegs = freezed,Object? flickrImages = freezed,Object? type = freezed,Object? name = freezed,Object? firstStage = freezed,Object? secondStage = freezed,}) {
  return _then(_self.copyWith(
rocketId: null == rocketId ? _self.rocketId : rocketId // ignore: cast_nullable_to_non_nullable
as String,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,stages: freezed == stages ? _self.stages : stages // ignore: cast_nullable_to_non_nullable
as int?,boosters: freezed == boosters ? _self.boosters : boosters // ignore: cast_nullable_to_non_nullable
as int?,costPerLaunch: freezed == costPerLaunch ? _self.costPerLaunch : costPerLaunch // ignore: cast_nullable_to_non_nullable
as int?,successRatePct: freezed == successRatePct ? _self.successRatePct : successRatePct // ignore: cast_nullable_to_non_nullable
as int?,firstFlight: freezed == firstFlight ? _self.firstFlight : firstFlight // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,company: freezed == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as NetworkDimension?,diameter: freezed == diameter ? _self.diameter : diameter // ignore: cast_nullable_to_non_nullable
as NetworkDimension?,mass: freezed == mass ? _self.mass : mass // ignore: cast_nullable_to_non_nullable
as NetworkMass?,payloadWeights: freezed == payloadWeights ? _self.payloadWeights : payloadWeights // ignore: cast_nullable_to_non_nullable
as List<NetworkPayloadWeight>?,engines: freezed == engines ? _self.engines : engines // ignore: cast_nullable_to_non_nullable
as NetworkEngines?,wikipedia: freezed == wikipedia ? _self.wikipedia : wikipedia // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,landingLegs: freezed == landingLegs ? _self.landingLegs : landingLegs // ignore: cast_nullable_to_non_nullable
as NetworkLandingLegs?,flickrImages: freezed == flickrImages ? _self.flickrImages : flickrImages // ignore: cast_nullable_to_non_nullable
as List<String>?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,firstStage: freezed == firstStage ? _self.firstStage : firstStage // ignore: cast_nullable_to_non_nullable
as NetworkRocketFirstStageModel?,secondStage: freezed == secondStage ? _self.secondStage : secondStage // ignore: cast_nullable_to_non_nullable
as NetworkRocketSecondStageModel?,
  ));
}
/// Create a copy of NetworkRocketModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NetworkDimensionCopyWith<$Res>? get height {
    if (_self.height == null) {
    return null;
  }

  return $NetworkDimensionCopyWith<$Res>(_self.height!, (value) {
    return _then(_self.copyWith(height: value));
  });
}/// Create a copy of NetworkRocketModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NetworkDimensionCopyWith<$Res>? get diameter {
    if (_self.diameter == null) {
    return null;
  }

  return $NetworkDimensionCopyWith<$Res>(_self.diameter!, (value) {
    return _then(_self.copyWith(diameter: value));
  });
}/// Create a copy of NetworkRocketModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NetworkMassCopyWith<$Res>? get mass {
    if (_self.mass == null) {
    return null;
  }

  return $NetworkMassCopyWith<$Res>(_self.mass!, (value) {
    return _then(_self.copyWith(mass: value));
  });
}/// Create a copy of NetworkRocketModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NetworkEnginesCopyWith<$Res>? get engines {
    if (_self.engines == null) {
    return null;
  }

  return $NetworkEnginesCopyWith<$Res>(_self.engines!, (value) {
    return _then(_self.copyWith(engines: value));
  });
}/// Create a copy of NetworkRocketModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NetworkLandingLegsCopyWith<$Res>? get landingLegs {
    if (_self.landingLegs == null) {
    return null;
  }

  return $NetworkLandingLegsCopyWith<$Res>(_self.landingLegs!, (value) {
    return _then(_self.copyWith(landingLegs: value));
  });
}/// Create a copy of NetworkRocketModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NetworkRocketFirstStageModelCopyWith<$Res>? get firstStage {
    if (_self.firstStage == null) {
    return null;
  }

  return $NetworkRocketFirstStageModelCopyWith<$Res>(_self.firstStage!, (value) {
    return _then(_self.copyWith(firstStage: value));
  });
}/// Create a copy of NetworkRocketModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NetworkRocketSecondStageModelCopyWith<$Res>? get secondStage {
    if (_self.secondStage == null) {
    return null;
  }

  return $NetworkRocketSecondStageModelCopyWith<$Res>(_self.secondStage!, (value) {
    return _then(_self.copyWith(secondStage: value));
  });
}
}


/// Adds pattern-matching-related methods to [NetworkRocketModel].
extension NetworkRocketModelPatterns on NetworkRocketModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NetworkRocketModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NetworkRocketModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NetworkRocketModel value)  $default,){
final _that = this;
switch (_that) {
case _NetworkRocketModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NetworkRocketModel value)?  $default,){
final _that = this;
switch (_that) {
case _NetworkRocketModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'rocket_id')  String rocketId,  int? id,  bool? active,  int? stages,  int? boosters, @JsonKey(name: 'cost_per_launch')  int? costPerLaunch, @JsonKey(name: 'success_rate_pct')  int? successRatePct, @JsonKey(name: 'first_flight')  String? firstFlight,  String? country,  String? company,  NetworkDimension? height,  NetworkDimension? diameter,  NetworkMass? mass, @JsonKey(name: 'payload_weights')  List<NetworkPayloadWeight>? payloadWeights,  NetworkEngines? engines,  String? wikipedia,  String? description, @JsonKey(name: 'landing_legs')  NetworkLandingLegs? landingLegs, @JsonKey(name: 'flickr_images')  List<String>? flickrImages, @JsonKey(name: 'rocket_type')  String? type, @JsonKey(name: 'rocket_name')  String? name, @JsonKey(name: 'first_stage')  NetworkRocketFirstStageModel? firstStage, @JsonKey(name: 'second_stage')  NetworkRocketSecondStageModel? secondStage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NetworkRocketModel() when $default != null:
return $default(_that.rocketId,_that.id,_that.active,_that.stages,_that.boosters,_that.costPerLaunch,_that.successRatePct,_that.firstFlight,_that.country,_that.company,_that.height,_that.diameter,_that.mass,_that.payloadWeights,_that.engines,_that.wikipedia,_that.description,_that.landingLegs,_that.flickrImages,_that.type,_that.name,_that.firstStage,_that.secondStage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'rocket_id')  String rocketId,  int? id,  bool? active,  int? stages,  int? boosters, @JsonKey(name: 'cost_per_launch')  int? costPerLaunch, @JsonKey(name: 'success_rate_pct')  int? successRatePct, @JsonKey(name: 'first_flight')  String? firstFlight,  String? country,  String? company,  NetworkDimension? height,  NetworkDimension? diameter,  NetworkMass? mass, @JsonKey(name: 'payload_weights')  List<NetworkPayloadWeight>? payloadWeights,  NetworkEngines? engines,  String? wikipedia,  String? description, @JsonKey(name: 'landing_legs')  NetworkLandingLegs? landingLegs, @JsonKey(name: 'flickr_images')  List<String>? flickrImages, @JsonKey(name: 'rocket_type')  String? type, @JsonKey(name: 'rocket_name')  String? name, @JsonKey(name: 'first_stage')  NetworkRocketFirstStageModel? firstStage, @JsonKey(name: 'second_stage')  NetworkRocketSecondStageModel? secondStage)  $default,) {final _that = this;
switch (_that) {
case _NetworkRocketModel():
return $default(_that.rocketId,_that.id,_that.active,_that.stages,_that.boosters,_that.costPerLaunch,_that.successRatePct,_that.firstFlight,_that.country,_that.company,_that.height,_that.diameter,_that.mass,_that.payloadWeights,_that.engines,_that.wikipedia,_that.description,_that.landingLegs,_that.flickrImages,_that.type,_that.name,_that.firstStage,_that.secondStage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'rocket_id')  String rocketId,  int? id,  bool? active,  int? stages,  int? boosters, @JsonKey(name: 'cost_per_launch')  int? costPerLaunch, @JsonKey(name: 'success_rate_pct')  int? successRatePct, @JsonKey(name: 'first_flight')  String? firstFlight,  String? country,  String? company,  NetworkDimension? height,  NetworkDimension? diameter,  NetworkMass? mass, @JsonKey(name: 'payload_weights')  List<NetworkPayloadWeight>? payloadWeights,  NetworkEngines? engines,  String? wikipedia,  String? description, @JsonKey(name: 'landing_legs')  NetworkLandingLegs? landingLegs, @JsonKey(name: 'flickr_images')  List<String>? flickrImages, @JsonKey(name: 'rocket_type')  String? type, @JsonKey(name: 'rocket_name')  String? name, @JsonKey(name: 'first_stage')  NetworkRocketFirstStageModel? firstStage, @JsonKey(name: 'second_stage')  NetworkRocketSecondStageModel? secondStage)?  $default,) {final _that = this;
switch (_that) {
case _NetworkRocketModel() when $default != null:
return $default(_that.rocketId,_that.id,_that.active,_that.stages,_that.boosters,_that.costPerLaunch,_that.successRatePct,_that.firstFlight,_that.country,_that.company,_that.height,_that.diameter,_that.mass,_that.payloadWeights,_that.engines,_that.wikipedia,_that.description,_that.landingLegs,_that.flickrImages,_that.type,_that.name,_that.firstStage,_that.secondStage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NetworkRocketModel extends NetworkRocketModel {
  const _NetworkRocketModel({@JsonKey(name: 'rocket_id') required this.rocketId, this.id, this.active, this.stages, this.boosters, @JsonKey(name: 'cost_per_launch') this.costPerLaunch, @JsonKey(name: 'success_rate_pct') this.successRatePct, @JsonKey(name: 'first_flight') this.firstFlight, this.country, this.company, this.height, this.diameter, this.mass, @JsonKey(name: 'payload_weights') final  List<NetworkPayloadWeight>? payloadWeights, this.engines, this.wikipedia, this.description, @JsonKey(name: 'landing_legs') this.landingLegs, @JsonKey(name: 'flickr_images') final  List<String>? flickrImages, @JsonKey(name: 'rocket_type') this.type, @JsonKey(name: 'rocket_name') this.name, @JsonKey(name: 'first_stage') this.firstStage, @JsonKey(name: 'second_stage') this.secondStage}): _payloadWeights = payloadWeights,_flickrImages = flickrImages,super._();
  factory _NetworkRocketModel.fromJson(Map<String, dynamic> json) => _$NetworkRocketModelFromJson(json);

@override@JsonKey(name: 'rocket_id') final  String rocketId;
@override final  int? id;
@override final  bool? active;
@override final  int? stages;
@override final  int? boosters;
@override@JsonKey(name: 'cost_per_launch') final  int? costPerLaunch;
@override@JsonKey(name: 'success_rate_pct') final  int? successRatePct;
@override@JsonKey(name: 'first_flight') final  String? firstFlight;
@override final  String? country;
@override final  String? company;
@override final  NetworkDimension? height;
@override final  NetworkDimension? diameter;
@override final  NetworkMass? mass;
 final  List<NetworkPayloadWeight>? _payloadWeights;
@override@JsonKey(name: 'payload_weights') List<NetworkPayloadWeight>? get payloadWeights {
  final value = _payloadWeights;
  if (value == null) return null;
  if (_payloadWeights is EqualUnmodifiableListView) return _payloadWeights;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  NetworkEngines? engines;
@override final  String? wikipedia;
@override final  String? description;
@override@JsonKey(name: 'landing_legs') final  NetworkLandingLegs? landingLegs;
 final  List<String>? _flickrImages;
@override@JsonKey(name: 'flickr_images') List<String>? get flickrImages {
  final value = _flickrImages;
  if (value == null) return null;
  if (_flickrImages is EqualUnmodifiableListView) return _flickrImages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'rocket_type') final  String? type;
@override@JsonKey(name: 'rocket_name') final  String? name;
@override@JsonKey(name: 'first_stage') final  NetworkRocketFirstStageModel? firstStage;
@override@JsonKey(name: 'second_stage') final  NetworkRocketSecondStageModel? secondStage;

/// Create a copy of NetworkRocketModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NetworkRocketModelCopyWith<_NetworkRocketModel> get copyWith => __$NetworkRocketModelCopyWithImpl<_NetworkRocketModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NetworkRocketModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NetworkRocketModel&&(identical(other.rocketId, rocketId) || other.rocketId == rocketId)&&(identical(other.id, id) || other.id == id)&&(identical(other.active, active) || other.active == active)&&(identical(other.stages, stages) || other.stages == stages)&&(identical(other.boosters, boosters) || other.boosters == boosters)&&(identical(other.costPerLaunch, costPerLaunch) || other.costPerLaunch == costPerLaunch)&&(identical(other.successRatePct, successRatePct) || other.successRatePct == successRatePct)&&(identical(other.firstFlight, firstFlight) || other.firstFlight == firstFlight)&&(identical(other.country, country) || other.country == country)&&(identical(other.company, company) || other.company == company)&&(identical(other.height, height) || other.height == height)&&(identical(other.diameter, diameter) || other.diameter == diameter)&&(identical(other.mass, mass) || other.mass == mass)&&const DeepCollectionEquality().equals(other._payloadWeights, _payloadWeights)&&(identical(other.engines, engines) || other.engines == engines)&&(identical(other.wikipedia, wikipedia) || other.wikipedia == wikipedia)&&(identical(other.description, description) || other.description == description)&&(identical(other.landingLegs, landingLegs) || other.landingLegs == landingLegs)&&const DeepCollectionEquality().equals(other._flickrImages, _flickrImages)&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&(identical(other.firstStage, firstStage) || other.firstStage == firstStage)&&(identical(other.secondStage, secondStage) || other.secondStage == secondStage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,rocketId,id,active,stages,boosters,costPerLaunch,successRatePct,firstFlight,country,company,height,diameter,mass,const DeepCollectionEquality().hash(_payloadWeights),engines,wikipedia,description,landingLegs,const DeepCollectionEquality().hash(_flickrImages),type,name,firstStage,secondStage]);

@override
String toString() {
  return 'NetworkRocketModel(rocketId: $rocketId, id: $id, active: $active, stages: $stages, boosters: $boosters, costPerLaunch: $costPerLaunch, successRatePct: $successRatePct, firstFlight: $firstFlight, country: $country, company: $company, height: $height, diameter: $diameter, mass: $mass, payloadWeights: $payloadWeights, engines: $engines, wikipedia: $wikipedia, description: $description, landingLegs: $landingLegs, flickrImages: $flickrImages, type: $type, name: $name, firstStage: $firstStage, secondStage: $secondStage)';
}


}

/// @nodoc
abstract mixin class _$NetworkRocketModelCopyWith<$Res> implements $NetworkRocketModelCopyWith<$Res> {
  factory _$NetworkRocketModelCopyWith(_NetworkRocketModel value, $Res Function(_NetworkRocketModel) _then) = __$NetworkRocketModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'rocket_id') String rocketId, int? id, bool? active, int? stages, int? boosters,@JsonKey(name: 'cost_per_launch') int? costPerLaunch,@JsonKey(name: 'success_rate_pct') int? successRatePct,@JsonKey(name: 'first_flight') String? firstFlight, String? country, String? company, NetworkDimension? height, NetworkDimension? diameter, NetworkMass? mass,@JsonKey(name: 'payload_weights') List<NetworkPayloadWeight>? payloadWeights, NetworkEngines? engines, String? wikipedia, String? description,@JsonKey(name: 'landing_legs') NetworkLandingLegs? landingLegs,@JsonKey(name: 'flickr_images') List<String>? flickrImages,@JsonKey(name: 'rocket_type') String? type,@JsonKey(name: 'rocket_name') String? name,@JsonKey(name: 'first_stage') NetworkRocketFirstStageModel? firstStage,@JsonKey(name: 'second_stage') NetworkRocketSecondStageModel? secondStage
});


@override $NetworkDimensionCopyWith<$Res>? get height;@override $NetworkDimensionCopyWith<$Res>? get diameter;@override $NetworkMassCopyWith<$Res>? get mass;@override $NetworkEnginesCopyWith<$Res>? get engines;@override $NetworkLandingLegsCopyWith<$Res>? get landingLegs;@override $NetworkRocketFirstStageModelCopyWith<$Res>? get firstStage;@override $NetworkRocketSecondStageModelCopyWith<$Res>? get secondStage;

}
/// @nodoc
class __$NetworkRocketModelCopyWithImpl<$Res>
    implements _$NetworkRocketModelCopyWith<$Res> {
  __$NetworkRocketModelCopyWithImpl(this._self, this._then);

  final _NetworkRocketModel _self;
  final $Res Function(_NetworkRocketModel) _then;

/// Create a copy of NetworkRocketModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rocketId = null,Object? id = freezed,Object? active = freezed,Object? stages = freezed,Object? boosters = freezed,Object? costPerLaunch = freezed,Object? successRatePct = freezed,Object? firstFlight = freezed,Object? country = freezed,Object? company = freezed,Object? height = freezed,Object? diameter = freezed,Object? mass = freezed,Object? payloadWeights = freezed,Object? engines = freezed,Object? wikipedia = freezed,Object? description = freezed,Object? landingLegs = freezed,Object? flickrImages = freezed,Object? type = freezed,Object? name = freezed,Object? firstStage = freezed,Object? secondStage = freezed,}) {
  return _then(_NetworkRocketModel(
rocketId: null == rocketId ? _self.rocketId : rocketId // ignore: cast_nullable_to_non_nullable
as String,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,stages: freezed == stages ? _self.stages : stages // ignore: cast_nullable_to_non_nullable
as int?,boosters: freezed == boosters ? _self.boosters : boosters // ignore: cast_nullable_to_non_nullable
as int?,costPerLaunch: freezed == costPerLaunch ? _self.costPerLaunch : costPerLaunch // ignore: cast_nullable_to_non_nullable
as int?,successRatePct: freezed == successRatePct ? _self.successRatePct : successRatePct // ignore: cast_nullable_to_non_nullable
as int?,firstFlight: freezed == firstFlight ? _self.firstFlight : firstFlight // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,company: freezed == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as NetworkDimension?,diameter: freezed == diameter ? _self.diameter : diameter // ignore: cast_nullable_to_non_nullable
as NetworkDimension?,mass: freezed == mass ? _self.mass : mass // ignore: cast_nullable_to_non_nullable
as NetworkMass?,payloadWeights: freezed == payloadWeights ? _self._payloadWeights : payloadWeights // ignore: cast_nullable_to_non_nullable
as List<NetworkPayloadWeight>?,engines: freezed == engines ? _self.engines : engines // ignore: cast_nullable_to_non_nullable
as NetworkEngines?,wikipedia: freezed == wikipedia ? _self.wikipedia : wikipedia // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,landingLegs: freezed == landingLegs ? _self.landingLegs : landingLegs // ignore: cast_nullable_to_non_nullable
as NetworkLandingLegs?,flickrImages: freezed == flickrImages ? _self._flickrImages : flickrImages // ignore: cast_nullable_to_non_nullable
as List<String>?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,firstStage: freezed == firstStage ? _self.firstStage : firstStage // ignore: cast_nullable_to_non_nullable
as NetworkRocketFirstStageModel?,secondStage: freezed == secondStage ? _self.secondStage : secondStage // ignore: cast_nullable_to_non_nullable
as NetworkRocketSecondStageModel?,
  ));
}

/// Create a copy of NetworkRocketModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NetworkDimensionCopyWith<$Res>? get height {
    if (_self.height == null) {
    return null;
  }

  return $NetworkDimensionCopyWith<$Res>(_self.height!, (value) {
    return _then(_self.copyWith(height: value));
  });
}/// Create a copy of NetworkRocketModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NetworkDimensionCopyWith<$Res>? get diameter {
    if (_self.diameter == null) {
    return null;
  }

  return $NetworkDimensionCopyWith<$Res>(_self.diameter!, (value) {
    return _then(_self.copyWith(diameter: value));
  });
}/// Create a copy of NetworkRocketModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NetworkMassCopyWith<$Res>? get mass {
    if (_self.mass == null) {
    return null;
  }

  return $NetworkMassCopyWith<$Res>(_self.mass!, (value) {
    return _then(_self.copyWith(mass: value));
  });
}/// Create a copy of NetworkRocketModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NetworkEnginesCopyWith<$Res>? get engines {
    if (_self.engines == null) {
    return null;
  }

  return $NetworkEnginesCopyWith<$Res>(_self.engines!, (value) {
    return _then(_self.copyWith(engines: value));
  });
}/// Create a copy of NetworkRocketModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NetworkLandingLegsCopyWith<$Res>? get landingLegs {
    if (_self.landingLegs == null) {
    return null;
  }

  return $NetworkLandingLegsCopyWith<$Res>(_self.landingLegs!, (value) {
    return _then(_self.copyWith(landingLegs: value));
  });
}/// Create a copy of NetworkRocketModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NetworkRocketFirstStageModelCopyWith<$Res>? get firstStage {
    if (_self.firstStage == null) {
    return null;
  }

  return $NetworkRocketFirstStageModelCopyWith<$Res>(_self.firstStage!, (value) {
    return _then(_self.copyWith(firstStage: value));
  });
}/// Create a copy of NetworkRocketModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NetworkRocketSecondStageModelCopyWith<$Res>? get secondStage {
    if (_self.secondStage == null) {
    return null;
  }

  return $NetworkRocketSecondStageModelCopyWith<$Res>(_self.secondStage!, (value) {
    return _then(_self.copyWith(secondStage: value));
  });
}
}


/// @nodoc
mixin _$NetworkRocketFirstStageModel {

 bool? get reusable; int? get engines;@JsonKey(name: 'fuel_amount_tons') double? get fuelAmountTons;@JsonKey(name: 'burn_time_sec') int? get burnTimeSec;@JsonKey(name: 'thrust_sea_level') NetworkThrust? get thrustSeaLevel;@JsonKey(name: 'thrust_vacuum') NetworkThrust? get thrustVacuum;
/// Create a copy of NetworkRocketFirstStageModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NetworkRocketFirstStageModelCopyWith<NetworkRocketFirstStageModel> get copyWith => _$NetworkRocketFirstStageModelCopyWithImpl<NetworkRocketFirstStageModel>(this as NetworkRocketFirstStageModel, _$identity);

  /// Serializes this NetworkRocketFirstStageModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkRocketFirstStageModel&&(identical(other.reusable, reusable) || other.reusable == reusable)&&(identical(other.engines, engines) || other.engines == engines)&&(identical(other.fuelAmountTons, fuelAmountTons) || other.fuelAmountTons == fuelAmountTons)&&(identical(other.burnTimeSec, burnTimeSec) || other.burnTimeSec == burnTimeSec)&&(identical(other.thrustSeaLevel, thrustSeaLevel) || other.thrustSeaLevel == thrustSeaLevel)&&(identical(other.thrustVacuum, thrustVacuum) || other.thrustVacuum == thrustVacuum));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reusable,engines,fuelAmountTons,burnTimeSec,thrustSeaLevel,thrustVacuum);

@override
String toString() {
  return 'NetworkRocketFirstStageModel(reusable: $reusable, engines: $engines, fuelAmountTons: $fuelAmountTons, burnTimeSec: $burnTimeSec, thrustSeaLevel: $thrustSeaLevel, thrustVacuum: $thrustVacuum)';
}


}

/// @nodoc
abstract mixin class $NetworkRocketFirstStageModelCopyWith<$Res>  {
  factory $NetworkRocketFirstStageModelCopyWith(NetworkRocketFirstStageModel value, $Res Function(NetworkRocketFirstStageModel) _then) = _$NetworkRocketFirstStageModelCopyWithImpl;
@useResult
$Res call({
 bool? reusable, int? engines,@JsonKey(name: 'fuel_amount_tons') double? fuelAmountTons,@JsonKey(name: 'burn_time_sec') int? burnTimeSec,@JsonKey(name: 'thrust_sea_level') NetworkThrust? thrustSeaLevel,@JsonKey(name: 'thrust_vacuum') NetworkThrust? thrustVacuum
});


$NetworkThrustCopyWith<$Res>? get thrustSeaLevel;$NetworkThrustCopyWith<$Res>? get thrustVacuum;

}
/// @nodoc
class _$NetworkRocketFirstStageModelCopyWithImpl<$Res>
    implements $NetworkRocketFirstStageModelCopyWith<$Res> {
  _$NetworkRocketFirstStageModelCopyWithImpl(this._self, this._then);

  final NetworkRocketFirstStageModel _self;
  final $Res Function(NetworkRocketFirstStageModel) _then;

/// Create a copy of NetworkRocketFirstStageModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reusable = freezed,Object? engines = freezed,Object? fuelAmountTons = freezed,Object? burnTimeSec = freezed,Object? thrustSeaLevel = freezed,Object? thrustVacuum = freezed,}) {
  return _then(_self.copyWith(
reusable: freezed == reusable ? _self.reusable : reusable // ignore: cast_nullable_to_non_nullable
as bool?,engines: freezed == engines ? _self.engines : engines // ignore: cast_nullable_to_non_nullable
as int?,fuelAmountTons: freezed == fuelAmountTons ? _self.fuelAmountTons : fuelAmountTons // ignore: cast_nullable_to_non_nullable
as double?,burnTimeSec: freezed == burnTimeSec ? _self.burnTimeSec : burnTimeSec // ignore: cast_nullable_to_non_nullable
as int?,thrustSeaLevel: freezed == thrustSeaLevel ? _self.thrustSeaLevel : thrustSeaLevel // ignore: cast_nullable_to_non_nullable
as NetworkThrust?,thrustVacuum: freezed == thrustVacuum ? _self.thrustVacuum : thrustVacuum // ignore: cast_nullable_to_non_nullable
as NetworkThrust?,
  ));
}
/// Create a copy of NetworkRocketFirstStageModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NetworkThrustCopyWith<$Res>? get thrustSeaLevel {
    if (_self.thrustSeaLevel == null) {
    return null;
  }

  return $NetworkThrustCopyWith<$Res>(_self.thrustSeaLevel!, (value) {
    return _then(_self.copyWith(thrustSeaLevel: value));
  });
}/// Create a copy of NetworkRocketFirstStageModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NetworkThrustCopyWith<$Res>? get thrustVacuum {
    if (_self.thrustVacuum == null) {
    return null;
  }

  return $NetworkThrustCopyWith<$Res>(_self.thrustVacuum!, (value) {
    return _then(_self.copyWith(thrustVacuum: value));
  });
}
}


/// Adds pattern-matching-related methods to [NetworkRocketFirstStageModel].
extension NetworkRocketFirstStageModelPatterns on NetworkRocketFirstStageModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NetworkRocketFirstStageModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NetworkRocketFirstStageModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NetworkRocketFirstStageModel value)  $default,){
final _that = this;
switch (_that) {
case _NetworkRocketFirstStageModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NetworkRocketFirstStageModel value)?  $default,){
final _that = this;
switch (_that) {
case _NetworkRocketFirstStageModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? reusable,  int? engines, @JsonKey(name: 'fuel_amount_tons')  double? fuelAmountTons, @JsonKey(name: 'burn_time_sec')  int? burnTimeSec, @JsonKey(name: 'thrust_sea_level')  NetworkThrust? thrustSeaLevel, @JsonKey(name: 'thrust_vacuum')  NetworkThrust? thrustVacuum)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NetworkRocketFirstStageModel() when $default != null:
return $default(_that.reusable,_that.engines,_that.fuelAmountTons,_that.burnTimeSec,_that.thrustSeaLevel,_that.thrustVacuum);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? reusable,  int? engines, @JsonKey(name: 'fuel_amount_tons')  double? fuelAmountTons, @JsonKey(name: 'burn_time_sec')  int? burnTimeSec, @JsonKey(name: 'thrust_sea_level')  NetworkThrust? thrustSeaLevel, @JsonKey(name: 'thrust_vacuum')  NetworkThrust? thrustVacuum)  $default,) {final _that = this;
switch (_that) {
case _NetworkRocketFirstStageModel():
return $default(_that.reusable,_that.engines,_that.fuelAmountTons,_that.burnTimeSec,_that.thrustSeaLevel,_that.thrustVacuum);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? reusable,  int? engines, @JsonKey(name: 'fuel_amount_tons')  double? fuelAmountTons, @JsonKey(name: 'burn_time_sec')  int? burnTimeSec, @JsonKey(name: 'thrust_sea_level')  NetworkThrust? thrustSeaLevel, @JsonKey(name: 'thrust_vacuum')  NetworkThrust? thrustVacuum)?  $default,) {final _that = this;
switch (_that) {
case _NetworkRocketFirstStageModel() when $default != null:
return $default(_that.reusable,_that.engines,_that.fuelAmountTons,_that.burnTimeSec,_that.thrustSeaLevel,_that.thrustVacuum);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NetworkRocketFirstStageModel implements NetworkRocketFirstStageModel {
  const _NetworkRocketFirstStageModel({this.reusable, this.engines, @JsonKey(name: 'fuel_amount_tons') this.fuelAmountTons, @JsonKey(name: 'burn_time_sec') this.burnTimeSec, @JsonKey(name: 'thrust_sea_level') this.thrustSeaLevel, @JsonKey(name: 'thrust_vacuum') this.thrustVacuum});
  factory _NetworkRocketFirstStageModel.fromJson(Map<String, dynamic> json) => _$NetworkRocketFirstStageModelFromJson(json);

@override final  bool? reusable;
@override final  int? engines;
@override@JsonKey(name: 'fuel_amount_tons') final  double? fuelAmountTons;
@override@JsonKey(name: 'burn_time_sec') final  int? burnTimeSec;
@override@JsonKey(name: 'thrust_sea_level') final  NetworkThrust? thrustSeaLevel;
@override@JsonKey(name: 'thrust_vacuum') final  NetworkThrust? thrustVacuum;

/// Create a copy of NetworkRocketFirstStageModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NetworkRocketFirstStageModelCopyWith<_NetworkRocketFirstStageModel> get copyWith => __$NetworkRocketFirstStageModelCopyWithImpl<_NetworkRocketFirstStageModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NetworkRocketFirstStageModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NetworkRocketFirstStageModel&&(identical(other.reusable, reusable) || other.reusable == reusable)&&(identical(other.engines, engines) || other.engines == engines)&&(identical(other.fuelAmountTons, fuelAmountTons) || other.fuelAmountTons == fuelAmountTons)&&(identical(other.burnTimeSec, burnTimeSec) || other.burnTimeSec == burnTimeSec)&&(identical(other.thrustSeaLevel, thrustSeaLevel) || other.thrustSeaLevel == thrustSeaLevel)&&(identical(other.thrustVacuum, thrustVacuum) || other.thrustVacuum == thrustVacuum));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reusable,engines,fuelAmountTons,burnTimeSec,thrustSeaLevel,thrustVacuum);

@override
String toString() {
  return 'NetworkRocketFirstStageModel(reusable: $reusable, engines: $engines, fuelAmountTons: $fuelAmountTons, burnTimeSec: $burnTimeSec, thrustSeaLevel: $thrustSeaLevel, thrustVacuum: $thrustVacuum)';
}


}

/// @nodoc
abstract mixin class _$NetworkRocketFirstStageModelCopyWith<$Res> implements $NetworkRocketFirstStageModelCopyWith<$Res> {
  factory _$NetworkRocketFirstStageModelCopyWith(_NetworkRocketFirstStageModel value, $Res Function(_NetworkRocketFirstStageModel) _then) = __$NetworkRocketFirstStageModelCopyWithImpl;
@override @useResult
$Res call({
 bool? reusable, int? engines,@JsonKey(name: 'fuel_amount_tons') double? fuelAmountTons,@JsonKey(name: 'burn_time_sec') int? burnTimeSec,@JsonKey(name: 'thrust_sea_level') NetworkThrust? thrustSeaLevel,@JsonKey(name: 'thrust_vacuum') NetworkThrust? thrustVacuum
});


@override $NetworkThrustCopyWith<$Res>? get thrustSeaLevel;@override $NetworkThrustCopyWith<$Res>? get thrustVacuum;

}
/// @nodoc
class __$NetworkRocketFirstStageModelCopyWithImpl<$Res>
    implements _$NetworkRocketFirstStageModelCopyWith<$Res> {
  __$NetworkRocketFirstStageModelCopyWithImpl(this._self, this._then);

  final _NetworkRocketFirstStageModel _self;
  final $Res Function(_NetworkRocketFirstStageModel) _then;

/// Create a copy of NetworkRocketFirstStageModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reusable = freezed,Object? engines = freezed,Object? fuelAmountTons = freezed,Object? burnTimeSec = freezed,Object? thrustSeaLevel = freezed,Object? thrustVacuum = freezed,}) {
  return _then(_NetworkRocketFirstStageModel(
reusable: freezed == reusable ? _self.reusable : reusable // ignore: cast_nullable_to_non_nullable
as bool?,engines: freezed == engines ? _self.engines : engines // ignore: cast_nullable_to_non_nullable
as int?,fuelAmountTons: freezed == fuelAmountTons ? _self.fuelAmountTons : fuelAmountTons // ignore: cast_nullable_to_non_nullable
as double?,burnTimeSec: freezed == burnTimeSec ? _self.burnTimeSec : burnTimeSec // ignore: cast_nullable_to_non_nullable
as int?,thrustSeaLevel: freezed == thrustSeaLevel ? _self.thrustSeaLevel : thrustSeaLevel // ignore: cast_nullable_to_non_nullable
as NetworkThrust?,thrustVacuum: freezed == thrustVacuum ? _self.thrustVacuum : thrustVacuum // ignore: cast_nullable_to_non_nullable
as NetworkThrust?,
  ));
}

/// Create a copy of NetworkRocketFirstStageModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NetworkThrustCopyWith<$Res>? get thrustSeaLevel {
    if (_self.thrustSeaLevel == null) {
    return null;
  }

  return $NetworkThrustCopyWith<$Res>(_self.thrustSeaLevel!, (value) {
    return _then(_self.copyWith(thrustSeaLevel: value));
  });
}/// Create a copy of NetworkRocketFirstStageModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NetworkThrustCopyWith<$Res>? get thrustVacuum {
    if (_self.thrustVacuum == null) {
    return null;
  }

  return $NetworkThrustCopyWith<$Res>(_self.thrustVacuum!, (value) {
    return _then(_self.copyWith(thrustVacuum: value));
  });
}
}


/// @nodoc
mixin _$NetworkRocketSecondStageModel {

 bool? get reusable; int? get engines;@JsonKey(name: 'fuel_amount_tons') double? get fuelAmountTons;@JsonKey(name: 'burn_time_sec') int? get burnTimeSec; NetworkThrust? get thrust; NetworkRocketPayloadsModel? get payloads;
/// Create a copy of NetworkRocketSecondStageModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NetworkRocketSecondStageModelCopyWith<NetworkRocketSecondStageModel> get copyWith => _$NetworkRocketSecondStageModelCopyWithImpl<NetworkRocketSecondStageModel>(this as NetworkRocketSecondStageModel, _$identity);

  /// Serializes this NetworkRocketSecondStageModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkRocketSecondStageModel&&(identical(other.reusable, reusable) || other.reusable == reusable)&&(identical(other.engines, engines) || other.engines == engines)&&(identical(other.fuelAmountTons, fuelAmountTons) || other.fuelAmountTons == fuelAmountTons)&&(identical(other.burnTimeSec, burnTimeSec) || other.burnTimeSec == burnTimeSec)&&(identical(other.thrust, thrust) || other.thrust == thrust)&&(identical(other.payloads, payloads) || other.payloads == payloads));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reusable,engines,fuelAmountTons,burnTimeSec,thrust,payloads);

@override
String toString() {
  return 'NetworkRocketSecondStageModel(reusable: $reusable, engines: $engines, fuelAmountTons: $fuelAmountTons, burnTimeSec: $burnTimeSec, thrust: $thrust, payloads: $payloads)';
}


}

/// @nodoc
abstract mixin class $NetworkRocketSecondStageModelCopyWith<$Res>  {
  factory $NetworkRocketSecondStageModelCopyWith(NetworkRocketSecondStageModel value, $Res Function(NetworkRocketSecondStageModel) _then) = _$NetworkRocketSecondStageModelCopyWithImpl;
@useResult
$Res call({
 bool? reusable, int? engines,@JsonKey(name: 'fuel_amount_tons') double? fuelAmountTons,@JsonKey(name: 'burn_time_sec') int? burnTimeSec, NetworkThrust? thrust, NetworkRocketPayloadsModel? payloads
});


$NetworkThrustCopyWith<$Res>? get thrust;$NetworkRocketPayloadsModelCopyWith<$Res>? get payloads;

}
/// @nodoc
class _$NetworkRocketSecondStageModelCopyWithImpl<$Res>
    implements $NetworkRocketSecondStageModelCopyWith<$Res> {
  _$NetworkRocketSecondStageModelCopyWithImpl(this._self, this._then);

  final NetworkRocketSecondStageModel _self;
  final $Res Function(NetworkRocketSecondStageModel) _then;

/// Create a copy of NetworkRocketSecondStageModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reusable = freezed,Object? engines = freezed,Object? fuelAmountTons = freezed,Object? burnTimeSec = freezed,Object? thrust = freezed,Object? payloads = freezed,}) {
  return _then(_self.copyWith(
reusable: freezed == reusable ? _self.reusable : reusable // ignore: cast_nullable_to_non_nullable
as bool?,engines: freezed == engines ? _self.engines : engines // ignore: cast_nullable_to_non_nullable
as int?,fuelAmountTons: freezed == fuelAmountTons ? _self.fuelAmountTons : fuelAmountTons // ignore: cast_nullable_to_non_nullable
as double?,burnTimeSec: freezed == burnTimeSec ? _self.burnTimeSec : burnTimeSec // ignore: cast_nullable_to_non_nullable
as int?,thrust: freezed == thrust ? _self.thrust : thrust // ignore: cast_nullable_to_non_nullable
as NetworkThrust?,payloads: freezed == payloads ? _self.payloads : payloads // ignore: cast_nullable_to_non_nullable
as NetworkRocketPayloadsModel?,
  ));
}
/// Create a copy of NetworkRocketSecondStageModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NetworkThrustCopyWith<$Res>? get thrust {
    if (_self.thrust == null) {
    return null;
  }

  return $NetworkThrustCopyWith<$Res>(_self.thrust!, (value) {
    return _then(_self.copyWith(thrust: value));
  });
}/// Create a copy of NetworkRocketSecondStageModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NetworkRocketPayloadsModelCopyWith<$Res>? get payloads {
    if (_self.payloads == null) {
    return null;
  }

  return $NetworkRocketPayloadsModelCopyWith<$Res>(_self.payloads!, (value) {
    return _then(_self.copyWith(payloads: value));
  });
}
}


/// Adds pattern-matching-related methods to [NetworkRocketSecondStageModel].
extension NetworkRocketSecondStageModelPatterns on NetworkRocketSecondStageModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NetworkRocketSecondStageModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NetworkRocketSecondStageModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NetworkRocketSecondStageModel value)  $default,){
final _that = this;
switch (_that) {
case _NetworkRocketSecondStageModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NetworkRocketSecondStageModel value)?  $default,){
final _that = this;
switch (_that) {
case _NetworkRocketSecondStageModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? reusable,  int? engines, @JsonKey(name: 'fuel_amount_tons')  double? fuelAmountTons, @JsonKey(name: 'burn_time_sec')  int? burnTimeSec,  NetworkThrust? thrust,  NetworkRocketPayloadsModel? payloads)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NetworkRocketSecondStageModel() when $default != null:
return $default(_that.reusable,_that.engines,_that.fuelAmountTons,_that.burnTimeSec,_that.thrust,_that.payloads);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? reusable,  int? engines, @JsonKey(name: 'fuel_amount_tons')  double? fuelAmountTons, @JsonKey(name: 'burn_time_sec')  int? burnTimeSec,  NetworkThrust? thrust,  NetworkRocketPayloadsModel? payloads)  $default,) {final _that = this;
switch (_that) {
case _NetworkRocketSecondStageModel():
return $default(_that.reusable,_that.engines,_that.fuelAmountTons,_that.burnTimeSec,_that.thrust,_that.payloads);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? reusable,  int? engines, @JsonKey(name: 'fuel_amount_tons')  double? fuelAmountTons, @JsonKey(name: 'burn_time_sec')  int? burnTimeSec,  NetworkThrust? thrust,  NetworkRocketPayloadsModel? payloads)?  $default,) {final _that = this;
switch (_that) {
case _NetworkRocketSecondStageModel() when $default != null:
return $default(_that.reusable,_that.engines,_that.fuelAmountTons,_that.burnTimeSec,_that.thrust,_that.payloads);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NetworkRocketSecondStageModel implements NetworkRocketSecondStageModel {
  const _NetworkRocketSecondStageModel({this.reusable, this.engines, @JsonKey(name: 'fuel_amount_tons') this.fuelAmountTons, @JsonKey(name: 'burn_time_sec') this.burnTimeSec, this.thrust, this.payloads});
  factory _NetworkRocketSecondStageModel.fromJson(Map<String, dynamic> json) => _$NetworkRocketSecondStageModelFromJson(json);

@override final  bool? reusable;
@override final  int? engines;
@override@JsonKey(name: 'fuel_amount_tons') final  double? fuelAmountTons;
@override@JsonKey(name: 'burn_time_sec') final  int? burnTimeSec;
@override final  NetworkThrust? thrust;
@override final  NetworkRocketPayloadsModel? payloads;

/// Create a copy of NetworkRocketSecondStageModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NetworkRocketSecondStageModelCopyWith<_NetworkRocketSecondStageModel> get copyWith => __$NetworkRocketSecondStageModelCopyWithImpl<_NetworkRocketSecondStageModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NetworkRocketSecondStageModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NetworkRocketSecondStageModel&&(identical(other.reusable, reusable) || other.reusable == reusable)&&(identical(other.engines, engines) || other.engines == engines)&&(identical(other.fuelAmountTons, fuelAmountTons) || other.fuelAmountTons == fuelAmountTons)&&(identical(other.burnTimeSec, burnTimeSec) || other.burnTimeSec == burnTimeSec)&&(identical(other.thrust, thrust) || other.thrust == thrust)&&(identical(other.payloads, payloads) || other.payloads == payloads));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reusable,engines,fuelAmountTons,burnTimeSec,thrust,payloads);

@override
String toString() {
  return 'NetworkRocketSecondStageModel(reusable: $reusable, engines: $engines, fuelAmountTons: $fuelAmountTons, burnTimeSec: $burnTimeSec, thrust: $thrust, payloads: $payloads)';
}


}

/// @nodoc
abstract mixin class _$NetworkRocketSecondStageModelCopyWith<$Res> implements $NetworkRocketSecondStageModelCopyWith<$Res> {
  factory _$NetworkRocketSecondStageModelCopyWith(_NetworkRocketSecondStageModel value, $Res Function(_NetworkRocketSecondStageModel) _then) = __$NetworkRocketSecondStageModelCopyWithImpl;
@override @useResult
$Res call({
 bool? reusable, int? engines,@JsonKey(name: 'fuel_amount_tons') double? fuelAmountTons,@JsonKey(name: 'burn_time_sec') int? burnTimeSec, NetworkThrust? thrust, NetworkRocketPayloadsModel? payloads
});


@override $NetworkThrustCopyWith<$Res>? get thrust;@override $NetworkRocketPayloadsModelCopyWith<$Res>? get payloads;

}
/// @nodoc
class __$NetworkRocketSecondStageModelCopyWithImpl<$Res>
    implements _$NetworkRocketSecondStageModelCopyWith<$Res> {
  __$NetworkRocketSecondStageModelCopyWithImpl(this._self, this._then);

  final _NetworkRocketSecondStageModel _self;
  final $Res Function(_NetworkRocketSecondStageModel) _then;

/// Create a copy of NetworkRocketSecondStageModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reusable = freezed,Object? engines = freezed,Object? fuelAmountTons = freezed,Object? burnTimeSec = freezed,Object? thrust = freezed,Object? payloads = freezed,}) {
  return _then(_NetworkRocketSecondStageModel(
reusable: freezed == reusable ? _self.reusable : reusable // ignore: cast_nullable_to_non_nullable
as bool?,engines: freezed == engines ? _self.engines : engines // ignore: cast_nullable_to_non_nullable
as int?,fuelAmountTons: freezed == fuelAmountTons ? _self.fuelAmountTons : fuelAmountTons // ignore: cast_nullable_to_non_nullable
as double?,burnTimeSec: freezed == burnTimeSec ? _self.burnTimeSec : burnTimeSec // ignore: cast_nullable_to_non_nullable
as int?,thrust: freezed == thrust ? _self.thrust : thrust // ignore: cast_nullable_to_non_nullable
as NetworkThrust?,payloads: freezed == payloads ? _self.payloads : payloads // ignore: cast_nullable_to_non_nullable
as NetworkRocketPayloadsModel?,
  ));
}

/// Create a copy of NetworkRocketSecondStageModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NetworkThrustCopyWith<$Res>? get thrust {
    if (_self.thrust == null) {
    return null;
  }

  return $NetworkThrustCopyWith<$Res>(_self.thrust!, (value) {
    return _then(_self.copyWith(thrust: value));
  });
}/// Create a copy of NetworkRocketSecondStageModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NetworkRocketPayloadsModelCopyWith<$Res>? get payloads {
    if (_self.payloads == null) {
    return null;
  }

  return $NetworkRocketPayloadsModelCopyWith<$Res>(_self.payloads!, (value) {
    return _then(_self.copyWith(payloads: value));
  });
}
}


/// @nodoc
mixin _$NetworkRocketPayloadsModel {

 String? get option_1;@JsonKey(name: 'composite_fairing') NetworkCompositeFairing? get compositeFairing;
/// Create a copy of NetworkRocketPayloadsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NetworkRocketPayloadsModelCopyWith<NetworkRocketPayloadsModel> get copyWith => _$NetworkRocketPayloadsModelCopyWithImpl<NetworkRocketPayloadsModel>(this as NetworkRocketPayloadsModel, _$identity);

  /// Serializes this NetworkRocketPayloadsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkRocketPayloadsModel&&(identical(other.option_1, option_1) || other.option_1 == option_1)&&(identical(other.compositeFairing, compositeFairing) || other.compositeFairing == compositeFairing));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,option_1,compositeFairing);

@override
String toString() {
  return 'NetworkRocketPayloadsModel(option_1: $option_1, compositeFairing: $compositeFairing)';
}


}

/// @nodoc
abstract mixin class $NetworkRocketPayloadsModelCopyWith<$Res>  {
  factory $NetworkRocketPayloadsModelCopyWith(NetworkRocketPayloadsModel value, $Res Function(NetworkRocketPayloadsModel) _then) = _$NetworkRocketPayloadsModelCopyWithImpl;
@useResult
$Res call({
 String? option_1,@JsonKey(name: 'composite_fairing') NetworkCompositeFairing? compositeFairing
});


$NetworkCompositeFairingCopyWith<$Res>? get compositeFairing;

}
/// @nodoc
class _$NetworkRocketPayloadsModelCopyWithImpl<$Res>
    implements $NetworkRocketPayloadsModelCopyWith<$Res> {
  _$NetworkRocketPayloadsModelCopyWithImpl(this._self, this._then);

  final NetworkRocketPayloadsModel _self;
  final $Res Function(NetworkRocketPayloadsModel) _then;

/// Create a copy of NetworkRocketPayloadsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? option_1 = freezed,Object? compositeFairing = freezed,}) {
  return _then(_self.copyWith(
option_1: freezed == option_1 ? _self.option_1 : option_1 // ignore: cast_nullable_to_non_nullable
as String?,compositeFairing: freezed == compositeFairing ? _self.compositeFairing : compositeFairing // ignore: cast_nullable_to_non_nullable
as NetworkCompositeFairing?,
  ));
}
/// Create a copy of NetworkRocketPayloadsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NetworkCompositeFairingCopyWith<$Res>? get compositeFairing {
    if (_self.compositeFairing == null) {
    return null;
  }

  return $NetworkCompositeFairingCopyWith<$Res>(_self.compositeFairing!, (value) {
    return _then(_self.copyWith(compositeFairing: value));
  });
}
}


/// Adds pattern-matching-related methods to [NetworkRocketPayloadsModel].
extension NetworkRocketPayloadsModelPatterns on NetworkRocketPayloadsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NetworkRocketPayloadsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NetworkRocketPayloadsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NetworkRocketPayloadsModel value)  $default,){
final _that = this;
switch (_that) {
case _NetworkRocketPayloadsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NetworkRocketPayloadsModel value)?  $default,){
final _that = this;
switch (_that) {
case _NetworkRocketPayloadsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? option_1, @JsonKey(name: 'composite_fairing')  NetworkCompositeFairing? compositeFairing)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NetworkRocketPayloadsModel() when $default != null:
return $default(_that.option_1,_that.compositeFairing);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? option_1, @JsonKey(name: 'composite_fairing')  NetworkCompositeFairing? compositeFairing)  $default,) {final _that = this;
switch (_that) {
case _NetworkRocketPayloadsModel():
return $default(_that.option_1,_that.compositeFairing);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? option_1, @JsonKey(name: 'composite_fairing')  NetworkCompositeFairing? compositeFairing)?  $default,) {final _that = this;
switch (_that) {
case _NetworkRocketPayloadsModel() when $default != null:
return $default(_that.option_1,_that.compositeFairing);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NetworkRocketPayloadsModel implements NetworkRocketPayloadsModel {
  const _NetworkRocketPayloadsModel({this.option_1, @JsonKey(name: 'composite_fairing') this.compositeFairing});
  factory _NetworkRocketPayloadsModel.fromJson(Map<String, dynamic> json) => _$NetworkRocketPayloadsModelFromJson(json);

@override final  String? option_1;
@override@JsonKey(name: 'composite_fairing') final  NetworkCompositeFairing? compositeFairing;

/// Create a copy of NetworkRocketPayloadsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NetworkRocketPayloadsModelCopyWith<_NetworkRocketPayloadsModel> get copyWith => __$NetworkRocketPayloadsModelCopyWithImpl<_NetworkRocketPayloadsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NetworkRocketPayloadsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NetworkRocketPayloadsModel&&(identical(other.option_1, option_1) || other.option_1 == option_1)&&(identical(other.compositeFairing, compositeFairing) || other.compositeFairing == compositeFairing));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,option_1,compositeFairing);

@override
String toString() {
  return 'NetworkRocketPayloadsModel(option_1: $option_1, compositeFairing: $compositeFairing)';
}


}

/// @nodoc
abstract mixin class _$NetworkRocketPayloadsModelCopyWith<$Res> implements $NetworkRocketPayloadsModelCopyWith<$Res> {
  factory _$NetworkRocketPayloadsModelCopyWith(_NetworkRocketPayloadsModel value, $Res Function(_NetworkRocketPayloadsModel) _then) = __$NetworkRocketPayloadsModelCopyWithImpl;
@override @useResult
$Res call({
 String? option_1,@JsonKey(name: 'composite_fairing') NetworkCompositeFairing? compositeFairing
});


@override $NetworkCompositeFairingCopyWith<$Res>? get compositeFairing;

}
/// @nodoc
class __$NetworkRocketPayloadsModelCopyWithImpl<$Res>
    implements _$NetworkRocketPayloadsModelCopyWith<$Res> {
  __$NetworkRocketPayloadsModelCopyWithImpl(this._self, this._then);

  final _NetworkRocketPayloadsModel _self;
  final $Res Function(_NetworkRocketPayloadsModel) _then;

/// Create a copy of NetworkRocketPayloadsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? option_1 = freezed,Object? compositeFairing = freezed,}) {
  return _then(_NetworkRocketPayloadsModel(
option_1: freezed == option_1 ? _self.option_1 : option_1 // ignore: cast_nullable_to_non_nullable
as String?,compositeFairing: freezed == compositeFairing ? _self.compositeFairing : compositeFairing // ignore: cast_nullable_to_non_nullable
as NetworkCompositeFairing?,
  ));
}

/// Create a copy of NetworkRocketPayloadsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NetworkCompositeFairingCopyWith<$Res>? get compositeFairing {
    if (_self.compositeFairing == null) {
    return null;
  }

  return $NetworkCompositeFairingCopyWith<$Res>(_self.compositeFairing!, (value) {
    return _then(_self.copyWith(compositeFairing: value));
  });
}
}


/// @nodoc
mixin _$NetworkCompositeFairing {

 NetworkDimension? get height; NetworkDimension? get diameter;
/// Create a copy of NetworkCompositeFairing
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NetworkCompositeFairingCopyWith<NetworkCompositeFairing> get copyWith => _$NetworkCompositeFairingCopyWithImpl<NetworkCompositeFairing>(this as NetworkCompositeFairing, _$identity);

  /// Serializes this NetworkCompositeFairing to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkCompositeFairing&&(identical(other.height, height) || other.height == height)&&(identical(other.diameter, diameter) || other.diameter == diameter));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,height,diameter);

@override
String toString() {
  return 'NetworkCompositeFairing(height: $height, diameter: $diameter)';
}


}

/// @nodoc
abstract mixin class $NetworkCompositeFairingCopyWith<$Res>  {
  factory $NetworkCompositeFairingCopyWith(NetworkCompositeFairing value, $Res Function(NetworkCompositeFairing) _then) = _$NetworkCompositeFairingCopyWithImpl;
@useResult
$Res call({
 NetworkDimension? height, NetworkDimension? diameter
});


$NetworkDimensionCopyWith<$Res>? get height;$NetworkDimensionCopyWith<$Res>? get diameter;

}
/// @nodoc
class _$NetworkCompositeFairingCopyWithImpl<$Res>
    implements $NetworkCompositeFairingCopyWith<$Res> {
  _$NetworkCompositeFairingCopyWithImpl(this._self, this._then);

  final NetworkCompositeFairing _self;
  final $Res Function(NetworkCompositeFairing) _then;

/// Create a copy of NetworkCompositeFairing
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? height = freezed,Object? diameter = freezed,}) {
  return _then(_self.copyWith(
height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as NetworkDimension?,diameter: freezed == diameter ? _self.diameter : diameter // ignore: cast_nullable_to_non_nullable
as NetworkDimension?,
  ));
}
/// Create a copy of NetworkCompositeFairing
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NetworkDimensionCopyWith<$Res>? get height {
    if (_self.height == null) {
    return null;
  }

  return $NetworkDimensionCopyWith<$Res>(_self.height!, (value) {
    return _then(_self.copyWith(height: value));
  });
}/// Create a copy of NetworkCompositeFairing
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NetworkDimensionCopyWith<$Res>? get diameter {
    if (_self.diameter == null) {
    return null;
  }

  return $NetworkDimensionCopyWith<$Res>(_self.diameter!, (value) {
    return _then(_self.copyWith(diameter: value));
  });
}
}


/// Adds pattern-matching-related methods to [NetworkCompositeFairing].
extension NetworkCompositeFairingPatterns on NetworkCompositeFairing {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NetworkCompositeFairing value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NetworkCompositeFairing() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NetworkCompositeFairing value)  $default,){
final _that = this;
switch (_that) {
case _NetworkCompositeFairing():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NetworkCompositeFairing value)?  $default,){
final _that = this;
switch (_that) {
case _NetworkCompositeFairing() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( NetworkDimension? height,  NetworkDimension? diameter)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NetworkCompositeFairing() when $default != null:
return $default(_that.height,_that.diameter);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( NetworkDimension? height,  NetworkDimension? diameter)  $default,) {final _that = this;
switch (_that) {
case _NetworkCompositeFairing():
return $default(_that.height,_that.diameter);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( NetworkDimension? height,  NetworkDimension? diameter)?  $default,) {final _that = this;
switch (_that) {
case _NetworkCompositeFairing() when $default != null:
return $default(_that.height,_that.diameter);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NetworkCompositeFairing implements NetworkCompositeFairing {
  const _NetworkCompositeFairing({this.height, this.diameter});
  factory _NetworkCompositeFairing.fromJson(Map<String, dynamic> json) => _$NetworkCompositeFairingFromJson(json);

@override final  NetworkDimension? height;
@override final  NetworkDimension? diameter;

/// Create a copy of NetworkCompositeFairing
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NetworkCompositeFairingCopyWith<_NetworkCompositeFairing> get copyWith => __$NetworkCompositeFairingCopyWithImpl<_NetworkCompositeFairing>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NetworkCompositeFairingToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NetworkCompositeFairing&&(identical(other.height, height) || other.height == height)&&(identical(other.diameter, diameter) || other.diameter == diameter));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,height,diameter);

@override
String toString() {
  return 'NetworkCompositeFairing(height: $height, diameter: $diameter)';
}


}

/// @nodoc
abstract mixin class _$NetworkCompositeFairingCopyWith<$Res> implements $NetworkCompositeFairingCopyWith<$Res> {
  factory _$NetworkCompositeFairingCopyWith(_NetworkCompositeFairing value, $Res Function(_NetworkCompositeFairing) _then) = __$NetworkCompositeFairingCopyWithImpl;
@override @useResult
$Res call({
 NetworkDimension? height, NetworkDimension? diameter
});


@override $NetworkDimensionCopyWith<$Res>? get height;@override $NetworkDimensionCopyWith<$Res>? get diameter;

}
/// @nodoc
class __$NetworkCompositeFairingCopyWithImpl<$Res>
    implements _$NetworkCompositeFairingCopyWith<$Res> {
  __$NetworkCompositeFairingCopyWithImpl(this._self, this._then);

  final _NetworkCompositeFairing _self;
  final $Res Function(_NetworkCompositeFairing) _then;

/// Create a copy of NetworkCompositeFairing
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? height = freezed,Object? diameter = freezed,}) {
  return _then(_NetworkCompositeFairing(
height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as NetworkDimension?,diameter: freezed == diameter ? _self.diameter : diameter // ignore: cast_nullable_to_non_nullable
as NetworkDimension?,
  ));
}

/// Create a copy of NetworkCompositeFairing
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NetworkDimensionCopyWith<$Res>? get height {
    if (_self.height == null) {
    return null;
  }

  return $NetworkDimensionCopyWith<$Res>(_self.height!, (value) {
    return _then(_self.copyWith(height: value));
  });
}/// Create a copy of NetworkCompositeFairing
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NetworkDimensionCopyWith<$Res>? get diameter {
    if (_self.diameter == null) {
    return null;
  }

  return $NetworkDimensionCopyWith<$Res>(_self.diameter!, (value) {
    return _then(_self.copyWith(diameter: value));
  });
}
}


/// @nodoc
mixin _$NetworkDimension {

 double? get meters; double? get feet;
/// Create a copy of NetworkDimension
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NetworkDimensionCopyWith<NetworkDimension> get copyWith => _$NetworkDimensionCopyWithImpl<NetworkDimension>(this as NetworkDimension, _$identity);

  /// Serializes this NetworkDimension to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkDimension&&(identical(other.meters, meters) || other.meters == meters)&&(identical(other.feet, feet) || other.feet == feet));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,meters,feet);

@override
String toString() {
  return 'NetworkDimension(meters: $meters, feet: $feet)';
}


}

/// @nodoc
abstract mixin class $NetworkDimensionCopyWith<$Res>  {
  factory $NetworkDimensionCopyWith(NetworkDimension value, $Res Function(NetworkDimension) _then) = _$NetworkDimensionCopyWithImpl;
@useResult
$Res call({
 double? meters, double? feet
});




}
/// @nodoc
class _$NetworkDimensionCopyWithImpl<$Res>
    implements $NetworkDimensionCopyWith<$Res> {
  _$NetworkDimensionCopyWithImpl(this._self, this._then);

  final NetworkDimension _self;
  final $Res Function(NetworkDimension) _then;

/// Create a copy of NetworkDimension
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? meters = freezed,Object? feet = freezed,}) {
  return _then(_self.copyWith(
meters: freezed == meters ? _self.meters : meters // ignore: cast_nullable_to_non_nullable
as double?,feet: freezed == feet ? _self.feet : feet // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [NetworkDimension].
extension NetworkDimensionPatterns on NetworkDimension {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NetworkDimension value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NetworkDimension() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NetworkDimension value)  $default,){
final _that = this;
switch (_that) {
case _NetworkDimension():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NetworkDimension value)?  $default,){
final _that = this;
switch (_that) {
case _NetworkDimension() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? meters,  double? feet)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NetworkDimension() when $default != null:
return $default(_that.meters,_that.feet);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? meters,  double? feet)  $default,) {final _that = this;
switch (_that) {
case _NetworkDimension():
return $default(_that.meters,_that.feet);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? meters,  double? feet)?  $default,) {final _that = this;
switch (_that) {
case _NetworkDimension() when $default != null:
return $default(_that.meters,_that.feet);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NetworkDimension implements NetworkDimension {
  const _NetworkDimension({this.meters, this.feet});
  factory _NetworkDimension.fromJson(Map<String, dynamic> json) => _$NetworkDimensionFromJson(json);

@override final  double? meters;
@override final  double? feet;

/// Create a copy of NetworkDimension
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NetworkDimensionCopyWith<_NetworkDimension> get copyWith => __$NetworkDimensionCopyWithImpl<_NetworkDimension>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NetworkDimensionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NetworkDimension&&(identical(other.meters, meters) || other.meters == meters)&&(identical(other.feet, feet) || other.feet == feet));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,meters,feet);

@override
String toString() {
  return 'NetworkDimension(meters: $meters, feet: $feet)';
}


}

/// @nodoc
abstract mixin class _$NetworkDimensionCopyWith<$Res> implements $NetworkDimensionCopyWith<$Res> {
  factory _$NetworkDimensionCopyWith(_NetworkDimension value, $Res Function(_NetworkDimension) _then) = __$NetworkDimensionCopyWithImpl;
@override @useResult
$Res call({
 double? meters, double? feet
});




}
/// @nodoc
class __$NetworkDimensionCopyWithImpl<$Res>
    implements _$NetworkDimensionCopyWith<$Res> {
  __$NetworkDimensionCopyWithImpl(this._self, this._then);

  final _NetworkDimension _self;
  final $Res Function(_NetworkDimension) _then;

/// Create a copy of NetworkDimension
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? meters = freezed,Object? feet = freezed,}) {
  return _then(_NetworkDimension(
meters: freezed == meters ? _self.meters : meters // ignore: cast_nullable_to_non_nullable
as double?,feet: freezed == feet ? _self.feet : feet // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$NetworkMass {

 int? get kg; int? get lb;
/// Create a copy of NetworkMass
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NetworkMassCopyWith<NetworkMass> get copyWith => _$NetworkMassCopyWithImpl<NetworkMass>(this as NetworkMass, _$identity);

  /// Serializes this NetworkMass to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkMass&&(identical(other.kg, kg) || other.kg == kg)&&(identical(other.lb, lb) || other.lb == lb));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kg,lb);

@override
String toString() {
  return 'NetworkMass(kg: $kg, lb: $lb)';
}


}

/// @nodoc
abstract mixin class $NetworkMassCopyWith<$Res>  {
  factory $NetworkMassCopyWith(NetworkMass value, $Res Function(NetworkMass) _then) = _$NetworkMassCopyWithImpl;
@useResult
$Res call({
 int? kg, int? lb
});




}
/// @nodoc
class _$NetworkMassCopyWithImpl<$Res>
    implements $NetworkMassCopyWith<$Res> {
  _$NetworkMassCopyWithImpl(this._self, this._then);

  final NetworkMass _self;
  final $Res Function(NetworkMass) _then;

/// Create a copy of NetworkMass
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? kg = freezed,Object? lb = freezed,}) {
  return _then(_self.copyWith(
kg: freezed == kg ? _self.kg : kg // ignore: cast_nullable_to_non_nullable
as int?,lb: freezed == lb ? _self.lb : lb // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [NetworkMass].
extension NetworkMassPatterns on NetworkMass {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NetworkMass value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NetworkMass() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NetworkMass value)  $default,){
final _that = this;
switch (_that) {
case _NetworkMass():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NetworkMass value)?  $default,){
final _that = this;
switch (_that) {
case _NetworkMass() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? kg,  int? lb)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NetworkMass() when $default != null:
return $default(_that.kg,_that.lb);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? kg,  int? lb)  $default,) {final _that = this;
switch (_that) {
case _NetworkMass():
return $default(_that.kg,_that.lb);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? kg,  int? lb)?  $default,) {final _that = this;
switch (_that) {
case _NetworkMass() when $default != null:
return $default(_that.kg,_that.lb);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NetworkMass implements NetworkMass {
  const _NetworkMass({this.kg, this.lb});
  factory _NetworkMass.fromJson(Map<String, dynamic> json) => _$NetworkMassFromJson(json);

@override final  int? kg;
@override final  int? lb;

/// Create a copy of NetworkMass
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NetworkMassCopyWith<_NetworkMass> get copyWith => __$NetworkMassCopyWithImpl<_NetworkMass>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NetworkMassToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NetworkMass&&(identical(other.kg, kg) || other.kg == kg)&&(identical(other.lb, lb) || other.lb == lb));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kg,lb);

@override
String toString() {
  return 'NetworkMass(kg: $kg, lb: $lb)';
}


}

/// @nodoc
abstract mixin class _$NetworkMassCopyWith<$Res> implements $NetworkMassCopyWith<$Res> {
  factory _$NetworkMassCopyWith(_NetworkMass value, $Res Function(_NetworkMass) _then) = __$NetworkMassCopyWithImpl;
@override @useResult
$Res call({
 int? kg, int? lb
});




}
/// @nodoc
class __$NetworkMassCopyWithImpl<$Res>
    implements _$NetworkMassCopyWith<$Res> {
  __$NetworkMassCopyWithImpl(this._self, this._then);

  final _NetworkMass _self;
  final $Res Function(_NetworkMass) _then;

/// Create a copy of NetworkMass
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kg = freezed,Object? lb = freezed,}) {
  return _then(_NetworkMass(
kg: freezed == kg ? _self.kg : kg // ignore: cast_nullable_to_non_nullable
as int?,lb: freezed == lb ? _self.lb : lb // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$NetworkPayloadWeight {

 String? get id; String? get name; int? get kg; int? get lb;
/// Create a copy of NetworkPayloadWeight
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NetworkPayloadWeightCopyWith<NetworkPayloadWeight> get copyWith => _$NetworkPayloadWeightCopyWithImpl<NetworkPayloadWeight>(this as NetworkPayloadWeight, _$identity);

  /// Serializes this NetworkPayloadWeight to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkPayloadWeight&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.kg, kg) || other.kg == kg)&&(identical(other.lb, lb) || other.lb == lb));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,kg,lb);

@override
String toString() {
  return 'NetworkPayloadWeight(id: $id, name: $name, kg: $kg, lb: $lb)';
}


}

/// @nodoc
abstract mixin class $NetworkPayloadWeightCopyWith<$Res>  {
  factory $NetworkPayloadWeightCopyWith(NetworkPayloadWeight value, $Res Function(NetworkPayloadWeight) _then) = _$NetworkPayloadWeightCopyWithImpl;
@useResult
$Res call({
 String? id, String? name, int? kg, int? lb
});




}
/// @nodoc
class _$NetworkPayloadWeightCopyWithImpl<$Res>
    implements $NetworkPayloadWeightCopyWith<$Res> {
  _$NetworkPayloadWeightCopyWithImpl(this._self, this._then);

  final NetworkPayloadWeight _self;
  final $Res Function(NetworkPayloadWeight) _then;

/// Create a copy of NetworkPayloadWeight
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? kg = freezed,Object? lb = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,kg: freezed == kg ? _self.kg : kg // ignore: cast_nullable_to_non_nullable
as int?,lb: freezed == lb ? _self.lb : lb // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [NetworkPayloadWeight].
extension NetworkPayloadWeightPatterns on NetworkPayloadWeight {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NetworkPayloadWeight value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NetworkPayloadWeight() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NetworkPayloadWeight value)  $default,){
final _that = this;
switch (_that) {
case _NetworkPayloadWeight():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NetworkPayloadWeight value)?  $default,){
final _that = this;
switch (_that) {
case _NetworkPayloadWeight() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? name,  int? kg,  int? lb)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NetworkPayloadWeight() when $default != null:
return $default(_that.id,_that.name,_that.kg,_that.lb);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? name,  int? kg,  int? lb)  $default,) {final _that = this;
switch (_that) {
case _NetworkPayloadWeight():
return $default(_that.id,_that.name,_that.kg,_that.lb);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? name,  int? kg,  int? lb)?  $default,) {final _that = this;
switch (_that) {
case _NetworkPayloadWeight() when $default != null:
return $default(_that.id,_that.name,_that.kg,_that.lb);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NetworkPayloadWeight implements NetworkPayloadWeight {
  const _NetworkPayloadWeight({this.id, this.name, this.kg, this.lb});
  factory _NetworkPayloadWeight.fromJson(Map<String, dynamic> json) => _$NetworkPayloadWeightFromJson(json);

@override final  String? id;
@override final  String? name;
@override final  int? kg;
@override final  int? lb;

/// Create a copy of NetworkPayloadWeight
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NetworkPayloadWeightCopyWith<_NetworkPayloadWeight> get copyWith => __$NetworkPayloadWeightCopyWithImpl<_NetworkPayloadWeight>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NetworkPayloadWeightToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NetworkPayloadWeight&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.kg, kg) || other.kg == kg)&&(identical(other.lb, lb) || other.lb == lb));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,kg,lb);

@override
String toString() {
  return 'NetworkPayloadWeight(id: $id, name: $name, kg: $kg, lb: $lb)';
}


}

/// @nodoc
abstract mixin class _$NetworkPayloadWeightCopyWith<$Res> implements $NetworkPayloadWeightCopyWith<$Res> {
  factory _$NetworkPayloadWeightCopyWith(_NetworkPayloadWeight value, $Res Function(_NetworkPayloadWeight) _then) = __$NetworkPayloadWeightCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? name, int? kg, int? lb
});




}
/// @nodoc
class __$NetworkPayloadWeightCopyWithImpl<$Res>
    implements _$NetworkPayloadWeightCopyWith<$Res> {
  __$NetworkPayloadWeightCopyWithImpl(this._self, this._then);

  final _NetworkPayloadWeight _self;
  final $Res Function(_NetworkPayloadWeight) _then;

/// Create a copy of NetworkPayloadWeight
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? kg = freezed,Object? lb = freezed,}) {
  return _then(_NetworkPayloadWeight(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,kg: freezed == kg ? _self.kg : kg // ignore: cast_nullable_to_non_nullable
as int?,lb: freezed == lb ? _self.lb : lb // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$NetworkEngines {

 int? get number; String? get type; String? get version; String? get layout; NetworkIsp? get isp;@JsonKey(name: 'engine_loss_max') int? get engineLossMax;@JsonKey(name: 'propellant_1') String? get propellant1;@JsonKey(name: 'propellant_2') String? get propellant2;@JsonKey(name: 'thrust_sea_level') NetworkThrust? get thrustSeaLevel;@JsonKey(name: 'thrust_vacuum') NetworkThrust? get thrustVacuum;@JsonKey(name: 'thrust_to_weight') int? get thrustToWeight;
/// Create a copy of NetworkEngines
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NetworkEnginesCopyWith<NetworkEngines> get copyWith => _$NetworkEnginesCopyWithImpl<NetworkEngines>(this as NetworkEngines, _$identity);

  /// Serializes this NetworkEngines to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkEngines&&(identical(other.number, number) || other.number == number)&&(identical(other.type, type) || other.type == type)&&(identical(other.version, version) || other.version == version)&&(identical(other.layout, layout) || other.layout == layout)&&(identical(other.isp, isp) || other.isp == isp)&&(identical(other.engineLossMax, engineLossMax) || other.engineLossMax == engineLossMax)&&(identical(other.propellant1, propellant1) || other.propellant1 == propellant1)&&(identical(other.propellant2, propellant2) || other.propellant2 == propellant2)&&(identical(other.thrustSeaLevel, thrustSeaLevel) || other.thrustSeaLevel == thrustSeaLevel)&&(identical(other.thrustVacuum, thrustVacuum) || other.thrustVacuum == thrustVacuum)&&(identical(other.thrustToWeight, thrustToWeight) || other.thrustToWeight == thrustToWeight));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number,type,version,layout,isp,engineLossMax,propellant1,propellant2,thrustSeaLevel,thrustVacuum,thrustToWeight);

@override
String toString() {
  return 'NetworkEngines(number: $number, type: $type, version: $version, layout: $layout, isp: $isp, engineLossMax: $engineLossMax, propellant1: $propellant1, propellant2: $propellant2, thrustSeaLevel: $thrustSeaLevel, thrustVacuum: $thrustVacuum, thrustToWeight: $thrustToWeight)';
}


}

/// @nodoc
abstract mixin class $NetworkEnginesCopyWith<$Res>  {
  factory $NetworkEnginesCopyWith(NetworkEngines value, $Res Function(NetworkEngines) _then) = _$NetworkEnginesCopyWithImpl;
@useResult
$Res call({
 int? number, String? type, String? version, String? layout, NetworkIsp? isp,@JsonKey(name: 'engine_loss_max') int? engineLossMax,@JsonKey(name: 'propellant_1') String? propellant1,@JsonKey(name: 'propellant_2') String? propellant2,@JsonKey(name: 'thrust_sea_level') NetworkThrust? thrustSeaLevel,@JsonKey(name: 'thrust_vacuum') NetworkThrust? thrustVacuum,@JsonKey(name: 'thrust_to_weight') int? thrustToWeight
});


$NetworkIspCopyWith<$Res>? get isp;$NetworkThrustCopyWith<$Res>? get thrustSeaLevel;$NetworkThrustCopyWith<$Res>? get thrustVacuum;

}
/// @nodoc
class _$NetworkEnginesCopyWithImpl<$Res>
    implements $NetworkEnginesCopyWith<$Res> {
  _$NetworkEnginesCopyWithImpl(this._self, this._then);

  final NetworkEngines _self;
  final $Res Function(NetworkEngines) _then;

/// Create a copy of NetworkEngines
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? number = freezed,Object? type = freezed,Object? version = freezed,Object? layout = freezed,Object? isp = freezed,Object? engineLossMax = freezed,Object? propellant1 = freezed,Object? propellant2 = freezed,Object? thrustSeaLevel = freezed,Object? thrustVacuum = freezed,Object? thrustToWeight = freezed,}) {
  return _then(_self.copyWith(
number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String?,layout: freezed == layout ? _self.layout : layout // ignore: cast_nullable_to_non_nullable
as String?,isp: freezed == isp ? _self.isp : isp // ignore: cast_nullable_to_non_nullable
as NetworkIsp?,engineLossMax: freezed == engineLossMax ? _self.engineLossMax : engineLossMax // ignore: cast_nullable_to_non_nullable
as int?,propellant1: freezed == propellant1 ? _self.propellant1 : propellant1 // ignore: cast_nullable_to_non_nullable
as String?,propellant2: freezed == propellant2 ? _self.propellant2 : propellant2 // ignore: cast_nullable_to_non_nullable
as String?,thrustSeaLevel: freezed == thrustSeaLevel ? _self.thrustSeaLevel : thrustSeaLevel // ignore: cast_nullable_to_non_nullable
as NetworkThrust?,thrustVacuum: freezed == thrustVacuum ? _self.thrustVacuum : thrustVacuum // ignore: cast_nullable_to_non_nullable
as NetworkThrust?,thrustToWeight: freezed == thrustToWeight ? _self.thrustToWeight : thrustToWeight // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of NetworkEngines
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NetworkIspCopyWith<$Res>? get isp {
    if (_self.isp == null) {
    return null;
  }

  return $NetworkIspCopyWith<$Res>(_self.isp!, (value) {
    return _then(_self.copyWith(isp: value));
  });
}/// Create a copy of NetworkEngines
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NetworkThrustCopyWith<$Res>? get thrustSeaLevel {
    if (_self.thrustSeaLevel == null) {
    return null;
  }

  return $NetworkThrustCopyWith<$Res>(_self.thrustSeaLevel!, (value) {
    return _then(_self.copyWith(thrustSeaLevel: value));
  });
}/// Create a copy of NetworkEngines
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NetworkThrustCopyWith<$Res>? get thrustVacuum {
    if (_self.thrustVacuum == null) {
    return null;
  }

  return $NetworkThrustCopyWith<$Res>(_self.thrustVacuum!, (value) {
    return _then(_self.copyWith(thrustVacuum: value));
  });
}
}


/// Adds pattern-matching-related methods to [NetworkEngines].
extension NetworkEnginesPatterns on NetworkEngines {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NetworkEngines value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NetworkEngines() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NetworkEngines value)  $default,){
final _that = this;
switch (_that) {
case _NetworkEngines():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NetworkEngines value)?  $default,){
final _that = this;
switch (_that) {
case _NetworkEngines() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? number,  String? type,  String? version,  String? layout,  NetworkIsp? isp, @JsonKey(name: 'engine_loss_max')  int? engineLossMax, @JsonKey(name: 'propellant_1')  String? propellant1, @JsonKey(name: 'propellant_2')  String? propellant2, @JsonKey(name: 'thrust_sea_level')  NetworkThrust? thrustSeaLevel, @JsonKey(name: 'thrust_vacuum')  NetworkThrust? thrustVacuum, @JsonKey(name: 'thrust_to_weight')  int? thrustToWeight)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NetworkEngines() when $default != null:
return $default(_that.number,_that.type,_that.version,_that.layout,_that.isp,_that.engineLossMax,_that.propellant1,_that.propellant2,_that.thrustSeaLevel,_that.thrustVacuum,_that.thrustToWeight);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? number,  String? type,  String? version,  String? layout,  NetworkIsp? isp, @JsonKey(name: 'engine_loss_max')  int? engineLossMax, @JsonKey(name: 'propellant_1')  String? propellant1, @JsonKey(name: 'propellant_2')  String? propellant2, @JsonKey(name: 'thrust_sea_level')  NetworkThrust? thrustSeaLevel, @JsonKey(name: 'thrust_vacuum')  NetworkThrust? thrustVacuum, @JsonKey(name: 'thrust_to_weight')  int? thrustToWeight)  $default,) {final _that = this;
switch (_that) {
case _NetworkEngines():
return $default(_that.number,_that.type,_that.version,_that.layout,_that.isp,_that.engineLossMax,_that.propellant1,_that.propellant2,_that.thrustSeaLevel,_that.thrustVacuum,_that.thrustToWeight);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? number,  String? type,  String? version,  String? layout,  NetworkIsp? isp, @JsonKey(name: 'engine_loss_max')  int? engineLossMax, @JsonKey(name: 'propellant_1')  String? propellant1, @JsonKey(name: 'propellant_2')  String? propellant2, @JsonKey(name: 'thrust_sea_level')  NetworkThrust? thrustSeaLevel, @JsonKey(name: 'thrust_vacuum')  NetworkThrust? thrustVacuum, @JsonKey(name: 'thrust_to_weight')  int? thrustToWeight)?  $default,) {final _that = this;
switch (_that) {
case _NetworkEngines() when $default != null:
return $default(_that.number,_that.type,_that.version,_that.layout,_that.isp,_that.engineLossMax,_that.propellant1,_that.propellant2,_that.thrustSeaLevel,_that.thrustVacuum,_that.thrustToWeight);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NetworkEngines implements NetworkEngines {
  const _NetworkEngines({this.number, this.type, this.version, this.layout, this.isp, @JsonKey(name: 'engine_loss_max') this.engineLossMax, @JsonKey(name: 'propellant_1') this.propellant1, @JsonKey(name: 'propellant_2') this.propellant2, @JsonKey(name: 'thrust_sea_level') this.thrustSeaLevel, @JsonKey(name: 'thrust_vacuum') this.thrustVacuum, @JsonKey(name: 'thrust_to_weight') this.thrustToWeight});
  factory _NetworkEngines.fromJson(Map<String, dynamic> json) => _$NetworkEnginesFromJson(json);

@override final  int? number;
@override final  String? type;
@override final  String? version;
@override final  String? layout;
@override final  NetworkIsp? isp;
@override@JsonKey(name: 'engine_loss_max') final  int? engineLossMax;
@override@JsonKey(name: 'propellant_1') final  String? propellant1;
@override@JsonKey(name: 'propellant_2') final  String? propellant2;
@override@JsonKey(name: 'thrust_sea_level') final  NetworkThrust? thrustSeaLevel;
@override@JsonKey(name: 'thrust_vacuum') final  NetworkThrust? thrustVacuum;
@override@JsonKey(name: 'thrust_to_weight') final  int? thrustToWeight;

/// Create a copy of NetworkEngines
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NetworkEnginesCopyWith<_NetworkEngines> get copyWith => __$NetworkEnginesCopyWithImpl<_NetworkEngines>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NetworkEnginesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NetworkEngines&&(identical(other.number, number) || other.number == number)&&(identical(other.type, type) || other.type == type)&&(identical(other.version, version) || other.version == version)&&(identical(other.layout, layout) || other.layout == layout)&&(identical(other.isp, isp) || other.isp == isp)&&(identical(other.engineLossMax, engineLossMax) || other.engineLossMax == engineLossMax)&&(identical(other.propellant1, propellant1) || other.propellant1 == propellant1)&&(identical(other.propellant2, propellant2) || other.propellant2 == propellant2)&&(identical(other.thrustSeaLevel, thrustSeaLevel) || other.thrustSeaLevel == thrustSeaLevel)&&(identical(other.thrustVacuum, thrustVacuum) || other.thrustVacuum == thrustVacuum)&&(identical(other.thrustToWeight, thrustToWeight) || other.thrustToWeight == thrustToWeight));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number,type,version,layout,isp,engineLossMax,propellant1,propellant2,thrustSeaLevel,thrustVacuum,thrustToWeight);

@override
String toString() {
  return 'NetworkEngines(number: $number, type: $type, version: $version, layout: $layout, isp: $isp, engineLossMax: $engineLossMax, propellant1: $propellant1, propellant2: $propellant2, thrustSeaLevel: $thrustSeaLevel, thrustVacuum: $thrustVacuum, thrustToWeight: $thrustToWeight)';
}


}

/// @nodoc
abstract mixin class _$NetworkEnginesCopyWith<$Res> implements $NetworkEnginesCopyWith<$Res> {
  factory _$NetworkEnginesCopyWith(_NetworkEngines value, $Res Function(_NetworkEngines) _then) = __$NetworkEnginesCopyWithImpl;
@override @useResult
$Res call({
 int? number, String? type, String? version, String? layout, NetworkIsp? isp,@JsonKey(name: 'engine_loss_max') int? engineLossMax,@JsonKey(name: 'propellant_1') String? propellant1,@JsonKey(name: 'propellant_2') String? propellant2,@JsonKey(name: 'thrust_sea_level') NetworkThrust? thrustSeaLevel,@JsonKey(name: 'thrust_vacuum') NetworkThrust? thrustVacuum,@JsonKey(name: 'thrust_to_weight') int? thrustToWeight
});


@override $NetworkIspCopyWith<$Res>? get isp;@override $NetworkThrustCopyWith<$Res>? get thrustSeaLevel;@override $NetworkThrustCopyWith<$Res>? get thrustVacuum;

}
/// @nodoc
class __$NetworkEnginesCopyWithImpl<$Res>
    implements _$NetworkEnginesCopyWith<$Res> {
  __$NetworkEnginesCopyWithImpl(this._self, this._then);

  final _NetworkEngines _self;
  final $Res Function(_NetworkEngines) _then;

/// Create a copy of NetworkEngines
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? number = freezed,Object? type = freezed,Object? version = freezed,Object? layout = freezed,Object? isp = freezed,Object? engineLossMax = freezed,Object? propellant1 = freezed,Object? propellant2 = freezed,Object? thrustSeaLevel = freezed,Object? thrustVacuum = freezed,Object? thrustToWeight = freezed,}) {
  return _then(_NetworkEngines(
number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String?,layout: freezed == layout ? _self.layout : layout // ignore: cast_nullable_to_non_nullable
as String?,isp: freezed == isp ? _self.isp : isp // ignore: cast_nullable_to_non_nullable
as NetworkIsp?,engineLossMax: freezed == engineLossMax ? _self.engineLossMax : engineLossMax // ignore: cast_nullable_to_non_nullable
as int?,propellant1: freezed == propellant1 ? _self.propellant1 : propellant1 // ignore: cast_nullable_to_non_nullable
as String?,propellant2: freezed == propellant2 ? _self.propellant2 : propellant2 // ignore: cast_nullable_to_non_nullable
as String?,thrustSeaLevel: freezed == thrustSeaLevel ? _self.thrustSeaLevel : thrustSeaLevel // ignore: cast_nullable_to_non_nullable
as NetworkThrust?,thrustVacuum: freezed == thrustVacuum ? _self.thrustVacuum : thrustVacuum // ignore: cast_nullable_to_non_nullable
as NetworkThrust?,thrustToWeight: freezed == thrustToWeight ? _self.thrustToWeight : thrustToWeight // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of NetworkEngines
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NetworkIspCopyWith<$Res>? get isp {
    if (_self.isp == null) {
    return null;
  }

  return $NetworkIspCopyWith<$Res>(_self.isp!, (value) {
    return _then(_self.copyWith(isp: value));
  });
}/// Create a copy of NetworkEngines
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NetworkThrustCopyWith<$Res>? get thrustSeaLevel {
    if (_self.thrustSeaLevel == null) {
    return null;
  }

  return $NetworkThrustCopyWith<$Res>(_self.thrustSeaLevel!, (value) {
    return _then(_self.copyWith(thrustSeaLevel: value));
  });
}/// Create a copy of NetworkEngines
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NetworkThrustCopyWith<$Res>? get thrustVacuum {
    if (_self.thrustVacuum == null) {
    return null;
  }

  return $NetworkThrustCopyWith<$Res>(_self.thrustVacuum!, (value) {
    return _then(_self.copyWith(thrustVacuum: value));
  });
}
}


/// @nodoc
mixin _$NetworkIsp {

@JsonKey(name: 'sea_level') int? get seaLevel; int? get vacuum;
/// Create a copy of NetworkIsp
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NetworkIspCopyWith<NetworkIsp> get copyWith => _$NetworkIspCopyWithImpl<NetworkIsp>(this as NetworkIsp, _$identity);

  /// Serializes this NetworkIsp to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkIsp&&(identical(other.seaLevel, seaLevel) || other.seaLevel == seaLevel)&&(identical(other.vacuum, vacuum) || other.vacuum == vacuum));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,seaLevel,vacuum);

@override
String toString() {
  return 'NetworkIsp(seaLevel: $seaLevel, vacuum: $vacuum)';
}


}

/// @nodoc
abstract mixin class $NetworkIspCopyWith<$Res>  {
  factory $NetworkIspCopyWith(NetworkIsp value, $Res Function(NetworkIsp) _then) = _$NetworkIspCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'sea_level') int? seaLevel, int? vacuum
});




}
/// @nodoc
class _$NetworkIspCopyWithImpl<$Res>
    implements $NetworkIspCopyWith<$Res> {
  _$NetworkIspCopyWithImpl(this._self, this._then);

  final NetworkIsp _self;
  final $Res Function(NetworkIsp) _then;

/// Create a copy of NetworkIsp
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? seaLevel = freezed,Object? vacuum = freezed,}) {
  return _then(_self.copyWith(
seaLevel: freezed == seaLevel ? _self.seaLevel : seaLevel // ignore: cast_nullable_to_non_nullable
as int?,vacuum: freezed == vacuum ? _self.vacuum : vacuum // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [NetworkIsp].
extension NetworkIspPatterns on NetworkIsp {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NetworkIsp value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NetworkIsp() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NetworkIsp value)  $default,){
final _that = this;
switch (_that) {
case _NetworkIsp():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NetworkIsp value)?  $default,){
final _that = this;
switch (_that) {
case _NetworkIsp() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'sea_level')  int? seaLevel,  int? vacuum)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NetworkIsp() when $default != null:
return $default(_that.seaLevel,_that.vacuum);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'sea_level')  int? seaLevel,  int? vacuum)  $default,) {final _that = this;
switch (_that) {
case _NetworkIsp():
return $default(_that.seaLevel,_that.vacuum);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'sea_level')  int? seaLevel,  int? vacuum)?  $default,) {final _that = this;
switch (_that) {
case _NetworkIsp() when $default != null:
return $default(_that.seaLevel,_that.vacuum);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NetworkIsp implements NetworkIsp {
  const _NetworkIsp({@JsonKey(name: 'sea_level') this.seaLevel, this.vacuum});
  factory _NetworkIsp.fromJson(Map<String, dynamic> json) => _$NetworkIspFromJson(json);

@override@JsonKey(name: 'sea_level') final  int? seaLevel;
@override final  int? vacuum;

/// Create a copy of NetworkIsp
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NetworkIspCopyWith<_NetworkIsp> get copyWith => __$NetworkIspCopyWithImpl<_NetworkIsp>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NetworkIspToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NetworkIsp&&(identical(other.seaLevel, seaLevel) || other.seaLevel == seaLevel)&&(identical(other.vacuum, vacuum) || other.vacuum == vacuum));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,seaLevel,vacuum);

@override
String toString() {
  return 'NetworkIsp(seaLevel: $seaLevel, vacuum: $vacuum)';
}


}

/// @nodoc
abstract mixin class _$NetworkIspCopyWith<$Res> implements $NetworkIspCopyWith<$Res> {
  factory _$NetworkIspCopyWith(_NetworkIsp value, $Res Function(_NetworkIsp) _then) = __$NetworkIspCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'sea_level') int? seaLevel, int? vacuum
});




}
/// @nodoc
class __$NetworkIspCopyWithImpl<$Res>
    implements _$NetworkIspCopyWith<$Res> {
  __$NetworkIspCopyWithImpl(this._self, this._then);

  final _NetworkIsp _self;
  final $Res Function(_NetworkIsp) _then;

/// Create a copy of NetworkIsp
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? seaLevel = freezed,Object? vacuum = freezed,}) {
  return _then(_NetworkIsp(
seaLevel: freezed == seaLevel ? _self.seaLevel : seaLevel // ignore: cast_nullable_to_non_nullable
as int?,vacuum: freezed == vacuum ? _self.vacuum : vacuum // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$NetworkThrust {

 double? get kN; int? get lbf;
/// Create a copy of NetworkThrust
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NetworkThrustCopyWith<NetworkThrust> get copyWith => _$NetworkThrustCopyWithImpl<NetworkThrust>(this as NetworkThrust, _$identity);

  /// Serializes this NetworkThrust to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkThrust&&(identical(other.kN, kN) || other.kN == kN)&&(identical(other.lbf, lbf) || other.lbf == lbf));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kN,lbf);

@override
String toString() {
  return 'NetworkThrust(kN: $kN, lbf: $lbf)';
}


}

/// @nodoc
abstract mixin class $NetworkThrustCopyWith<$Res>  {
  factory $NetworkThrustCopyWith(NetworkThrust value, $Res Function(NetworkThrust) _then) = _$NetworkThrustCopyWithImpl;
@useResult
$Res call({
 double? kN, int? lbf
});




}
/// @nodoc
class _$NetworkThrustCopyWithImpl<$Res>
    implements $NetworkThrustCopyWith<$Res> {
  _$NetworkThrustCopyWithImpl(this._self, this._then);

  final NetworkThrust _self;
  final $Res Function(NetworkThrust) _then;

/// Create a copy of NetworkThrust
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? kN = freezed,Object? lbf = freezed,}) {
  return _then(_self.copyWith(
kN: freezed == kN ? _self.kN : kN // ignore: cast_nullable_to_non_nullable
as double?,lbf: freezed == lbf ? _self.lbf : lbf // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [NetworkThrust].
extension NetworkThrustPatterns on NetworkThrust {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NetworkThrust value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NetworkThrust() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NetworkThrust value)  $default,){
final _that = this;
switch (_that) {
case _NetworkThrust():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NetworkThrust value)?  $default,){
final _that = this;
switch (_that) {
case _NetworkThrust() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? kN,  int? lbf)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NetworkThrust() when $default != null:
return $default(_that.kN,_that.lbf);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? kN,  int? lbf)  $default,) {final _that = this;
switch (_that) {
case _NetworkThrust():
return $default(_that.kN,_that.lbf);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? kN,  int? lbf)?  $default,) {final _that = this;
switch (_that) {
case _NetworkThrust() when $default != null:
return $default(_that.kN,_that.lbf);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NetworkThrust implements NetworkThrust {
  const _NetworkThrust({this.kN, this.lbf});
  factory _NetworkThrust.fromJson(Map<String, dynamic> json) => _$NetworkThrustFromJson(json);

@override final  double? kN;
@override final  int? lbf;

/// Create a copy of NetworkThrust
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NetworkThrustCopyWith<_NetworkThrust> get copyWith => __$NetworkThrustCopyWithImpl<_NetworkThrust>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NetworkThrustToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NetworkThrust&&(identical(other.kN, kN) || other.kN == kN)&&(identical(other.lbf, lbf) || other.lbf == lbf));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kN,lbf);

@override
String toString() {
  return 'NetworkThrust(kN: $kN, lbf: $lbf)';
}


}

/// @nodoc
abstract mixin class _$NetworkThrustCopyWith<$Res> implements $NetworkThrustCopyWith<$Res> {
  factory _$NetworkThrustCopyWith(_NetworkThrust value, $Res Function(_NetworkThrust) _then) = __$NetworkThrustCopyWithImpl;
@override @useResult
$Res call({
 double? kN, int? lbf
});




}
/// @nodoc
class __$NetworkThrustCopyWithImpl<$Res>
    implements _$NetworkThrustCopyWith<$Res> {
  __$NetworkThrustCopyWithImpl(this._self, this._then);

  final _NetworkThrust _self;
  final $Res Function(_NetworkThrust) _then;

/// Create a copy of NetworkThrust
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kN = freezed,Object? lbf = freezed,}) {
  return _then(_NetworkThrust(
kN: freezed == kN ? _self.kN : kN // ignore: cast_nullable_to_non_nullable
as double?,lbf: freezed == lbf ? _self.lbf : lbf // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$NetworkLandingLegs {

 int? get number; String? get material;
/// Create a copy of NetworkLandingLegs
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NetworkLandingLegsCopyWith<NetworkLandingLegs> get copyWith => _$NetworkLandingLegsCopyWithImpl<NetworkLandingLegs>(this as NetworkLandingLegs, _$identity);

  /// Serializes this NetworkLandingLegs to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkLandingLegs&&(identical(other.number, number) || other.number == number)&&(identical(other.material, material) || other.material == material));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number,material);

@override
String toString() {
  return 'NetworkLandingLegs(number: $number, material: $material)';
}


}

/// @nodoc
abstract mixin class $NetworkLandingLegsCopyWith<$Res>  {
  factory $NetworkLandingLegsCopyWith(NetworkLandingLegs value, $Res Function(NetworkLandingLegs) _then) = _$NetworkLandingLegsCopyWithImpl;
@useResult
$Res call({
 int? number, String? material
});




}
/// @nodoc
class _$NetworkLandingLegsCopyWithImpl<$Res>
    implements $NetworkLandingLegsCopyWith<$Res> {
  _$NetworkLandingLegsCopyWithImpl(this._self, this._then);

  final NetworkLandingLegs _self;
  final $Res Function(NetworkLandingLegs) _then;

/// Create a copy of NetworkLandingLegs
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? number = freezed,Object? material = freezed,}) {
  return _then(_self.copyWith(
number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int?,material: freezed == material ? _self.material : material // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [NetworkLandingLegs].
extension NetworkLandingLegsPatterns on NetworkLandingLegs {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NetworkLandingLegs value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NetworkLandingLegs() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NetworkLandingLegs value)  $default,){
final _that = this;
switch (_that) {
case _NetworkLandingLegs():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NetworkLandingLegs value)?  $default,){
final _that = this;
switch (_that) {
case _NetworkLandingLegs() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? number,  String? material)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NetworkLandingLegs() when $default != null:
return $default(_that.number,_that.material);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? number,  String? material)  $default,) {final _that = this;
switch (_that) {
case _NetworkLandingLegs():
return $default(_that.number,_that.material);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? number,  String? material)?  $default,) {final _that = this;
switch (_that) {
case _NetworkLandingLegs() when $default != null:
return $default(_that.number,_that.material);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NetworkLandingLegs implements NetworkLandingLegs {
  const _NetworkLandingLegs({this.number, this.material});
  factory _NetworkLandingLegs.fromJson(Map<String, dynamic> json) => _$NetworkLandingLegsFromJson(json);

@override final  int? number;
@override final  String? material;

/// Create a copy of NetworkLandingLegs
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NetworkLandingLegsCopyWith<_NetworkLandingLegs> get copyWith => __$NetworkLandingLegsCopyWithImpl<_NetworkLandingLegs>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NetworkLandingLegsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NetworkLandingLegs&&(identical(other.number, number) || other.number == number)&&(identical(other.material, material) || other.material == material));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number,material);

@override
String toString() {
  return 'NetworkLandingLegs(number: $number, material: $material)';
}


}

/// @nodoc
abstract mixin class _$NetworkLandingLegsCopyWith<$Res> implements $NetworkLandingLegsCopyWith<$Res> {
  factory _$NetworkLandingLegsCopyWith(_NetworkLandingLegs value, $Res Function(_NetworkLandingLegs) _then) = __$NetworkLandingLegsCopyWithImpl;
@override @useResult
$Res call({
 int? number, String? material
});




}
/// @nodoc
class __$NetworkLandingLegsCopyWithImpl<$Res>
    implements _$NetworkLandingLegsCopyWith<$Res> {
  __$NetworkLandingLegsCopyWithImpl(this._self, this._then);

  final _NetworkLandingLegs _self;
  final $Res Function(_NetworkLandingLegs) _then;

/// Create a copy of NetworkLandingLegs
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? number = freezed,Object? material = freezed,}) {
  return _then(_NetworkLandingLegs(
number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int?,material: freezed == material ? _self.material : material // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

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
  @JsonKey(name: 'core_serial')
  String? get coreSerial;

  int? get flight;

  int? get block;

  bool? get gridfins;

  bool? get legs;

  bool? get reused;

  @JsonKey(name: 'land_success')
  bool? get landSuccess;

  @JsonKey(name: 'landing_intent')
  bool? get landingIntent;

  @JsonKey(name: 'landing_type')
  String? get landingType;

  @JsonKey(name: 'landing_vehicle')
  String? get landingVehicle;

  /// Create a copy of NetworkCoreModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NetworkCoreModelCopyWith<NetworkCoreModel> get copyWith =>
      _$NetworkCoreModelCopyWithImpl<NetworkCoreModel>(
          this as NetworkCoreModel, _$identity);

  /// Serializes this NetworkCoreModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NetworkCoreModel &&
            (identical(other.coreSerial, coreSerial) ||
                other.coreSerial == coreSerial) &&
            (identical(other.flight, flight) || other.flight == flight) &&
            (identical(other.block, block) || other.block == block) &&
            (identical(other.gridfins, gridfins) ||
                other.gridfins == gridfins) &&
            (identical(other.legs, legs) || other.legs == legs) &&
            (identical(other.reused, reused) || other.reused == reused) &&
            (identical(other.landSuccess, landSuccess) ||
                other.landSuccess == landSuccess) &&
            (identical(other.landingIntent, landingIntent) ||
                other.landingIntent == landingIntent) &&
            (identical(other.landingType, landingType) ||
                other.landingType == landingType) &&
            (identical(other.landingVehicle, landingVehicle) ||
                other.landingVehicle == landingVehicle));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      coreSerial,
      flight,
      block,
      gridfins,
      legs,
      reused,
      landSuccess,
      landingIntent,
      landingType,
      landingVehicle);

  @override
  String toString() {
    return 'NetworkCoreModel(coreSerial: $coreSerial, flight: $flight, block: $block, gridfins: $gridfins, legs: $legs, reused: $reused, landSuccess: $landSuccess, landingIntent: $landingIntent, landingType: $landingType, landingVehicle: $landingVehicle)';
  }
}

/// @nodoc
abstract mixin class $NetworkCoreModelCopyWith<$Res> {
  factory $NetworkCoreModelCopyWith(
          NetworkCoreModel value, $Res Function(NetworkCoreModel) _then) =
      _$NetworkCoreModelCopyWithImpl;

  @useResult
  $Res call(
      {@JsonKey(name: 'core_serial') String? coreSerial,
      int? flight,
      int? block,
      bool? gridfins,
      bool? legs,
      bool? reused,
      @JsonKey(name: 'land_success') bool? landSuccess,
      @JsonKey(name: 'landing_intent') bool? landingIntent,
      @JsonKey(name: 'landing_type') String? landingType,
      @JsonKey(name: 'landing_vehicle') String? landingVehicle});
}

/// @nodoc
class _$NetworkCoreModelCopyWithImpl<$Res>
    implements $NetworkCoreModelCopyWith<$Res> {
  _$NetworkCoreModelCopyWithImpl(this._self, this._then);

  final NetworkCoreModel _self;
  final $Res Function(NetworkCoreModel) _then;

  /// Create a copy of NetworkCoreModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coreSerial = freezed,
    Object? flight = freezed,
    Object? block = freezed,
    Object? gridfins = freezed,
    Object? legs = freezed,
    Object? reused = freezed,
    Object? landSuccess = freezed,
    Object? landingIntent = freezed,
    Object? landingType = freezed,
    Object? landingVehicle = freezed,
  }) {
    return _then(_self.copyWith(
      coreSerial: freezed == coreSerial
          ? _self.coreSerial
          : coreSerial // ignore: cast_nullable_to_non_nullable
              as String?,
      flight: freezed == flight
          ? _self.flight
          : flight // ignore: cast_nullable_to_non_nullable
              as int?,
      block: freezed == block
          ? _self.block
          : block // ignore: cast_nullable_to_non_nullable
              as int?,
      gridfins: freezed == gridfins
          ? _self.gridfins
          : gridfins // ignore: cast_nullable_to_non_nullable
              as bool?,
      legs: freezed == legs
          ? _self.legs
          : legs // ignore: cast_nullable_to_non_nullable
              as bool?,
      reused: freezed == reused
          ? _self.reused
          : reused // ignore: cast_nullable_to_non_nullable
              as bool?,
      landSuccess: freezed == landSuccess
          ? _self.landSuccess
          : landSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      landingIntent: freezed == landingIntent
          ? _self.landingIntent
          : landingIntent // ignore: cast_nullable_to_non_nullable
              as bool?,
      landingType: freezed == landingType
          ? _self.landingType
          : landingType // ignore: cast_nullable_to_non_nullable
              as String?,
      landingVehicle: freezed == landingVehicle
          ? _self.landingVehicle
          : landingVehicle // ignore: cast_nullable_to_non_nullable
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NetworkCoreModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NetworkCoreModel() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NetworkCoreModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkCoreModel():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NetworkCoreModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkCoreModel() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'core_serial') String? coreSerial,
            int? flight,
            int? block,
            bool? gridfins,
            bool? legs,
            bool? reused,
            @JsonKey(name: 'land_success') bool? landSuccess,
            @JsonKey(name: 'landing_intent') bool? landingIntent,
            @JsonKey(name: 'landing_type') String? landingType,
            @JsonKey(name: 'landing_vehicle') String? landingVehicle)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NetworkCoreModel() when $default != null:
        return $default(
            _that.coreSerial,
            _that.flight,
            _that.block,
            _that.gridfins,
            _that.legs,
            _that.reused,
            _that.landSuccess,
            _that.landingIntent,
            _that.landingType,
            _that.landingVehicle);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'core_serial') String? coreSerial,
            int? flight,
            int? block,
            bool? gridfins,
            bool? legs,
            bool? reused,
            @JsonKey(name: 'land_success') bool? landSuccess,
            @JsonKey(name: 'landing_intent') bool? landingIntent,
            @JsonKey(name: 'landing_type') String? landingType,
            @JsonKey(name: 'landing_vehicle') String? landingVehicle)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkCoreModel():
        return $default(
            _that.coreSerial,
            _that.flight,
            _that.block,
            _that.gridfins,
            _that.legs,
            _that.reused,
            _that.landSuccess,
            _that.landingIntent,
            _that.landingType,
            _that.landingVehicle);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'core_serial') String? coreSerial,
            int? flight,
            int? block,
            bool? gridfins,
            bool? legs,
            bool? reused,
            @JsonKey(name: 'land_success') bool? landSuccess,
            @JsonKey(name: 'landing_intent') bool? landingIntent,
            @JsonKey(name: 'landing_type') String? landingType,
            @JsonKey(name: 'landing_vehicle') String? landingVehicle)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkCoreModel() when $default != null:
        return $default(
            _that.coreSerial,
            _that.flight,
            _that.block,
            _that.gridfins,
            _that.legs,
            _that.reused,
            _that.landSuccess,
            _that.landingIntent,
            _that.landingType,
            _that.landingVehicle);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _NetworkCoreModel extends NetworkCoreModel {
  const _NetworkCoreModel(
      {@JsonKey(name: 'core_serial') this.coreSerial,
      this.flight,
      this.block,
      this.gridfins,
      this.legs,
      this.reused,
      @JsonKey(name: 'land_success') this.landSuccess,
      @JsonKey(name: 'landing_intent') this.landingIntent,
      @JsonKey(name: 'landing_type') this.landingType,
      @JsonKey(name: 'landing_vehicle') this.landingVehicle})
      : super._();

  factory _NetworkCoreModel.fromJson(Map<String, dynamic> json) =>
      _$NetworkCoreModelFromJson(json);

  @override
  @JsonKey(name: 'core_serial')
  final String? coreSerial;
  @override
  final int? flight;
  @override
  final int? block;
  @override
  final bool? gridfins;
  @override
  final bool? legs;
  @override
  final bool? reused;
  @override
  @JsonKey(name: 'land_success')
  final bool? landSuccess;
  @override
  @JsonKey(name: 'landing_intent')
  final bool? landingIntent;
  @override
  @JsonKey(name: 'landing_type')
  final String? landingType;
  @override
  @JsonKey(name: 'landing_vehicle')
  final String? landingVehicle;

  /// Create a copy of NetworkCoreModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NetworkCoreModelCopyWith<_NetworkCoreModel> get copyWith =>
      __$NetworkCoreModelCopyWithImpl<_NetworkCoreModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NetworkCoreModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NetworkCoreModel &&
            (identical(other.coreSerial, coreSerial) ||
                other.coreSerial == coreSerial) &&
            (identical(other.flight, flight) || other.flight == flight) &&
            (identical(other.block, block) || other.block == block) &&
            (identical(other.gridfins, gridfins) ||
                other.gridfins == gridfins) &&
            (identical(other.legs, legs) || other.legs == legs) &&
            (identical(other.reused, reused) || other.reused == reused) &&
            (identical(other.landSuccess, landSuccess) ||
                other.landSuccess == landSuccess) &&
            (identical(other.landingIntent, landingIntent) ||
                other.landingIntent == landingIntent) &&
            (identical(other.landingType, landingType) ||
                other.landingType == landingType) &&
            (identical(other.landingVehicle, landingVehicle) ||
                other.landingVehicle == landingVehicle));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      coreSerial,
      flight,
      block,
      gridfins,
      legs,
      reused,
      landSuccess,
      landingIntent,
      landingType,
      landingVehicle);

  @override
  String toString() {
    return 'NetworkCoreModel(coreSerial: $coreSerial, flight: $flight, block: $block, gridfins: $gridfins, legs: $legs, reused: $reused, landSuccess: $landSuccess, landingIntent: $landingIntent, landingType: $landingType, landingVehicle: $landingVehicle)';
  }
}

/// @nodoc
abstract mixin class _$NetworkCoreModelCopyWith<$Res>
    implements $NetworkCoreModelCopyWith<$Res> {
  factory _$NetworkCoreModelCopyWith(
          _NetworkCoreModel value, $Res Function(_NetworkCoreModel) _then) =
      __$NetworkCoreModelCopyWithImpl;

  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'core_serial') String? coreSerial,
      int? flight,
      int? block,
      bool? gridfins,
      bool? legs,
      bool? reused,
      @JsonKey(name: 'land_success') bool? landSuccess,
      @JsonKey(name: 'landing_intent') bool? landingIntent,
      @JsonKey(name: 'landing_type') String? landingType,
      @JsonKey(name: 'landing_vehicle') String? landingVehicle});
}

/// @nodoc
class __$NetworkCoreModelCopyWithImpl<$Res>
    implements _$NetworkCoreModelCopyWith<$Res> {
  __$NetworkCoreModelCopyWithImpl(this._self, this._then);

  final _NetworkCoreModel _self;
  final $Res Function(_NetworkCoreModel) _then;

  /// Create a copy of NetworkCoreModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? coreSerial = freezed,
    Object? flight = freezed,
    Object? block = freezed,
    Object? gridfins = freezed,
    Object? legs = freezed,
    Object? reused = freezed,
    Object? landSuccess = freezed,
    Object? landingIntent = freezed,
    Object? landingType = freezed,
    Object? landingVehicle = freezed,
  }) {
    return _then(_NetworkCoreModel(
      coreSerial: freezed == coreSerial
          ? _self.coreSerial
          : coreSerial // ignore: cast_nullable_to_non_nullable
              as String?,
      flight: freezed == flight
          ? _self.flight
          : flight // ignore: cast_nullable_to_non_nullable
              as int?,
      block: freezed == block
          ? _self.block
          : block // ignore: cast_nullable_to_non_nullable
              as int?,
      gridfins: freezed == gridfins
          ? _self.gridfins
          : gridfins // ignore: cast_nullable_to_non_nullable
              as bool?,
      legs: freezed == legs
          ? _self.legs
          : legs // ignore: cast_nullable_to_non_nullable
              as bool?,
      reused: freezed == reused
          ? _self.reused
          : reused // ignore: cast_nullable_to_non_nullable
              as bool?,
      landSuccess: freezed == landSuccess
          ? _self.landSuccess
          : landSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      landingIntent: freezed == landingIntent
          ? _self.landingIntent
          : landingIntent // ignore: cast_nullable_to_non_nullable
              as bool?,
      landingType: freezed == landingType
          ? _self.landingType
          : landingType // ignore: cast_nullable_to_non_nullable
              as String?,
      landingVehicle: freezed == landingVehicle
          ? _self.landingVehicle
          : landingVehicle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on

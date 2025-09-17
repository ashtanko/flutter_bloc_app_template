// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_payload_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NetworkPayloadModel {
  @JsonKey(name: 'payload_id')
  String? get payloadId;

  @JsonKey(name: 'norad_id')
  List<int>? get noradId;

  bool? get reused;

  List<String>? get customers;

  String? get nationality;

  String? get manufacturer;

  @JsonKey(name: 'payload_type')
  String? get payloadType;

  @JsonKey(name: 'payload_mass_kg')
  int? get payloadMassKg;

  @JsonKey(name: 'payload_mass_lbs')
  int? get payloadMassLbs;

  String? get orbit;

  /// Create a copy of NetworkPayloadModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NetworkPayloadModelCopyWith<NetworkPayloadModel> get copyWith =>
      _$NetworkPayloadModelCopyWithImpl<NetworkPayloadModel>(
          this as NetworkPayloadModel, _$identity);

  /// Serializes this NetworkPayloadModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NetworkPayloadModel &&
            (identical(other.payloadId, payloadId) ||
                other.payloadId == payloadId) &&
            const DeepCollectionEquality().equals(other.noradId, noradId) &&
            (identical(other.reused, reused) || other.reused == reused) &&
            const DeepCollectionEquality().equals(other.customers, customers) &&
            (identical(other.nationality, nationality) ||
                other.nationality == nationality) &&
            (identical(other.manufacturer, manufacturer) ||
                other.manufacturer == manufacturer) &&
            (identical(other.payloadType, payloadType) ||
                other.payloadType == payloadType) &&
            (identical(other.payloadMassKg, payloadMassKg) ||
                other.payloadMassKg == payloadMassKg) &&
            (identical(other.payloadMassLbs, payloadMassLbs) ||
                other.payloadMassLbs == payloadMassLbs) &&
            (identical(other.orbit, orbit) || other.orbit == orbit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      payloadId,
      const DeepCollectionEquality().hash(noradId),
      reused,
      const DeepCollectionEquality().hash(customers),
      nationality,
      manufacturer,
      payloadType,
      payloadMassKg,
      payloadMassLbs,
      orbit);

  @override
  String toString() {
    return 'NetworkPayloadModel(payloadId: $payloadId, noradId: $noradId, reused: $reused, customers: $customers, nationality: $nationality, manufacturer: $manufacturer, payloadType: $payloadType, payloadMassKg: $payloadMassKg, payloadMassLbs: $payloadMassLbs, orbit: $orbit)';
  }
}

/// @nodoc
abstract mixin class $NetworkPayloadModelCopyWith<$Res> {
  factory $NetworkPayloadModelCopyWith(
          NetworkPayloadModel value, $Res Function(NetworkPayloadModel) _then) =
      _$NetworkPayloadModelCopyWithImpl;

  @useResult
  $Res call(
      {@JsonKey(name: 'payload_id') String? payloadId,
      @JsonKey(name: 'norad_id') List<int>? noradId,
      bool? reused,
      List<String>? customers,
      String? nationality,
      String? manufacturer,
      @JsonKey(name: 'payload_type') String? payloadType,
      @JsonKey(name: 'payload_mass_kg') int? payloadMassKg,
      @JsonKey(name: 'payload_mass_lbs') int? payloadMassLbs,
      String? orbit});
}

/// @nodoc
class _$NetworkPayloadModelCopyWithImpl<$Res>
    implements $NetworkPayloadModelCopyWith<$Res> {
  _$NetworkPayloadModelCopyWithImpl(this._self, this._then);

  final NetworkPayloadModel _self;
  final $Res Function(NetworkPayloadModel) _then;

  /// Create a copy of NetworkPayloadModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payloadId = freezed,
    Object? noradId = freezed,
    Object? reused = freezed,
    Object? customers = freezed,
    Object? nationality = freezed,
    Object? manufacturer = freezed,
    Object? payloadType = freezed,
    Object? payloadMassKg = freezed,
    Object? payloadMassLbs = freezed,
    Object? orbit = freezed,
  }) {
    return _then(_self.copyWith(
      payloadId: freezed == payloadId
          ? _self.payloadId
          : payloadId // ignore: cast_nullable_to_non_nullable
              as String?,
      noradId: freezed == noradId
          ? _self.noradId
          : noradId // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      reused: freezed == reused
          ? _self.reused
          : reused // ignore: cast_nullable_to_non_nullable
              as bool?,
      customers: freezed == customers
          ? _self.customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      nationality: freezed == nationality
          ? _self.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String?,
      manufacturer: freezed == manufacturer
          ? _self.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String?,
      payloadType: freezed == payloadType
          ? _self.payloadType
          : payloadType // ignore: cast_nullable_to_non_nullable
              as String?,
      payloadMassKg: freezed == payloadMassKg
          ? _self.payloadMassKg
          : payloadMassKg // ignore: cast_nullable_to_non_nullable
              as int?,
      payloadMassLbs: freezed == payloadMassLbs
          ? _self.payloadMassLbs
          : payloadMassLbs // ignore: cast_nullable_to_non_nullable
              as int?,
      orbit: freezed == orbit
          ? _self.orbit
          : orbit // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [NetworkPayloadModel].
extension NetworkPayloadModelPatterns on NetworkPayloadModel {
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
    TResult Function(_NetworkPayloadModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NetworkPayloadModel() when $default != null:
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
    TResult Function(_NetworkPayloadModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkPayloadModel():
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
    TResult? Function(_NetworkPayloadModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkPayloadModel() when $default != null:
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
            @JsonKey(name: 'payload_id') String? payloadId,
            @JsonKey(name: 'norad_id') List<int>? noradId,
            bool? reused,
            List<String>? customers,
            String? nationality,
            String? manufacturer,
            @JsonKey(name: 'payload_type') String? payloadType,
            @JsonKey(name: 'payload_mass_kg') int? payloadMassKg,
            @JsonKey(name: 'payload_mass_lbs') int? payloadMassLbs,
            String? orbit)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NetworkPayloadModel() when $default != null:
        return $default(
            _that.payloadId,
            _that.noradId,
            _that.reused,
            _that.customers,
            _that.nationality,
            _that.manufacturer,
            _that.payloadType,
            _that.payloadMassKg,
            _that.payloadMassLbs,
            _that.orbit);
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
            @JsonKey(name: 'payload_id') String? payloadId,
            @JsonKey(name: 'norad_id') List<int>? noradId,
            bool? reused,
            List<String>? customers,
            String? nationality,
            String? manufacturer,
            @JsonKey(name: 'payload_type') String? payloadType,
            @JsonKey(name: 'payload_mass_kg') int? payloadMassKg,
            @JsonKey(name: 'payload_mass_lbs') int? payloadMassLbs,
            String? orbit)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkPayloadModel():
        return $default(
            _that.payloadId,
            _that.noradId,
            _that.reused,
            _that.customers,
            _that.nationality,
            _that.manufacturer,
            _that.payloadType,
            _that.payloadMassKg,
            _that.payloadMassLbs,
            _that.orbit);
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
            @JsonKey(name: 'payload_id') String? payloadId,
            @JsonKey(name: 'norad_id') List<int>? noradId,
            bool? reused,
            List<String>? customers,
            String? nationality,
            String? manufacturer,
            @JsonKey(name: 'payload_type') String? payloadType,
            @JsonKey(name: 'payload_mass_kg') int? payloadMassKg,
            @JsonKey(name: 'payload_mass_lbs') int? payloadMassLbs,
            String? orbit)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkPayloadModel() when $default != null:
        return $default(
            _that.payloadId,
            _that.noradId,
            _that.reused,
            _that.customers,
            _that.nationality,
            _that.manufacturer,
            _that.payloadType,
            _that.payloadMassKg,
            _that.payloadMassLbs,
            _that.orbit);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _NetworkPayloadModel extends NetworkPayloadModel {
  const _NetworkPayloadModel(
      {@JsonKey(name: 'payload_id') this.payloadId,
      @JsonKey(name: 'norad_id') final List<int>? noradId,
      this.reused,
      final List<String>? customers,
      this.nationality,
      this.manufacturer,
      @JsonKey(name: 'payload_type') this.payloadType,
      @JsonKey(name: 'payload_mass_kg') this.payloadMassKg,
      @JsonKey(name: 'payload_mass_lbs') this.payloadMassLbs,
      this.orbit})
      : _noradId = noradId,
        _customers = customers,
        super._();

  factory _NetworkPayloadModel.fromJson(Map<String, dynamic> json) =>
      _$NetworkPayloadModelFromJson(json);

  @override
  @JsonKey(name: 'payload_id')
  final String? payloadId;
  final List<int>? _noradId;

  @override
  @JsonKey(name: 'norad_id')
  List<int>? get noradId {
    final value = _noradId;
    if (value == null) return null;
    if (_noradId is EqualUnmodifiableListView) return _noradId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? reused;
  final List<String>? _customers;

  @override
  List<String>? get customers {
    final value = _customers;
    if (value == null) return null;
    if (_customers is EqualUnmodifiableListView) return _customers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? nationality;
  @override
  final String? manufacturer;
  @override
  @JsonKey(name: 'payload_type')
  final String? payloadType;
  @override
  @JsonKey(name: 'payload_mass_kg')
  final int? payloadMassKg;
  @override
  @JsonKey(name: 'payload_mass_lbs')
  final int? payloadMassLbs;
  @override
  final String? orbit;

  /// Create a copy of NetworkPayloadModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NetworkPayloadModelCopyWith<_NetworkPayloadModel> get copyWith =>
      __$NetworkPayloadModelCopyWithImpl<_NetworkPayloadModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NetworkPayloadModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NetworkPayloadModel &&
            (identical(other.payloadId, payloadId) ||
                other.payloadId == payloadId) &&
            const DeepCollectionEquality().equals(other._noradId, _noradId) &&
            (identical(other.reused, reused) || other.reused == reused) &&
            const DeepCollectionEquality()
                .equals(other._customers, _customers) &&
            (identical(other.nationality, nationality) ||
                other.nationality == nationality) &&
            (identical(other.manufacturer, manufacturer) ||
                other.manufacturer == manufacturer) &&
            (identical(other.payloadType, payloadType) ||
                other.payloadType == payloadType) &&
            (identical(other.payloadMassKg, payloadMassKg) ||
                other.payloadMassKg == payloadMassKg) &&
            (identical(other.payloadMassLbs, payloadMassLbs) ||
                other.payloadMassLbs == payloadMassLbs) &&
            (identical(other.orbit, orbit) || other.orbit == orbit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      payloadId,
      const DeepCollectionEquality().hash(_noradId),
      reused,
      const DeepCollectionEquality().hash(_customers),
      nationality,
      manufacturer,
      payloadType,
      payloadMassKg,
      payloadMassLbs,
      orbit);

  @override
  String toString() {
    return 'NetworkPayloadModel(payloadId: $payloadId, noradId: $noradId, reused: $reused, customers: $customers, nationality: $nationality, manufacturer: $manufacturer, payloadType: $payloadType, payloadMassKg: $payloadMassKg, payloadMassLbs: $payloadMassLbs, orbit: $orbit)';
  }
}

/// @nodoc
abstract mixin class _$NetworkPayloadModelCopyWith<$Res>
    implements $NetworkPayloadModelCopyWith<$Res> {
  factory _$NetworkPayloadModelCopyWith(_NetworkPayloadModel value,
          $Res Function(_NetworkPayloadModel) _then) =
      __$NetworkPayloadModelCopyWithImpl;

  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'payload_id') String? payloadId,
      @JsonKey(name: 'norad_id') List<int>? noradId,
      bool? reused,
      List<String>? customers,
      String? nationality,
      String? manufacturer,
      @JsonKey(name: 'payload_type') String? payloadType,
      @JsonKey(name: 'payload_mass_kg') int? payloadMassKg,
      @JsonKey(name: 'payload_mass_lbs') int? payloadMassLbs,
      String? orbit});
}

/// @nodoc
class __$NetworkPayloadModelCopyWithImpl<$Res>
    implements _$NetworkPayloadModelCopyWith<$Res> {
  __$NetworkPayloadModelCopyWithImpl(this._self, this._then);

  final _NetworkPayloadModel _self;
  final $Res Function(_NetworkPayloadModel) _then;

  /// Create a copy of NetworkPayloadModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? payloadId = freezed,
    Object? noradId = freezed,
    Object? reused = freezed,
    Object? customers = freezed,
    Object? nationality = freezed,
    Object? manufacturer = freezed,
    Object? payloadType = freezed,
    Object? payloadMassKg = freezed,
    Object? payloadMassLbs = freezed,
    Object? orbit = freezed,
  }) {
    return _then(_NetworkPayloadModel(
      payloadId: freezed == payloadId
          ? _self.payloadId
          : payloadId // ignore: cast_nullable_to_non_nullable
              as String?,
      noradId: freezed == noradId
          ? _self._noradId
          : noradId // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      reused: freezed == reused
          ? _self.reused
          : reused // ignore: cast_nullable_to_non_nullable
              as bool?,
      customers: freezed == customers
          ? _self._customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      nationality: freezed == nationality
          ? _self.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String?,
      manufacturer: freezed == manufacturer
          ? _self.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String?,
      payloadType: freezed == payloadType
          ? _self.payloadType
          : payloadType // ignore: cast_nullable_to_non_nullable
              as String?,
      payloadMassKg: freezed == payloadMassKg
          ? _self.payloadMassKg
          : payloadMassKg // ignore: cast_nullable_to_non_nullable
              as int?,
      payloadMassLbs: freezed == payloadMassLbs
          ? _self.payloadMassLbs
          : payloadMassLbs // ignore: cast_nullable_to_non_nullable
              as int?,
      orbit: freezed == orbit
          ? _self.orbit
          : orbit // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on

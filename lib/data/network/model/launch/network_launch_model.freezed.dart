// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_launch_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NetworkLaunchModel {
  @JsonKey(name: '_id')
  String? get id;
  @JsonKey(name: 'flight_number')
  int? get flightNumber;
  @JsonKey(name: 'mission_name')
  String? get missionName;
  @TimestampSerializer()
  @JsonKey(name: 'launch_date_utc')
  DateTime? get launchDate;
  @JsonKey(name: 'rocket')
  NetworkRocketModel? get rocket;
  @JsonKey(name: 'launch_success')
  bool get success;
  @JsonKey(name: 'links')
  NetworkLaunchLinksModel? get links;

  /// Create a copy of NetworkLaunchModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NetworkLaunchModelCopyWith<NetworkLaunchModel> get copyWith =>
      _$NetworkLaunchModelCopyWithImpl<NetworkLaunchModel>(
          this as NetworkLaunchModel, _$identity);

  /// Serializes this NetworkLaunchModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NetworkLaunchModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.flightNumber, flightNumber) ||
                other.flightNumber == flightNumber) &&
            (identical(other.missionName, missionName) ||
                other.missionName == missionName) &&
            (identical(other.launchDate, launchDate) ||
                other.launchDate == launchDate) &&
            (identical(other.rocket, rocket) || other.rocket == rocket) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.links, links) || other.links == links));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, flightNumber, missionName,
      launchDate, rocket, success, links);

  @override
  String toString() {
    return 'NetworkLaunchModel(id: $id, flightNumber: $flightNumber, missionName: $missionName, launchDate: $launchDate, rocket: $rocket, success: $success, links: $links)';
  }
}

/// @nodoc
abstract mixin class $NetworkLaunchModelCopyWith<$Res> {
  factory $NetworkLaunchModelCopyWith(
          NetworkLaunchModel value, $Res Function(NetworkLaunchModel) _then) =
      _$NetworkLaunchModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'flight_number') int? flightNumber,
      @JsonKey(name: 'mission_name') String? missionName,
      @TimestampSerializer()
      @JsonKey(name: 'launch_date_utc')
      DateTime? launchDate,
      @JsonKey(name: 'rocket') NetworkRocketModel? rocket,
      @JsonKey(name: 'launch_success') bool success,
      @JsonKey(name: 'links') NetworkLaunchLinksModel? links});

  $NetworkRocketModelCopyWith<$Res>? get rocket;
  $NetworkLaunchLinksModelCopyWith<$Res>? get links;
}

/// @nodoc
class _$NetworkLaunchModelCopyWithImpl<$Res>
    implements $NetworkLaunchModelCopyWith<$Res> {
  _$NetworkLaunchModelCopyWithImpl(this._self, this._then);

  final NetworkLaunchModel _self;
  final $Res Function(NetworkLaunchModel) _then;

  /// Create a copy of NetworkLaunchModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? flightNumber = freezed,
    Object? missionName = freezed,
    Object? launchDate = freezed,
    Object? rocket = freezed,
    Object? success = null,
    Object? links = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      flightNumber: freezed == flightNumber
          ? _self.flightNumber
          : flightNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      missionName: freezed == missionName
          ? _self.missionName
          : missionName // ignore: cast_nullable_to_non_nullable
              as String?,
      launchDate: freezed == launchDate
          ? _self.launchDate
          : launchDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rocket: freezed == rocket
          ? _self.rocket
          : rocket // ignore: cast_nullable_to_non_nullable
              as NetworkRocketModel?,
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      links: freezed == links
          ? _self.links
          : links // ignore: cast_nullable_to_non_nullable
              as NetworkLaunchLinksModel?,
    ));
  }

  /// Create a copy of NetworkLaunchModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NetworkRocketModelCopyWith<$Res>? get rocket {
    if (_self.rocket == null) {
      return null;
    }

    return $NetworkRocketModelCopyWith<$Res>(_self.rocket!, (value) {
      return _then(_self.copyWith(rocket: value));
    });
  }

  /// Create a copy of NetworkLaunchModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NetworkLaunchLinksModelCopyWith<$Res>? get links {
    if (_self.links == null) {
      return null;
    }

    return $NetworkLaunchLinksModelCopyWith<$Res>(_self.links!, (value) {
      return _then(_self.copyWith(links: value));
    });
  }
}

/// Adds pattern-matching-related methods to [NetworkLaunchModel].
extension NetworkLaunchModelPatterns on NetworkLaunchModel {
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
    TResult Function(_NetworkLaunchModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NetworkLaunchModel() when $default != null:
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
    TResult Function(_NetworkLaunchModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkLaunchModel():
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
    TResult? Function(_NetworkLaunchModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkLaunchModel() when $default != null:
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
            @JsonKey(name: '_id') String? id,
            @JsonKey(name: 'flight_number') int? flightNumber,
            @JsonKey(name: 'mission_name') String? missionName,
            @TimestampSerializer()
            @JsonKey(name: 'launch_date_utc')
            DateTime? launchDate,
            @JsonKey(name: 'rocket') NetworkRocketModel? rocket,
            @JsonKey(name: 'launch_success') bool success,
            @JsonKey(name: 'links') NetworkLaunchLinksModel? links)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NetworkLaunchModel() when $default != null:
        return $default(_that.id, _that.flightNumber, _that.missionName,
            _that.launchDate, _that.rocket, _that.success, _that.links);
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
            @JsonKey(name: '_id') String? id,
            @JsonKey(name: 'flight_number') int? flightNumber,
            @JsonKey(name: 'mission_name') String? missionName,
            @TimestampSerializer()
            @JsonKey(name: 'launch_date_utc')
            DateTime? launchDate,
            @JsonKey(name: 'rocket') NetworkRocketModel? rocket,
            @JsonKey(name: 'launch_success') bool success,
            @JsonKey(name: 'links') NetworkLaunchLinksModel? links)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkLaunchModel():
        return $default(_that.id, _that.flightNumber, _that.missionName,
            _that.launchDate, _that.rocket, _that.success, _that.links);
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
            @JsonKey(name: '_id') String? id,
            @JsonKey(name: 'flight_number') int? flightNumber,
            @JsonKey(name: 'mission_name') String? missionName,
            @TimestampSerializer()
            @JsonKey(name: 'launch_date_utc')
            DateTime? launchDate,
            @JsonKey(name: 'rocket') NetworkRocketModel? rocket,
            @JsonKey(name: 'launch_success') bool success,
            @JsonKey(name: 'links') NetworkLaunchLinksModel? links)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkLaunchModel() when $default != null:
        return $default(_that.id, _that.flightNumber, _that.missionName,
            _that.launchDate, _that.rocket, _that.success, _that.links);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _NetworkLaunchModel extends NetworkLaunchModel {
  const _NetworkLaunchModel(
      {@JsonKey(name: '_id') this.id,
      @JsonKey(name: 'flight_number') this.flightNumber,
      @JsonKey(name: 'mission_name') this.missionName,
      @TimestampSerializer() @JsonKey(name: 'launch_date_utc') this.launchDate,
      @JsonKey(name: 'rocket') this.rocket,
      @JsonKey(name: 'launch_success') this.success = false,
      @JsonKey(name: 'links') this.links})
      : super._();
  factory _NetworkLaunchModel.fromJson(Map<String, dynamic> json) =>
      _$NetworkLaunchModelFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @JsonKey(name: 'flight_number')
  final int? flightNumber;
  @override
  @JsonKey(name: 'mission_name')
  final String? missionName;
  @override
  @TimestampSerializer()
  @JsonKey(name: 'launch_date_utc')
  final DateTime? launchDate;
  @override
  @JsonKey(name: 'rocket')
  final NetworkRocketModel? rocket;
  @override
  @JsonKey(name: 'launch_success')
  final bool success;
  @override
  @JsonKey(name: 'links')
  final NetworkLaunchLinksModel? links;

  /// Create a copy of NetworkLaunchModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NetworkLaunchModelCopyWith<_NetworkLaunchModel> get copyWith =>
      __$NetworkLaunchModelCopyWithImpl<_NetworkLaunchModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NetworkLaunchModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NetworkLaunchModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.flightNumber, flightNumber) ||
                other.flightNumber == flightNumber) &&
            (identical(other.missionName, missionName) ||
                other.missionName == missionName) &&
            (identical(other.launchDate, launchDate) ||
                other.launchDate == launchDate) &&
            (identical(other.rocket, rocket) || other.rocket == rocket) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.links, links) || other.links == links));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, flightNumber, missionName,
      launchDate, rocket, success, links);

  @override
  String toString() {
    return 'NetworkLaunchModel(id: $id, flightNumber: $flightNumber, missionName: $missionName, launchDate: $launchDate, rocket: $rocket, success: $success, links: $links)';
  }
}

/// @nodoc
abstract mixin class _$NetworkLaunchModelCopyWith<$Res>
    implements $NetworkLaunchModelCopyWith<$Res> {
  factory _$NetworkLaunchModelCopyWith(
          _NetworkLaunchModel value, $Res Function(_NetworkLaunchModel) _then) =
      __$NetworkLaunchModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'flight_number') int? flightNumber,
      @JsonKey(name: 'mission_name') String? missionName,
      @TimestampSerializer()
      @JsonKey(name: 'launch_date_utc')
      DateTime? launchDate,
      @JsonKey(name: 'rocket') NetworkRocketModel? rocket,
      @JsonKey(name: 'launch_success') bool success,
      @JsonKey(name: 'links') NetworkLaunchLinksModel? links});

  @override
  $NetworkRocketModelCopyWith<$Res>? get rocket;
  @override
  $NetworkLaunchLinksModelCopyWith<$Res>? get links;
}

/// @nodoc
class __$NetworkLaunchModelCopyWithImpl<$Res>
    implements _$NetworkLaunchModelCopyWith<$Res> {
  __$NetworkLaunchModelCopyWithImpl(this._self, this._then);

  final _NetworkLaunchModel _self;
  final $Res Function(_NetworkLaunchModel) _then;

  /// Create a copy of NetworkLaunchModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? flightNumber = freezed,
    Object? missionName = freezed,
    Object? launchDate = freezed,
    Object? rocket = freezed,
    Object? success = null,
    Object? links = freezed,
  }) {
    return _then(_NetworkLaunchModel(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      flightNumber: freezed == flightNumber
          ? _self.flightNumber
          : flightNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      missionName: freezed == missionName
          ? _self.missionName
          : missionName // ignore: cast_nullable_to_non_nullable
              as String?,
      launchDate: freezed == launchDate
          ? _self.launchDate
          : launchDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rocket: freezed == rocket
          ? _self.rocket
          : rocket // ignore: cast_nullable_to_non_nullable
              as NetworkRocketModel?,
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      links: freezed == links
          ? _self.links
          : links // ignore: cast_nullable_to_non_nullable
              as NetworkLaunchLinksModel?,
    ));
  }

  /// Create a copy of NetworkLaunchModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NetworkRocketModelCopyWith<$Res>? get rocket {
    if (_self.rocket == null) {
      return null;
    }

    return $NetworkRocketModelCopyWith<$Res>(_self.rocket!, (value) {
      return _then(_self.copyWith(rocket: value));
    });
  }

  /// Create a copy of NetworkLaunchModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NetworkLaunchLinksModelCopyWith<$Res>? get links {
    if (_self.links == null) {
      return null;
    }

    return $NetworkLaunchLinksModelCopyWith<$Res>(_self.links!, (value) {
      return _then(_self.copyWith(links: value));
    });
  }
}

/// @nodoc
mixin _$NetworkRocketModel {
  @JsonKey(name: 'rocket_id')
  String get id;
  @JsonKey(name: 'rocket_type')
  String? get type;
  @JsonKey(name: 'rocket_name')
  String? get name;
  @JsonKey(name: 'first_stage')
  NetworkFirstStageModel? get firstStage;
  @JsonKey(name: 'second_stage')
  NetworkSecondStageModel? get secondStage;

  /// Create a copy of NetworkRocketModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NetworkRocketModelCopyWith<NetworkRocketModel> get copyWith =>
      _$NetworkRocketModelCopyWithImpl<NetworkRocketModel>(
          this as NetworkRocketModel, _$identity);

  /// Serializes this NetworkRocketModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NetworkRocketModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.firstStage, firstStage) ||
                other.firstStage == firstStage) &&
            (identical(other.secondStage, secondStage) ||
                other.secondStage == secondStage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, type, name, firstStage, secondStage);

  @override
  String toString() {
    return 'NetworkRocketModel(id: $id, type: $type, name: $name, firstStage: $firstStage, secondStage: $secondStage)';
  }
}

/// @nodoc
abstract mixin class $NetworkRocketModelCopyWith<$Res> {
  factory $NetworkRocketModelCopyWith(
          NetworkRocketModel value, $Res Function(NetworkRocketModel) _then) =
      _$NetworkRocketModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'rocket_id') String id,
      @JsonKey(name: 'rocket_type') String? type,
      @JsonKey(name: 'rocket_name') String? name,
      @JsonKey(name: 'first_stage') NetworkFirstStageModel? firstStage,
      @JsonKey(name: 'second_stage') NetworkSecondStageModel? secondStage});

  $NetworkFirstStageModelCopyWith<$Res>? get firstStage;
  $NetworkSecondStageModelCopyWith<$Res>? get secondStage;
}

/// @nodoc
class _$NetworkRocketModelCopyWithImpl<$Res>
    implements $NetworkRocketModelCopyWith<$Res> {
  _$NetworkRocketModelCopyWithImpl(this._self, this._then);

  final NetworkRocketModel _self;
  final $Res Function(NetworkRocketModel) _then;

  /// Create a copy of NetworkRocketModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = freezed,
    Object? name = freezed,
    Object? firstStage = freezed,
    Object? secondStage = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      firstStage: freezed == firstStage
          ? _self.firstStage
          : firstStage // ignore: cast_nullable_to_non_nullable
              as NetworkFirstStageModel?,
      secondStage: freezed == secondStage
          ? _self.secondStage
          : secondStage // ignore: cast_nullable_to_non_nullable
              as NetworkSecondStageModel?,
    ));
  }

  /// Create a copy of NetworkRocketModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NetworkFirstStageModelCopyWith<$Res>? get firstStage {
    if (_self.firstStage == null) {
      return null;
    }

    return $NetworkFirstStageModelCopyWith<$Res>(_self.firstStage!, (value) {
      return _then(_self.copyWith(firstStage: value));
    });
  }

  /// Create a copy of NetworkRocketModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NetworkSecondStageModelCopyWith<$Res>? get secondStage {
    if (_self.secondStage == null) {
      return null;
    }

    return $NetworkSecondStageModelCopyWith<$Res>(_self.secondStage!, (value) {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NetworkRocketModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NetworkRocketModel() when $default != null:
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
    TResult Function(_NetworkRocketModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkRocketModel():
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
    TResult? Function(_NetworkRocketModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkRocketModel() when $default != null:
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
            @JsonKey(name: 'rocket_id') String id,
            @JsonKey(name: 'rocket_type') String? type,
            @JsonKey(name: 'rocket_name') String? name,
            @JsonKey(name: 'first_stage') NetworkFirstStageModel? firstStage,
            @JsonKey(name: 'second_stage')
            NetworkSecondStageModel? secondStage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NetworkRocketModel() when $default != null:
        return $default(_that.id, _that.type, _that.name, _that.firstStage,
            _that.secondStage);
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
            @JsonKey(name: 'rocket_id') String id,
            @JsonKey(name: 'rocket_type') String? type,
            @JsonKey(name: 'rocket_name') String? name,
            @JsonKey(name: 'first_stage') NetworkFirstStageModel? firstStage,
            @JsonKey(name: 'second_stage') NetworkSecondStageModel? secondStage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkRocketModel():
        return $default(_that.id, _that.type, _that.name, _that.firstStage,
            _that.secondStage);
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
            @JsonKey(name: 'rocket_id') String id,
            @JsonKey(name: 'rocket_type') String? type,
            @JsonKey(name: 'rocket_name') String? name,
            @JsonKey(name: 'first_stage') NetworkFirstStageModel? firstStage,
            @JsonKey(name: 'second_stage')
            NetworkSecondStageModel? secondStage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkRocketModel() when $default != null:
        return $default(_that.id, _that.type, _that.name, _that.firstStage,
            _that.secondStage);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _NetworkRocketModel extends NetworkRocketModel {
  const _NetworkRocketModel(
      {@JsonKey(name: 'rocket_id') required this.id,
      @JsonKey(name: 'rocket_type') this.type,
      @JsonKey(name: 'rocket_name') this.name,
      @JsonKey(name: 'first_stage') this.firstStage,
      @JsonKey(name: 'second_stage') this.secondStage})
      : super._();
  factory _NetworkRocketModel.fromJson(Map<String, dynamic> json) =>
      _$NetworkRocketModelFromJson(json);

  @override
  @JsonKey(name: 'rocket_id')
  final String id;
  @override
  @JsonKey(name: 'rocket_type')
  final String? type;
  @override
  @JsonKey(name: 'rocket_name')
  final String? name;
  @override
  @JsonKey(name: 'first_stage')
  final NetworkFirstStageModel? firstStage;
  @override
  @JsonKey(name: 'second_stage')
  final NetworkSecondStageModel? secondStage;

  /// Create a copy of NetworkRocketModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NetworkRocketModelCopyWith<_NetworkRocketModel> get copyWith =>
      __$NetworkRocketModelCopyWithImpl<_NetworkRocketModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NetworkRocketModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NetworkRocketModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.firstStage, firstStage) ||
                other.firstStage == firstStage) &&
            (identical(other.secondStage, secondStage) ||
                other.secondStage == secondStage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, type, name, firstStage, secondStage);

  @override
  String toString() {
    return 'NetworkRocketModel(id: $id, type: $type, name: $name, firstStage: $firstStage, secondStage: $secondStage)';
  }
}

/// @nodoc
abstract mixin class _$NetworkRocketModelCopyWith<$Res>
    implements $NetworkRocketModelCopyWith<$Res> {
  factory _$NetworkRocketModelCopyWith(
          _NetworkRocketModel value, $Res Function(_NetworkRocketModel) _then) =
      __$NetworkRocketModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'rocket_id') String id,
      @JsonKey(name: 'rocket_type') String? type,
      @JsonKey(name: 'rocket_name') String? name,
      @JsonKey(name: 'first_stage') NetworkFirstStageModel? firstStage,
      @JsonKey(name: 'second_stage') NetworkSecondStageModel? secondStage});

  @override
  $NetworkFirstStageModelCopyWith<$Res>? get firstStage;
  @override
  $NetworkSecondStageModelCopyWith<$Res>? get secondStage;
}

/// @nodoc
class __$NetworkRocketModelCopyWithImpl<$Res>
    implements _$NetworkRocketModelCopyWith<$Res> {
  __$NetworkRocketModelCopyWithImpl(this._self, this._then);

  final _NetworkRocketModel _self;
  final $Res Function(_NetworkRocketModel) _then;

  /// Create a copy of NetworkRocketModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? type = freezed,
    Object? name = freezed,
    Object? firstStage = freezed,
    Object? secondStage = freezed,
  }) {
    return _then(_NetworkRocketModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      firstStage: freezed == firstStage
          ? _self.firstStage
          : firstStage // ignore: cast_nullable_to_non_nullable
              as NetworkFirstStageModel?,
      secondStage: freezed == secondStage
          ? _self.secondStage
          : secondStage // ignore: cast_nullable_to_non_nullable
              as NetworkSecondStageModel?,
    ));
  }

  /// Create a copy of NetworkRocketModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NetworkFirstStageModelCopyWith<$Res>? get firstStage {
    if (_self.firstStage == null) {
      return null;
    }

    return $NetworkFirstStageModelCopyWith<$Res>(_self.firstStage!, (value) {
      return _then(_self.copyWith(firstStage: value));
    });
  }

  /// Create a copy of NetworkRocketModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NetworkSecondStageModelCopyWith<$Res>? get secondStage {
    if (_self.secondStage == null) {
      return null;
    }

    return $NetworkSecondStageModelCopyWith<$Res>(_self.secondStage!, (value) {
      return _then(_self.copyWith(secondStage: value));
    });
  }
}

/// @nodoc
mixin _$NetworkLaunchLinksModel {
  @JsonKey(name: 'mission_patch')
  String? get missionPatch;
  @JsonKey(name: 'mission_patch_small')
  String? get missionPatchSmall;
  @JsonKey(name: 'article_link')
  String? get articleLink;
  @JsonKey(name: 'wikipedia')
  String? get wikipedia;
  @JsonKey(name: 'youtube_id')
  String? get youtubeId;
  @JsonKey(name: 'reddit_launch')
  String? get redditLaunch;
  @JsonKey(name: 'video_link')
  String? get videoLink;
  @JsonKey(name: 'presskit')
  String? get presskit;
  @JsonKey(name: 'flickr_images')
  List<String>? get flickrImages;

  /// Create a copy of NetworkLaunchLinksModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NetworkLaunchLinksModelCopyWith<NetworkLaunchLinksModel> get copyWith =>
      _$NetworkLaunchLinksModelCopyWithImpl<NetworkLaunchLinksModel>(
          this as NetworkLaunchLinksModel, _$identity);

  /// Serializes this NetworkLaunchLinksModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NetworkLaunchLinksModel &&
            (identical(other.missionPatch, missionPatch) ||
                other.missionPatch == missionPatch) &&
            (identical(other.missionPatchSmall, missionPatchSmall) ||
                other.missionPatchSmall == missionPatchSmall) &&
            (identical(other.articleLink, articleLink) ||
                other.articleLink == articleLink) &&
            (identical(other.wikipedia, wikipedia) ||
                other.wikipedia == wikipedia) &&
            (identical(other.youtubeId, youtubeId) ||
                other.youtubeId == youtubeId) &&
            (identical(other.redditLaunch, redditLaunch) ||
                other.redditLaunch == redditLaunch) &&
            (identical(other.videoLink, videoLink) ||
                other.videoLink == videoLink) &&
            (identical(other.presskit, presskit) ||
                other.presskit == presskit) &&
            const DeepCollectionEquality()
                .equals(other.flickrImages, flickrImages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      missionPatch,
      missionPatchSmall,
      articleLink,
      wikipedia,
      youtubeId,
      redditLaunch,
      videoLink,
      presskit,
      const DeepCollectionEquality().hash(flickrImages));

  @override
  String toString() {
    return 'NetworkLaunchLinksModel(missionPatch: $missionPatch, missionPatchSmall: $missionPatchSmall, articleLink: $articleLink, wikipedia: $wikipedia, youtubeId: $youtubeId, redditLaunch: $redditLaunch, videoLink: $videoLink, presskit: $presskit, flickrImages: $flickrImages)';
  }
}

/// @nodoc
abstract mixin class $NetworkLaunchLinksModelCopyWith<$Res> {
  factory $NetworkLaunchLinksModelCopyWith(NetworkLaunchLinksModel value,
          $Res Function(NetworkLaunchLinksModel) _then) =
      _$NetworkLaunchLinksModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'mission_patch') String? missionPatch,
      @JsonKey(name: 'mission_patch_small') String? missionPatchSmall,
      @JsonKey(name: 'article_link') String? articleLink,
      @JsonKey(name: 'wikipedia') String? wikipedia,
      @JsonKey(name: 'youtube_id') String? youtubeId,
      @JsonKey(name: 'reddit_launch') String? redditLaunch,
      @JsonKey(name: 'video_link') String? videoLink,
      @JsonKey(name: 'presskit') String? presskit,
      @JsonKey(name: 'flickr_images') List<String>? flickrImages});
}

/// @nodoc
class _$NetworkLaunchLinksModelCopyWithImpl<$Res>
    implements $NetworkLaunchLinksModelCopyWith<$Res> {
  _$NetworkLaunchLinksModelCopyWithImpl(this._self, this._then);

  final NetworkLaunchLinksModel _self;
  final $Res Function(NetworkLaunchLinksModel) _then;

  /// Create a copy of NetworkLaunchLinksModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? missionPatch = freezed,
    Object? missionPatchSmall = freezed,
    Object? articleLink = freezed,
    Object? wikipedia = freezed,
    Object? youtubeId = freezed,
    Object? redditLaunch = freezed,
    Object? videoLink = freezed,
    Object? presskit = freezed,
    Object? flickrImages = freezed,
  }) {
    return _then(_self.copyWith(
      missionPatch: freezed == missionPatch
          ? _self.missionPatch
          : missionPatch // ignore: cast_nullable_to_non_nullable
              as String?,
      missionPatchSmall: freezed == missionPatchSmall
          ? _self.missionPatchSmall
          : missionPatchSmall // ignore: cast_nullable_to_non_nullable
              as String?,
      articleLink: freezed == articleLink
          ? _self.articleLink
          : articleLink // ignore: cast_nullable_to_non_nullable
              as String?,
      wikipedia: freezed == wikipedia
          ? _self.wikipedia
          : wikipedia // ignore: cast_nullable_to_non_nullable
              as String?,
      youtubeId: freezed == youtubeId
          ? _self.youtubeId
          : youtubeId // ignore: cast_nullable_to_non_nullable
              as String?,
      redditLaunch: freezed == redditLaunch
          ? _self.redditLaunch
          : redditLaunch // ignore: cast_nullable_to_non_nullable
              as String?,
      videoLink: freezed == videoLink
          ? _self.videoLink
          : videoLink // ignore: cast_nullable_to_non_nullable
              as String?,
      presskit: freezed == presskit
          ? _self.presskit
          : presskit // ignore: cast_nullable_to_non_nullable
              as String?,
      flickrImages: freezed == flickrImages
          ? _self.flickrImages
          : flickrImages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [NetworkLaunchLinksModel].
extension NetworkLaunchLinksModelPatterns on NetworkLaunchLinksModel {
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
    TResult Function(_NetworkLaunchLinksModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NetworkLaunchLinksModel() when $default != null:
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
    TResult Function(_NetworkLaunchLinksModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkLaunchLinksModel():
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
    TResult? Function(_NetworkLaunchLinksModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkLaunchLinksModel() when $default != null:
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
            @JsonKey(name: 'mission_patch') String? missionPatch,
            @JsonKey(name: 'mission_patch_small') String? missionPatchSmall,
            @JsonKey(name: 'article_link') String? articleLink,
            @JsonKey(name: 'wikipedia') String? wikipedia,
            @JsonKey(name: 'youtube_id') String? youtubeId,
            @JsonKey(name: 'reddit_launch') String? redditLaunch,
            @JsonKey(name: 'video_link') String? videoLink,
            @JsonKey(name: 'presskit') String? presskit,
            @JsonKey(name: 'flickr_images') List<String>? flickrImages)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NetworkLaunchLinksModel() when $default != null:
        return $default(
            _that.missionPatch,
            _that.missionPatchSmall,
            _that.articleLink,
            _that.wikipedia,
            _that.youtubeId,
            _that.redditLaunch,
            _that.videoLink,
            _that.presskit,
            _that.flickrImages);
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
            @JsonKey(name: 'mission_patch') String? missionPatch,
            @JsonKey(name: 'mission_patch_small') String? missionPatchSmall,
            @JsonKey(name: 'article_link') String? articleLink,
            @JsonKey(name: 'wikipedia') String? wikipedia,
            @JsonKey(name: 'youtube_id') String? youtubeId,
            @JsonKey(name: 'reddit_launch') String? redditLaunch,
            @JsonKey(name: 'video_link') String? videoLink,
            @JsonKey(name: 'presskit') String? presskit,
            @JsonKey(name: 'flickr_images') List<String>? flickrImages)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkLaunchLinksModel():
        return $default(
            _that.missionPatch,
            _that.missionPatchSmall,
            _that.articleLink,
            _that.wikipedia,
            _that.youtubeId,
            _that.redditLaunch,
            _that.videoLink,
            _that.presskit,
            _that.flickrImages);
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
            @JsonKey(name: 'mission_patch') String? missionPatch,
            @JsonKey(name: 'mission_patch_small') String? missionPatchSmall,
            @JsonKey(name: 'article_link') String? articleLink,
            @JsonKey(name: 'wikipedia') String? wikipedia,
            @JsonKey(name: 'youtube_id') String? youtubeId,
            @JsonKey(name: 'reddit_launch') String? redditLaunch,
            @JsonKey(name: 'video_link') String? videoLink,
            @JsonKey(name: 'presskit') String? presskit,
            @JsonKey(name: 'flickr_images') List<String>? flickrImages)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkLaunchLinksModel() when $default != null:
        return $default(
            _that.missionPatch,
            _that.missionPatchSmall,
            _that.articleLink,
            _that.wikipedia,
            _that.youtubeId,
            _that.redditLaunch,
            _that.videoLink,
            _that.presskit,
            _that.flickrImages);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _NetworkLaunchLinksModel extends NetworkLaunchLinksModel {
  const _NetworkLaunchLinksModel(
      {@JsonKey(name: 'mission_patch') this.missionPatch,
      @JsonKey(name: 'mission_patch_small') this.missionPatchSmall,
      @JsonKey(name: 'article_link') this.articleLink,
      @JsonKey(name: 'wikipedia') this.wikipedia,
      @JsonKey(name: 'youtube_id') this.youtubeId,
      @JsonKey(name: 'reddit_launch') this.redditLaunch,
      @JsonKey(name: 'video_link') this.videoLink,
      @JsonKey(name: 'presskit') this.presskit,
      @JsonKey(name: 'flickr_images') final List<String>? flickrImages})
      : _flickrImages = flickrImages,
        super._();
  factory _NetworkLaunchLinksModel.fromJson(Map<String, dynamic> json) =>
      _$NetworkLaunchLinksModelFromJson(json);

  @override
  @JsonKey(name: 'mission_patch')
  final String? missionPatch;
  @override
  @JsonKey(name: 'mission_patch_small')
  final String? missionPatchSmall;
  @override
  @JsonKey(name: 'article_link')
  final String? articleLink;
  @override
  @JsonKey(name: 'wikipedia')
  final String? wikipedia;
  @override
  @JsonKey(name: 'youtube_id')
  final String? youtubeId;
  @override
  @JsonKey(name: 'reddit_launch')
  final String? redditLaunch;
  @override
  @JsonKey(name: 'video_link')
  final String? videoLink;
  @override
  @JsonKey(name: 'presskit')
  final String? presskit;
  final List<String>? _flickrImages;
  @override
  @JsonKey(name: 'flickr_images')
  List<String>? get flickrImages {
    final value = _flickrImages;
    if (value == null) return null;
    if (_flickrImages is EqualUnmodifiableListView) return _flickrImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of NetworkLaunchLinksModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NetworkLaunchLinksModelCopyWith<_NetworkLaunchLinksModel> get copyWith =>
      __$NetworkLaunchLinksModelCopyWithImpl<_NetworkLaunchLinksModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NetworkLaunchLinksModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NetworkLaunchLinksModel &&
            (identical(other.missionPatch, missionPatch) ||
                other.missionPatch == missionPatch) &&
            (identical(other.missionPatchSmall, missionPatchSmall) ||
                other.missionPatchSmall == missionPatchSmall) &&
            (identical(other.articleLink, articleLink) ||
                other.articleLink == articleLink) &&
            (identical(other.wikipedia, wikipedia) ||
                other.wikipedia == wikipedia) &&
            (identical(other.youtubeId, youtubeId) ||
                other.youtubeId == youtubeId) &&
            (identical(other.redditLaunch, redditLaunch) ||
                other.redditLaunch == redditLaunch) &&
            (identical(other.videoLink, videoLink) ||
                other.videoLink == videoLink) &&
            (identical(other.presskit, presskit) ||
                other.presskit == presskit) &&
            const DeepCollectionEquality()
                .equals(other._flickrImages, _flickrImages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      missionPatch,
      missionPatchSmall,
      articleLink,
      wikipedia,
      youtubeId,
      redditLaunch,
      videoLink,
      presskit,
      const DeepCollectionEquality().hash(_flickrImages));

  @override
  String toString() {
    return 'NetworkLaunchLinksModel(missionPatch: $missionPatch, missionPatchSmall: $missionPatchSmall, articleLink: $articleLink, wikipedia: $wikipedia, youtubeId: $youtubeId, redditLaunch: $redditLaunch, videoLink: $videoLink, presskit: $presskit, flickrImages: $flickrImages)';
  }
}

/// @nodoc
abstract mixin class _$NetworkLaunchLinksModelCopyWith<$Res>
    implements $NetworkLaunchLinksModelCopyWith<$Res> {
  factory _$NetworkLaunchLinksModelCopyWith(_NetworkLaunchLinksModel value,
          $Res Function(_NetworkLaunchLinksModel) _then) =
      __$NetworkLaunchLinksModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'mission_patch') String? missionPatch,
      @JsonKey(name: 'mission_patch_small') String? missionPatchSmall,
      @JsonKey(name: 'article_link') String? articleLink,
      @JsonKey(name: 'wikipedia') String? wikipedia,
      @JsonKey(name: 'youtube_id') String? youtubeId,
      @JsonKey(name: 'reddit_launch') String? redditLaunch,
      @JsonKey(name: 'video_link') String? videoLink,
      @JsonKey(name: 'presskit') String? presskit,
      @JsonKey(name: 'flickr_images') List<String>? flickrImages});
}

/// @nodoc
class __$NetworkLaunchLinksModelCopyWithImpl<$Res>
    implements _$NetworkLaunchLinksModelCopyWith<$Res> {
  __$NetworkLaunchLinksModelCopyWithImpl(this._self, this._then);

  final _NetworkLaunchLinksModel _self;
  final $Res Function(_NetworkLaunchLinksModel) _then;

  /// Create a copy of NetworkLaunchLinksModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? missionPatch = freezed,
    Object? missionPatchSmall = freezed,
    Object? articleLink = freezed,
    Object? wikipedia = freezed,
    Object? youtubeId = freezed,
    Object? redditLaunch = freezed,
    Object? videoLink = freezed,
    Object? presskit = freezed,
    Object? flickrImages = freezed,
  }) {
    return _then(_NetworkLaunchLinksModel(
      missionPatch: freezed == missionPatch
          ? _self.missionPatch
          : missionPatch // ignore: cast_nullable_to_non_nullable
              as String?,
      missionPatchSmall: freezed == missionPatchSmall
          ? _self.missionPatchSmall
          : missionPatchSmall // ignore: cast_nullable_to_non_nullable
              as String?,
      articleLink: freezed == articleLink
          ? _self.articleLink
          : articleLink // ignore: cast_nullable_to_non_nullable
              as String?,
      wikipedia: freezed == wikipedia
          ? _self.wikipedia
          : wikipedia // ignore: cast_nullable_to_non_nullable
              as String?,
      youtubeId: freezed == youtubeId
          ? _self.youtubeId
          : youtubeId // ignore: cast_nullable_to_non_nullable
              as String?,
      redditLaunch: freezed == redditLaunch
          ? _self.redditLaunch
          : redditLaunch // ignore: cast_nullable_to_non_nullable
              as String?,
      videoLink: freezed == videoLink
          ? _self.videoLink
          : videoLink // ignore: cast_nullable_to_non_nullable
              as String?,
      presskit: freezed == presskit
          ? _self.presskit
          : presskit // ignore: cast_nullable_to_non_nullable
              as String?,
      flickrImages: freezed == flickrImages
          ? _self._flickrImages
          : flickrImages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

// dart format on

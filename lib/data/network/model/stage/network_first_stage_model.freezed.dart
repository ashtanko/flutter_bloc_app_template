// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_first_stage_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NetworkFirstStageModel {
  List<NetworkCoreModel>? get cores;

  /// Create a copy of NetworkFirstStageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NetworkFirstStageModelCopyWith<NetworkFirstStageModel> get copyWith =>
      _$NetworkFirstStageModelCopyWithImpl<NetworkFirstStageModel>(
          this as NetworkFirstStageModel, _$identity);

  /// Serializes this NetworkFirstStageModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NetworkFirstStageModel &&
            const DeepCollectionEquality().equals(other.cores, cores));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(cores));

  @override
  String toString() {
    return 'NetworkFirstStageModel(cores: $cores)';
  }
}

/// @nodoc
abstract mixin class $NetworkFirstStageModelCopyWith<$Res> {
  factory $NetworkFirstStageModelCopyWith(NetworkFirstStageModel value,
          $Res Function(NetworkFirstStageModel) _then) =
      _$NetworkFirstStageModelCopyWithImpl;

  @useResult
  $Res call({List<NetworkCoreModel>? cores});
}

/// @nodoc
class _$NetworkFirstStageModelCopyWithImpl<$Res>
    implements $NetworkFirstStageModelCopyWith<$Res> {
  _$NetworkFirstStageModelCopyWithImpl(this._self, this._then);

  final NetworkFirstStageModel _self;
  final $Res Function(NetworkFirstStageModel) _then;

  /// Create a copy of NetworkFirstStageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cores = freezed,
  }) {
    return _then(_self.copyWith(
      cores: freezed == cores
          ? _self.cores
          : cores // ignore: cast_nullable_to_non_nullable
              as List<NetworkCoreModel>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [NetworkFirstStageModel].
extension NetworkFirstStageModelPatterns on NetworkFirstStageModel {
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
    TResult Function(_NetworkFirstStageModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NetworkFirstStageModel() when $default != null:
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
    TResult Function(_NetworkFirstStageModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkFirstStageModel():
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
    TResult? Function(_NetworkFirstStageModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkFirstStageModel() when $default != null:
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
    TResult Function(List<NetworkCoreModel>? cores)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NetworkFirstStageModel() when $default != null:
        return $default(_that.cores);
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
    TResult Function(List<NetworkCoreModel>? cores) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkFirstStageModel():
        return $default(_that.cores);
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
    TResult? Function(List<NetworkCoreModel>? cores)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkFirstStageModel() when $default != null:
        return $default(_that.cores);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _NetworkFirstStageModel extends NetworkFirstStageModel {
  const _NetworkFirstStageModel({final List<NetworkCoreModel>? cores})
      : _cores = cores,
        super._();

  factory _NetworkFirstStageModel.fromJson(Map<String, dynamic> json) =>
      _$NetworkFirstStageModelFromJson(json);

  final List<NetworkCoreModel>? _cores;

  @override
  List<NetworkCoreModel>? get cores {
    final value = _cores;
    if (value == null) return null;
    if (_cores is EqualUnmodifiableListView) return _cores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of NetworkFirstStageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NetworkFirstStageModelCopyWith<_NetworkFirstStageModel> get copyWith =>
      __$NetworkFirstStageModelCopyWithImpl<_NetworkFirstStageModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NetworkFirstStageModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NetworkFirstStageModel &&
            const DeepCollectionEquality().equals(other._cores, _cores));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cores));

  @override
  String toString() {
    return 'NetworkFirstStageModel(cores: $cores)';
  }
}

/// @nodoc
abstract mixin class _$NetworkFirstStageModelCopyWith<$Res>
    implements $NetworkFirstStageModelCopyWith<$Res> {
  factory _$NetworkFirstStageModelCopyWith(_NetworkFirstStageModel value,
          $Res Function(_NetworkFirstStageModel) _then) =
      __$NetworkFirstStageModelCopyWithImpl;

  @override
  @useResult
  $Res call({List<NetworkCoreModel>? cores});
}

/// @nodoc
class __$NetworkFirstStageModelCopyWithImpl<$Res>
    implements _$NetworkFirstStageModelCopyWith<$Res> {
  __$NetworkFirstStageModelCopyWithImpl(this._self, this._then);

  final _NetworkFirstStageModel _self;
  final $Res Function(_NetworkFirstStageModel) _then;

  /// Create a copy of NetworkFirstStageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? cores = freezed,
  }) {
    return _then(_NetworkFirstStageModel(
      cores: freezed == cores
          ? _self._cores
          : cores // ignore: cast_nullable_to_non_nullable
              as List<NetworkCoreModel>?,
    ));
  }
}

// dart format on

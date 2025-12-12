// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_second_stage_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NetworkSecondStageModel {
  int? get block;
  List<NetworkPayloadModel>? get payloads;

  /// Create a copy of NetworkSecondStageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NetworkSecondStageModelCopyWith<NetworkSecondStageModel> get copyWith =>
      _$NetworkSecondStageModelCopyWithImpl<NetworkSecondStageModel>(
          this as NetworkSecondStageModel, _$identity);

  /// Serializes this NetworkSecondStageModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NetworkSecondStageModel &&
            (identical(other.block, block) || other.block == block) &&
            const DeepCollectionEquality().equals(other.payloads, payloads));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, block, const DeepCollectionEquality().hash(payloads));

  @override
  String toString() {
    return 'NetworkSecondStageModel(block: $block, payloads: $payloads)';
  }
}

/// @nodoc
abstract mixin class $NetworkSecondStageModelCopyWith<$Res> {
  factory $NetworkSecondStageModelCopyWith(NetworkSecondStageModel value,
          $Res Function(NetworkSecondStageModel) _then) =
      _$NetworkSecondStageModelCopyWithImpl;
  @useResult
  $Res call({int? block, List<NetworkPayloadModel>? payloads});
}

/// @nodoc
class _$NetworkSecondStageModelCopyWithImpl<$Res>
    implements $NetworkSecondStageModelCopyWith<$Res> {
  _$NetworkSecondStageModelCopyWithImpl(this._self, this._then);

  final NetworkSecondStageModel _self;
  final $Res Function(NetworkSecondStageModel) _then;

  /// Create a copy of NetworkSecondStageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? block = freezed,
    Object? payloads = freezed,
  }) {
    return _then(_self.copyWith(
      block: freezed == block
          ? _self.block
          : block // ignore: cast_nullable_to_non_nullable
              as int?,
      payloads: freezed == payloads
          ? _self.payloads
          : payloads // ignore: cast_nullable_to_non_nullable
              as List<NetworkPayloadModel>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [NetworkSecondStageModel].
extension NetworkSecondStageModelPatterns on NetworkSecondStageModel {
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
    TResult Function(_NetworkSecondStageModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NetworkSecondStageModel() when $default != null:
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
    TResult Function(_NetworkSecondStageModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkSecondStageModel():
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
    TResult? Function(_NetworkSecondStageModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkSecondStageModel() when $default != null:
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
    TResult Function(int? block, List<NetworkPayloadModel>? payloads)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NetworkSecondStageModel() when $default != null:
        return $default(_that.block, _that.payloads);
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
    TResult Function(int? block, List<NetworkPayloadModel>? payloads) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkSecondStageModel():
        return $default(_that.block, _that.payloads);
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
    TResult? Function(int? block, List<NetworkPayloadModel>? payloads)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkSecondStageModel() when $default != null:
        return $default(_that.block, _that.payloads);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _NetworkSecondStageModel extends NetworkSecondStageModel {
  const _NetworkSecondStageModel(
      {this.block, final List<NetworkPayloadModel>? payloads})
      : _payloads = payloads,
        super._();
  factory _NetworkSecondStageModel.fromJson(Map<String, dynamic> json) =>
      _$NetworkSecondStageModelFromJson(json);

  @override
  final int? block;
  final List<NetworkPayloadModel>? _payloads;
  @override
  List<NetworkPayloadModel>? get payloads {
    final value = _payloads;
    if (value == null) return null;
    if (_payloads is EqualUnmodifiableListView) return _payloads;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of NetworkSecondStageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NetworkSecondStageModelCopyWith<_NetworkSecondStageModel> get copyWith =>
      __$NetworkSecondStageModelCopyWithImpl<_NetworkSecondStageModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NetworkSecondStageModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NetworkSecondStageModel &&
            (identical(other.block, block) || other.block == block) &&
            const DeepCollectionEquality().equals(other._payloads, _payloads));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, block, const DeepCollectionEquality().hash(_payloads));

  @override
  String toString() {
    return 'NetworkSecondStageModel(block: $block, payloads: $payloads)';
  }
}

/// @nodoc
abstract mixin class _$NetworkSecondStageModelCopyWith<$Res>
    implements $NetworkSecondStageModelCopyWith<$Res> {
  factory _$NetworkSecondStageModelCopyWith(_NetworkSecondStageModel value,
          $Res Function(_NetworkSecondStageModel) _then) =
      __$NetworkSecondStageModelCopyWithImpl;
  @override
  @useResult
  $Res call({int? block, List<NetworkPayloadModel>? payloads});
}

/// @nodoc
class __$NetworkSecondStageModelCopyWithImpl<$Res>
    implements _$NetworkSecondStageModelCopyWith<$Res> {
  __$NetworkSecondStageModelCopyWithImpl(this._self, this._then);

  final _NetworkSecondStageModel _self;
  final $Res Function(_NetworkSecondStageModel) _then;

  /// Create a copy of NetworkSecondStageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? block = freezed,
    Object? payloads = freezed,
  }) {
    return _then(_NetworkSecondStageModel(
      block: freezed == block
          ? _self.block
          : block // ignore: cast_nullable_to_non_nullable
              as int?,
      payloads: freezed == payloads
          ? _self._payloads
          : payloads // ignore: cast_nullable_to_non_nullable
              as List<NetworkPayloadModel>?,
    ));
  }
}

// dart format on

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'launch_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LaunchEvent {
  int get flightNumber;

  /// Create a copy of LaunchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LaunchEventCopyWith<LaunchEvent> get copyWith =>
      _$LaunchEventCopyWithImpl<LaunchEvent>(this as LaunchEvent, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LaunchEvent &&
            (identical(other.flightNumber, flightNumber) ||
                other.flightNumber == flightNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, flightNumber);

  @override
  String toString() {
    return 'LaunchEvent(flightNumber: $flightNumber)';
  }
}

/// @nodoc
abstract mixin class $LaunchEventCopyWith<$Res> {
  factory $LaunchEventCopyWith(
          LaunchEvent value, $Res Function(LaunchEvent) _then) =
      _$LaunchEventCopyWithImpl;

  @useResult
  $Res call({int flightNumber});
}

/// @nodoc
class _$LaunchEventCopyWithImpl<$Res> implements $LaunchEventCopyWith<$Res> {
  _$LaunchEventCopyWithImpl(this._self, this._then);

  final LaunchEvent _self;
  final $Res Function(LaunchEvent) _then;

  /// Create a copy of LaunchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flightNumber = null,
  }) {
    return _then(_self.copyWith(
      flightNumber: null == flightNumber
          ? _self.flightNumber
          : flightNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [LaunchEvent].
extension LaunchEventPatterns on LaunchEvent {
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
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LaunchLoadEvent value)? load,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case LaunchLoadEvent() when load != null:
        return load(_that);
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
  TResult map<TResult extends Object?>({
    required TResult Function(LaunchLoadEvent value) load,
  }) {
    final _that = this;
    switch (_that) {
      case LaunchLoadEvent():
        return load(_that);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LaunchLoadEvent value)? load,
  }) {
    final _that = this;
    switch (_that) {
      case LaunchLoadEvent() when load != null:
        return load(_that);
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
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int flightNumber)? load,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case LaunchLoadEvent() when load != null:
        return load(_that.flightNumber);
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
  TResult when<TResult extends Object?>({
    required TResult Function(int flightNumber) load,
  }) {
    final _that = this;
    switch (_that) {
      case LaunchLoadEvent():
        return load(_that.flightNumber);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int flightNumber)? load,
  }) {
    final _that = this;
    switch (_that) {
      case LaunchLoadEvent() when load != null:
        return load(_that.flightNumber);
      case _:
        return null;
    }
  }
}

/// @nodoc

class LaunchLoadEvent implements LaunchEvent {
  const LaunchLoadEvent({this.flightNumber = -1});

  @override
  @JsonKey()
  final int flightNumber;

  /// Create a copy of LaunchEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LaunchLoadEventCopyWith<LaunchLoadEvent> get copyWith =>
      _$LaunchLoadEventCopyWithImpl<LaunchLoadEvent>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LaunchLoadEvent &&
            (identical(other.flightNumber, flightNumber) ||
                other.flightNumber == flightNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, flightNumber);

  @override
  String toString() {
    return 'LaunchEvent.load(flightNumber: $flightNumber)';
  }
}

/// @nodoc
abstract mixin class $LaunchLoadEventCopyWith<$Res>
    implements $LaunchEventCopyWith<$Res> {
  factory $LaunchLoadEventCopyWith(
          LaunchLoadEvent value, $Res Function(LaunchLoadEvent) _then) =
      _$LaunchLoadEventCopyWithImpl;
  @override
  @useResult
  $Res call({int flightNumber});
}

/// @nodoc
class _$LaunchLoadEventCopyWithImpl<$Res>
    implements $LaunchLoadEventCopyWith<$Res> {
  _$LaunchLoadEventCopyWithImpl(this._self, this._then);

  final LaunchLoadEvent _self;
  final $Res Function(LaunchLoadEvent) _then;

  /// Create a copy of LaunchEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? flightNumber = null,
  }) {
    return _then(LaunchLoadEvent(
      flightNumber: null == flightNumber
          ? _self.flightNumber
          : flightNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$LaunchState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LaunchState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LaunchState()';
  }
}

/// @nodoc
class $LaunchStateCopyWith<$Res> {
  $LaunchStateCopyWith(LaunchState _, $Res Function(LaunchState) __);
}

/// Adds pattern-matching-related methods to [LaunchState].
extension LaunchStatePatterns on LaunchState {
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
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LaunchLoadingState value)? loading,
    TResult Function(LaunchSuccessState value)? success,
    TResult Function(LaunchErrorState value)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case LaunchLoadingState() when loading != null:
        return loading(_that);
      case LaunchSuccessState() when success != null:
        return success(_that);
      case LaunchErrorState() when error != null:
        return error(_that);
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
  TResult map<TResult extends Object?>({
    required TResult Function(LaunchLoadingState value) loading,
    required TResult Function(LaunchSuccessState value) success,
    required TResult Function(LaunchErrorState value) error,
  }) {
    final _that = this;
    switch (_that) {
      case LaunchLoadingState():
        return loading(_that);
      case LaunchSuccessState():
        return success(_that);
      case LaunchErrorState():
        return error(_that);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LaunchLoadingState value)? loading,
    TResult? Function(LaunchSuccessState value)? success,
    TResult? Function(LaunchErrorState value)? error,
  }) {
    final _that = this;
    switch (_that) {
      case LaunchLoadingState() when loading != null:
        return loading(_that);
      case LaunchSuccessState() when success != null:
        return success(_that);
      case LaunchErrorState() when error != null:
        return error(_that);
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
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(LaunchFullResource launch)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case LaunchLoadingState() when loading != null:
        return loading();
      case LaunchSuccessState() when success != null:
        return success(_that.launch);
      case LaunchErrorState() when error != null:
        return error();
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
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(LaunchFullResource launch) success,
    required TResult Function() error,
  }) {
    final _that = this;
    switch (_that) {
      case LaunchLoadingState():
        return loading();
      case LaunchSuccessState():
        return success(_that.launch);
      case LaunchErrorState():
        return error();
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(LaunchFullResource launch)? success,
    TResult? Function()? error,
  }) {
    final _that = this;
    switch (_that) {
      case LaunchLoadingState() when loading != null:
        return loading();
      case LaunchSuccessState() when success != null:
        return success(_that.launch);
      case LaunchErrorState() when error != null:
        return error();
      case _:
        return null;
    }
  }
}

/// @nodoc

class LaunchLoadingState implements LaunchState {
  const LaunchLoadingState();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LaunchLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LaunchState.loading()';
  }
}

/// @nodoc

class LaunchSuccessState implements LaunchState {
  const LaunchSuccessState({required this.launch});

  final LaunchFullResource launch;

  /// Create a copy of LaunchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LaunchSuccessStateCopyWith<LaunchSuccessState> get copyWith =>
      _$LaunchSuccessStateCopyWithImpl<LaunchSuccessState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LaunchSuccessState &&
            (identical(other.launch, launch) || other.launch == launch));
  }

  @override
  int get hashCode => Object.hash(runtimeType, launch);

  @override
  String toString() {
    return 'LaunchState.success(launch: $launch)';
  }
}

/// @nodoc
abstract mixin class $LaunchSuccessStateCopyWith<$Res>
    implements $LaunchStateCopyWith<$Res> {
  factory $LaunchSuccessStateCopyWith(
          LaunchSuccessState value, $Res Function(LaunchSuccessState) _then) =
      _$LaunchSuccessStateCopyWithImpl;
  @useResult
  $Res call({LaunchFullResource launch});
}

/// @nodoc
class _$LaunchSuccessStateCopyWithImpl<$Res>
    implements $LaunchSuccessStateCopyWith<$Res> {
  _$LaunchSuccessStateCopyWithImpl(this._self, this._then);

  final LaunchSuccessState _self;
  final $Res Function(LaunchSuccessState) _then;

  /// Create a copy of LaunchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? launch = null,
  }) {
    return _then(LaunchSuccessState(
      launch: null == launch
          ? _self.launch
          : launch // ignore: cast_nullable_to_non_nullable
              as LaunchFullResource,
    ));
  }
}

/// @nodoc

class LaunchErrorState implements LaunchState {
  const LaunchErrorState();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LaunchErrorState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LaunchState.error()';
  }
}

// dart format on

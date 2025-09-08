// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cores_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CoresEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CoresEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CoresEvent()';
  }
}

/// @nodoc
class $CoresEventCopyWith<$Res> {
  $CoresEventCopyWith(CoresEvent _, $Res Function(CoresEvent) __);
}

/// Adds pattern-matching-related methods to [CoresEvent].
extension CoresEventPatterns on CoresEvent {
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
    TResult Function(CoresLoadEvent value)? load,
    TResult Function(CoresRefreshEvent value)? refresh,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case CoresLoadEvent() when load != null:
        return load(_that);
      case CoresRefreshEvent() when refresh != null:
        return refresh(_that);
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
    required TResult Function(CoresLoadEvent value) load,
    required TResult Function(CoresRefreshEvent value) refresh,
  }) {
    final _that = this;
    switch (_that) {
      case CoresLoadEvent():
        return load(_that);
      case CoresRefreshEvent():
        return refresh(_that);
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
    TResult? Function(CoresLoadEvent value)? load,
    TResult? Function(CoresRefreshEvent value)? refresh,
  }) {
    final _that = this;
    switch (_that) {
      case CoresLoadEvent() when load != null:
        return load(_that);
      case CoresRefreshEvent() when refresh != null:
        return refresh(_that);
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
    TResult Function(bool reload)? load,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case CoresLoadEvent() when load != null:
        return load(_that.reload);
      case CoresRefreshEvent() when refresh != null:
        return refresh();
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
    required TResult Function(bool reload) load,
    required TResult Function() refresh,
  }) {
    final _that = this;
    switch (_that) {
      case CoresLoadEvent():
        return load(_that.reload);
      case CoresRefreshEvent():
        return refresh();
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
    TResult? Function(bool reload)? load,
    TResult? Function()? refresh,
  }) {
    final _that = this;
    switch (_that) {
      case CoresLoadEvent() when load != null:
        return load(_that.reload);
      case CoresRefreshEvent() when refresh != null:
        return refresh();
      case _:
        return null;
    }
  }
}

/// @nodoc

class CoresLoadEvent implements CoresEvent {
  const CoresLoadEvent({this.reload = false});

  @JsonKey()
  final bool reload;

  /// Create a copy of CoresEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CoresLoadEventCopyWith<CoresLoadEvent> get copyWith =>
      _$CoresLoadEventCopyWithImpl<CoresLoadEvent>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CoresLoadEvent &&
            (identical(other.reload, reload) || other.reload == reload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reload);

  @override
  String toString() {
    return 'CoresEvent.load(reload: $reload)';
  }
}

/// @nodoc
abstract mixin class $CoresLoadEventCopyWith<$Res>
    implements $CoresEventCopyWith<$Res> {
  factory $CoresLoadEventCopyWith(
          CoresLoadEvent value, $Res Function(CoresLoadEvent) _then) =
      _$CoresLoadEventCopyWithImpl;
  @useResult
  $Res call({bool reload});
}

/// @nodoc
class _$CoresLoadEventCopyWithImpl<$Res>
    implements $CoresLoadEventCopyWith<$Res> {
  _$CoresLoadEventCopyWithImpl(this._self, this._then);

  final CoresLoadEvent _self;
  final $Res Function(CoresLoadEvent) _then;

  /// Create a copy of CoresEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? reload = null,
  }) {
    return _then(CoresLoadEvent(
      reload: null == reload
          ? _self.reload
          : reload // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class CoresRefreshEvent implements CoresEvent {
  const CoresRefreshEvent();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CoresRefreshEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CoresEvent.refresh()';
  }
}

/// @nodoc
mixin _$CoresState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CoresState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CoresState()';
  }
}

/// @nodoc
class $CoresStateCopyWith<$Res> {
  $CoresStateCopyWith(CoresState _, $Res Function(CoresState) __);
}

/// Adds pattern-matching-related methods to [CoresState].
extension CoresStatePatterns on CoresState {
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
    TResult Function(CoresLoadingState value)? loading,
    TResult Function(CoresSuccessState value)? success,
    TResult Function(CoresErrorState value)? error,
    TResult Function(CoresEmptyState value)? empty,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case CoresLoadingState() when loading != null:
        return loading(_that);
      case CoresSuccessState() when success != null:
        return success(_that);
      case CoresErrorState() when error != null:
        return error(_that);
      case CoresEmptyState() when empty != null:
        return empty(_that);
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
    required TResult Function(CoresLoadingState value) loading,
    required TResult Function(CoresSuccessState value) success,
    required TResult Function(CoresErrorState value) error,
    required TResult Function(CoresEmptyState value) empty,
  }) {
    final _that = this;
    switch (_that) {
      case CoresLoadingState():
        return loading(_that);
      case CoresSuccessState():
        return success(_that);
      case CoresErrorState():
        return error(_that);
      case CoresEmptyState():
        return empty(_that);
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
    TResult? Function(CoresLoadingState value)? loading,
    TResult? Function(CoresSuccessState value)? success,
    TResult? Function(CoresErrorState value)? error,
    TResult? Function(CoresEmptyState value)? empty,
  }) {
    final _that = this;
    switch (_that) {
      case CoresLoadingState() when loading != null:
        return loading(_that);
      case CoresSuccessState() when success != null:
        return success(_that);
      case CoresErrorState() when error != null:
        return error(_that);
      case CoresEmptyState() when empty != null:
        return empty(_that);
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
    TResult Function(List<CoreResource> cores)? success,
    TResult Function()? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case CoresLoadingState() when loading != null:
        return loading();
      case CoresSuccessState() when success != null:
        return success(_that.cores);
      case CoresErrorState() when error != null:
        return error();
      case CoresEmptyState() when empty != null:
        return empty();
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
    required TResult Function(List<CoreResource> cores) success,
    required TResult Function() error,
    required TResult Function() empty,
  }) {
    final _that = this;
    switch (_that) {
      case CoresLoadingState():
        return loading();
      case CoresSuccessState():
        return success(_that.cores);
      case CoresErrorState():
        return error();
      case CoresEmptyState():
        return empty();
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
    TResult? Function(List<CoreResource> cores)? success,
    TResult? Function()? error,
    TResult? Function()? empty,
  }) {
    final _that = this;
    switch (_that) {
      case CoresLoadingState() when loading != null:
        return loading();
      case CoresSuccessState() when success != null:
        return success(_that.cores);
      case CoresErrorState() when error != null:
        return error();
      case CoresEmptyState() when empty != null:
        return empty();
      case _:
        return null;
    }
  }
}

/// @nodoc

class CoresLoadingState implements CoresState {
  const CoresLoadingState();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CoresLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CoresState.loading()';
  }
}

/// @nodoc

class CoresSuccessState implements CoresState {
  const CoresSuccessState({final List<CoreResource> cores = const []})
      : _cores = cores;

  final List<CoreResource> _cores;
  @JsonKey()
  List<CoreResource> get cores {
    if (_cores is EqualUnmodifiableListView) return _cores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cores);
  }

  /// Create a copy of CoresState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CoresSuccessStateCopyWith<CoresSuccessState> get copyWith =>
      _$CoresSuccessStateCopyWithImpl<CoresSuccessState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CoresSuccessState &&
            const DeepCollectionEquality().equals(other._cores, _cores));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cores));

  @override
  String toString() {
    return 'CoresState.success(cores: $cores)';
  }
}

/// @nodoc
abstract mixin class $CoresSuccessStateCopyWith<$Res>
    implements $CoresStateCopyWith<$Res> {
  factory $CoresSuccessStateCopyWith(
          CoresSuccessState value, $Res Function(CoresSuccessState) _then) =
      _$CoresSuccessStateCopyWithImpl;
  @useResult
  $Res call({List<CoreResource> cores});
}

/// @nodoc
class _$CoresSuccessStateCopyWithImpl<$Res>
    implements $CoresSuccessStateCopyWith<$Res> {
  _$CoresSuccessStateCopyWithImpl(this._self, this._then);

  final CoresSuccessState _self;
  final $Res Function(CoresSuccessState) _then;

  /// Create a copy of CoresState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? cores = null,
  }) {
    return _then(CoresSuccessState(
      cores: null == cores
          ? _self._cores
          : cores // ignore: cast_nullable_to_non_nullable
              as List<CoreResource>,
    ));
  }
}

/// @nodoc

class CoresErrorState implements CoresState {
  const CoresErrorState();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CoresErrorState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CoresState.error()';
  }
}

/// @nodoc

class CoresEmptyState implements CoresState {
  const CoresEmptyState();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CoresEmptyState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CoresState.empty()';
  }
}

// dart format on

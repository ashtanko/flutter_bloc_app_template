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
    TResult Function(CoresFilterEvent value)? filter,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case CoresLoadEvent() when load != null:
        return load(_that);
      case CoresRefreshEvent() when refresh != null:
        return refresh(_that);
      case CoresFilterEvent() when filter != null:
        return filter(_that);
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
    required TResult Function(CoresFilterEvent value) filter,
  }) {
    final _that = this;
    switch (_that) {
      case CoresLoadEvent():
        return load(_that);
      case CoresRefreshEvent():
        return refresh(_that);
      case CoresFilterEvent():
        return filter(_that);
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
    TResult? Function(CoresFilterEvent value)? filter,
  }) {
    final _that = this;
    switch (_that) {
      case CoresLoadEvent() when load != null:
        return load(_that);
      case CoresRefreshEvent() when refresh != null:
        return refresh(_that);
      case CoresFilterEvent() when filter != null:
        return filter(_that);
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
    TResult Function(String searchQuery, CoreFilterStatus? statusFilter)?
        filter,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case CoresLoadEvent() when load != null:
        return load(_that.reload);
      case CoresRefreshEvent() when refresh != null:
        return refresh();
      case CoresFilterEvent() when filter != null:
        return filter(_that.searchQuery, _that.statusFilter);
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
    required TResult Function(
            String searchQuery, CoreFilterStatus? statusFilter)
        filter,
  }) {
    final _that = this;
    switch (_that) {
      case CoresLoadEvent():
        return load(_that.reload);
      case CoresRefreshEvent():
        return refresh();
      case CoresFilterEvent():
        return filter(_that.searchQuery, _that.statusFilter);
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
    TResult? Function(String searchQuery, CoreFilterStatus? statusFilter)?
        filter,
  }) {
    final _that = this;
    switch (_that) {
      case CoresLoadEvent() when load != null:
        return load(_that.reload);
      case CoresRefreshEvent() when refresh != null:
        return refresh();
      case CoresFilterEvent() when filter != null:
        return filter(_that.searchQuery, _that.statusFilter);
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

class CoresFilterEvent implements CoresEvent {
  const CoresFilterEvent({required this.searchQuery, this.statusFilter});

  final String searchQuery;
  final CoreFilterStatus? statusFilter;

  /// Create a copy of CoresEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CoresFilterEventCopyWith<CoresFilterEvent> get copyWith =>
      _$CoresFilterEventCopyWithImpl<CoresFilterEvent>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CoresFilterEvent &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.statusFilter, statusFilter) ||
                other.statusFilter == statusFilter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchQuery, statusFilter);

  @override
  String toString() {
    return 'CoresEvent.filter(searchQuery: $searchQuery, statusFilter: $statusFilter)';
  }
}

/// @nodoc
abstract mixin class $CoresFilterEventCopyWith<$Res>
    implements $CoresEventCopyWith<$Res> {
  factory $CoresFilterEventCopyWith(
          CoresFilterEvent value, $Res Function(CoresFilterEvent) _then) =
      _$CoresFilterEventCopyWithImpl;
  @useResult
  $Res call({String searchQuery, CoreFilterStatus? statusFilter});
}

/// @nodoc
class _$CoresFilterEventCopyWithImpl<$Res>
    implements $CoresFilterEventCopyWith<$Res> {
  _$CoresFilterEventCopyWithImpl(this._self, this._then);

  final CoresFilterEvent _self;
  final $Res Function(CoresFilterEvent) _then;

  /// Create a copy of CoresEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? searchQuery = null,
    Object? statusFilter = freezed,
  }) {
    return _then(CoresFilterEvent(
      searchQuery: null == searchQuery
          ? _self.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      statusFilter: freezed == statusFilter
          ? _self.statusFilter
          : statusFilter // ignore: cast_nullable_to_non_nullable
              as CoreFilterStatus?,
    ));
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
    TResult Function(CoresNotFoundState value)? notFound,
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
      case CoresNotFoundState() when notFound != null:
        return notFound(_that);
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
    required TResult Function(CoresNotFoundState value) notFound,
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
      case CoresNotFoundState():
        return notFound(_that);
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
    TResult? Function(CoresNotFoundState value)? notFound,
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
      case CoresNotFoundState() when notFound != null:
        return notFound(_that);
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
    TResult Function(
            List<CoreResource> cores,
            List<CoreResource>? filteredCores,
            String? searchQuery,
            CoreFilterStatus? statusFilter)?
        success,
    TResult Function(String message)? error,
    TResult Function()? empty,
    TResult Function(String searchQuery)? notFound,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case CoresLoadingState() when loading != null:
        return loading();
      case CoresSuccessState() when success != null:
        return success(_that.cores, _that.filteredCores, _that.searchQuery,
            _that.statusFilter);
      case CoresErrorState() when error != null:
        return error(_that.message);
      case CoresEmptyState() when empty != null:
        return empty();
      case CoresNotFoundState() when notFound != null:
        return notFound(_that.searchQuery);
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
    required TResult Function(
            List<CoreResource> cores,
            List<CoreResource>? filteredCores,
            String? searchQuery,
            CoreFilterStatus? statusFilter)
        success,
    required TResult Function(String message) error,
    required TResult Function() empty,
    required TResult Function(String searchQuery) notFound,
  }) {
    final _that = this;
    switch (_that) {
      case CoresLoadingState():
        return loading();
      case CoresSuccessState():
        return success(_that.cores, _that.filteredCores, _that.searchQuery,
            _that.statusFilter);
      case CoresErrorState():
        return error(_that.message);
      case CoresEmptyState():
        return empty();
      case CoresNotFoundState():
        return notFound(_that.searchQuery);
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
    TResult? Function(
            List<CoreResource> cores,
            List<CoreResource>? filteredCores,
            String? searchQuery,
            CoreFilterStatus? statusFilter)?
        success,
    TResult? Function(String message)? error,
    TResult? Function()? empty,
    TResult? Function(String searchQuery)? notFound,
  }) {
    final _that = this;
    switch (_that) {
      case CoresLoadingState() when loading != null:
        return loading();
      case CoresSuccessState() when success != null:
        return success(_that.cores, _that.filteredCores, _that.searchQuery,
            _that.statusFilter);
      case CoresErrorState() when error != null:
        return error(_that.message);
      case CoresEmptyState() when empty != null:
        return empty();
      case CoresNotFoundState() when notFound != null:
        return notFound(_that.searchQuery);
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
  const CoresSuccessState(
      {final List<CoreResource> cores = const [],
      final List<CoreResource>? filteredCores,
      this.searchQuery = '',
      this.statusFilter})
      : _cores = cores,
        _filteredCores = filteredCores;

  final List<CoreResource> _cores;
  @JsonKey()
  List<CoreResource> get cores {
    if (_cores is EqualUnmodifiableListView) return _cores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cores);
  }

  final List<CoreResource>? _filteredCores;
  List<CoreResource>? get filteredCores {
    final value = _filteredCores;
    if (value == null) return null;
    if (_filteredCores is EqualUnmodifiableListView) return _filteredCores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @JsonKey()
  final String? searchQuery;
  final CoreFilterStatus? statusFilter;

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
            const DeepCollectionEquality().equals(other._cores, _cores) &&
            const DeepCollectionEquality()
                .equals(other._filteredCores, _filteredCores) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.statusFilter, statusFilter) ||
                other.statusFilter == statusFilter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_cores),
      const DeepCollectionEquality().hash(_filteredCores),
      searchQuery,
      statusFilter);

  @override
  String toString() {
    return 'CoresState.success(cores: $cores, filteredCores: $filteredCores, searchQuery: $searchQuery, statusFilter: $statusFilter)';
  }
}

/// @nodoc
abstract mixin class $CoresSuccessStateCopyWith<$Res>
    implements $CoresStateCopyWith<$Res> {
  factory $CoresSuccessStateCopyWith(
          CoresSuccessState value, $Res Function(CoresSuccessState) _then) =
      _$CoresSuccessStateCopyWithImpl;
  @useResult
  $Res call(
      {List<CoreResource> cores,
      List<CoreResource>? filteredCores,
      String? searchQuery,
      CoreFilterStatus? statusFilter});
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
    Object? filteredCores = freezed,
    Object? searchQuery = freezed,
    Object? statusFilter = freezed,
  }) {
    return _then(CoresSuccessState(
      cores: null == cores
          ? _self._cores
          : cores // ignore: cast_nullable_to_non_nullable
              as List<CoreResource>,
      filteredCores: freezed == filteredCores
          ? _self._filteredCores
          : filteredCores // ignore: cast_nullable_to_non_nullable
              as List<CoreResource>?,
      searchQuery: freezed == searchQuery
          ? _self.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      statusFilter: freezed == statusFilter
          ? _self.statusFilter
          : statusFilter // ignore: cast_nullable_to_non_nullable
              as CoreFilterStatus?,
    ));
  }
}

/// @nodoc

class CoresErrorState implements CoresState {
  const CoresErrorState(this.message);

  final String message;

  /// Create a copy of CoresState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CoresErrorStateCopyWith<CoresErrorState> get copyWith =>
      _$CoresErrorStateCopyWithImpl<CoresErrorState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CoresErrorState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'CoresState.error(message: $message)';
  }
}

/// @nodoc
abstract mixin class $CoresErrorStateCopyWith<$Res>
    implements $CoresStateCopyWith<$Res> {
  factory $CoresErrorStateCopyWith(
          CoresErrorState value, $Res Function(CoresErrorState) _then) =
      _$CoresErrorStateCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$CoresErrorStateCopyWithImpl<$Res>
    implements $CoresErrorStateCopyWith<$Res> {
  _$CoresErrorStateCopyWithImpl(this._self, this._then);

  final CoresErrorState _self;
  final $Res Function(CoresErrorState) _then;

  /// Create a copy of CoresState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(CoresErrorState(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
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

/// @nodoc

class CoresNotFoundState implements CoresState {
  const CoresNotFoundState({this.searchQuery = ''});

  @JsonKey()
  final String searchQuery;

  /// Create a copy of CoresState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CoresNotFoundStateCopyWith<CoresNotFoundState> get copyWith =>
      _$CoresNotFoundStateCopyWithImpl<CoresNotFoundState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CoresNotFoundState &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchQuery);

  @override
  String toString() {
    return 'CoresState.notFound(searchQuery: $searchQuery)';
  }
}

/// @nodoc
abstract mixin class $CoresNotFoundStateCopyWith<$Res>
    implements $CoresStateCopyWith<$Res> {
  factory $CoresNotFoundStateCopyWith(
          CoresNotFoundState value, $Res Function(CoresNotFoundState) _then) =
      _$CoresNotFoundStateCopyWithImpl;
  @useResult
  $Res call({String searchQuery});
}

/// @nodoc
class _$CoresNotFoundStateCopyWithImpl<$Res>
    implements $CoresNotFoundStateCopyWith<$Res> {
  _$CoresNotFoundStateCopyWithImpl(this._self, this._then);

  final CoresNotFoundState _self;
  final $Res Function(CoresNotFoundState) _then;

  /// Create a copy of CoresState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? searchQuery = null,
  }) {
    return _then(CoresNotFoundState(
      searchQuery: null == searchQuery
          ? _self.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on

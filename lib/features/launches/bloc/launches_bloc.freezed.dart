// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'launches_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LaunchesEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LaunchesEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LaunchesEvent()';
  }
}

/// @nodoc
class $LaunchesEventCopyWith<$Res> {
  $LaunchesEventCopyWith(LaunchesEvent _, $Res Function(LaunchesEvent) __);
}

/// @nodoc

class LaunchesLoadEvent implements LaunchesEvent {
  const LaunchesLoadEvent({this.reload = false, this.filter});

  @JsonKey()
  final bool reload;
  final LaunchesFilter? filter;

  /// Create a copy of LaunchesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LaunchesLoadEventCopyWith<LaunchesLoadEvent> get copyWith =>
      _$LaunchesLoadEventCopyWithImpl<LaunchesLoadEvent>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LaunchesLoadEvent &&
            (identical(other.reload, reload) || other.reload == reload) &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reload, filter);

  @override
  String toString() {
    return 'LaunchesEvent.load(reload: $reload, filter: $filter)';
  }
}

/// @nodoc
abstract mixin class $LaunchesLoadEventCopyWith<$Res>
    implements $LaunchesEventCopyWith<$Res> {
  factory $LaunchesLoadEventCopyWith(
          LaunchesLoadEvent value, $Res Function(LaunchesLoadEvent) _then) =
      _$LaunchesLoadEventCopyWithImpl;
  @useResult
  $Res call({bool reload, LaunchesFilter? filter});
}

/// @nodoc
class _$LaunchesLoadEventCopyWithImpl<$Res>
    implements $LaunchesLoadEventCopyWith<$Res> {
  _$LaunchesLoadEventCopyWithImpl(this._self, this._then);

  final LaunchesLoadEvent _self;
  final $Res Function(LaunchesLoadEvent) _then;

  /// Create a copy of LaunchesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? reload = null,
    Object? filter = freezed,
  }) {
    return _then(LaunchesLoadEvent(
      reload: null == reload
          ? _self.reload
          : reload // ignore: cast_nullable_to_non_nullable
              as bool,
      filter: freezed == filter
          ? _self.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as LaunchesFilter?,
    ));
  }
}

/// @nodoc

class _LaunchesRefreshEvent implements LaunchesEvent {
  const _LaunchesRefreshEvent();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LaunchesRefreshEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LaunchesEvent.refresh()';
  }
}

/// @nodoc
mixin _$LaunchesState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LaunchesState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LaunchesState()';
  }
}

/// @nodoc
class $LaunchesStateCopyWith<$Res> {
  $LaunchesStateCopyWith(LaunchesState _, $Res Function(LaunchesState) __);
}

/// @nodoc

class LaunchesLoadingState implements LaunchesState {
  const LaunchesLoadingState();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LaunchesLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LaunchesState.loading()';
  }
}

/// @nodoc

class LaunchesSuccessState implements LaunchesState {
  const LaunchesSuccessState({final List<LaunchResource> launches = const []})
      : _launches = launches;

  final List<LaunchResource> _launches;
  @JsonKey()
  List<LaunchResource> get launches {
    if (_launches is EqualUnmodifiableListView) return _launches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_launches);
  }

  /// Create a copy of LaunchesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LaunchesSuccessStateCopyWith<LaunchesSuccessState> get copyWith =>
      _$LaunchesSuccessStateCopyWithImpl<LaunchesSuccessState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LaunchesSuccessState &&
            const DeepCollectionEquality().equals(other._launches, _launches));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_launches));

  @override
  String toString() {
    return 'LaunchesState.success(launches: $launches)';
  }
}

/// @nodoc
abstract mixin class $LaunchesSuccessStateCopyWith<$Res>
    implements $LaunchesStateCopyWith<$Res> {
  factory $LaunchesSuccessStateCopyWith(LaunchesSuccessState value,
          $Res Function(LaunchesSuccessState) _then) =
      _$LaunchesSuccessStateCopyWithImpl;
  @useResult
  $Res call({List<LaunchResource> launches});
}

/// @nodoc
class _$LaunchesSuccessStateCopyWithImpl<$Res>
    implements $LaunchesSuccessStateCopyWith<$Res> {
  _$LaunchesSuccessStateCopyWithImpl(this._self, this._then);

  final LaunchesSuccessState _self;
  final $Res Function(LaunchesSuccessState) _then;

  /// Create a copy of LaunchesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? launches = null,
  }) {
    return _then(LaunchesSuccessState(
      launches: null == launches
          ? _self._launches
          : launches // ignore: cast_nullable_to_non_nullable
              as List<LaunchResource>,
    ));
  }
}

/// @nodoc

class LaunchesErrorState implements LaunchesState {
  const LaunchesErrorState();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LaunchesErrorState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LaunchesState.error()';
  }
}

/// @nodoc

class LaunchesEmptyState implements LaunchesState {
  const LaunchesEmptyState();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LaunchesEmptyState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LaunchesState.empty()';
  }
}

// dart format on

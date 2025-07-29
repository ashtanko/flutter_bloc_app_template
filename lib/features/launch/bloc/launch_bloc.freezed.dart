// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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

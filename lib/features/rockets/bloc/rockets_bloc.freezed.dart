// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rockets_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RocketsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RocketsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RocketsEvent()';
}


}

/// @nodoc
class $RocketsEventCopyWith<$Res>  {
$RocketsEventCopyWith(RocketsEvent _, $Res Function(RocketsEvent) __);
}


/// Adds pattern-matching-related methods to [RocketsEvent].
extension RocketsEventPatterns on RocketsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( RocketsLoadEvent value)?  load,TResult Function( _RocketsRefreshEvent value)?  refresh,required TResult orElse(),}){
final _that = this;
switch (_that) {
case RocketsLoadEvent() when load != null:
return load(_that);case _RocketsRefreshEvent() when refresh != null:
return refresh(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( RocketsLoadEvent value)  load,required TResult Function( _RocketsRefreshEvent value)  refresh,}){
final _that = this;
switch (_that) {
case RocketsLoadEvent():
return load(_that);case _RocketsRefreshEvent():
return refresh(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( RocketsLoadEvent value)?  load,TResult? Function( _RocketsRefreshEvent value)?  refresh,}){
final _that = this;
switch (_that) {
case RocketsLoadEvent() when load != null:
return load(_that);case _RocketsRefreshEvent() when refresh != null:
return refresh(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool reload)?  load,TResult Function()?  refresh,required TResult orElse(),}) {final _that = this;
switch (_that) {
case RocketsLoadEvent() when load != null:
return load(_that.reload);case _RocketsRefreshEvent() when refresh != null:
return refresh();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool reload)  load,required TResult Function()  refresh,}) {final _that = this;
switch (_that) {
case RocketsLoadEvent():
return load(_that.reload);case _RocketsRefreshEvent():
return refresh();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool reload)?  load,TResult? Function()?  refresh,}) {final _that = this;
switch (_that) {
case RocketsLoadEvent() when load != null:
return load(_that.reload);case _RocketsRefreshEvent() when refresh != null:
return refresh();case _:
  return null;

}
}

}

/// @nodoc


class RocketsLoadEvent implements RocketsEvent {
  const RocketsLoadEvent({this.reload = false});
  

@JsonKey() final  bool reload;

/// Create a copy of RocketsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RocketsLoadEventCopyWith<RocketsLoadEvent> get copyWith => _$RocketsLoadEventCopyWithImpl<RocketsLoadEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RocketsLoadEvent&&(identical(other.reload, reload) || other.reload == reload));
}


@override
int get hashCode => Object.hash(runtimeType,reload);

@override
String toString() {
  return 'RocketsEvent.load(reload: $reload)';
}


}

/// @nodoc
abstract mixin class $RocketsLoadEventCopyWith<$Res> implements $RocketsEventCopyWith<$Res> {
  factory $RocketsLoadEventCopyWith(RocketsLoadEvent value, $Res Function(RocketsLoadEvent) _then) = _$RocketsLoadEventCopyWithImpl;
@useResult
$Res call({
 bool reload
});




}
/// @nodoc
class _$RocketsLoadEventCopyWithImpl<$Res>
    implements $RocketsLoadEventCopyWith<$Res> {
  _$RocketsLoadEventCopyWithImpl(this._self, this._then);

  final RocketsLoadEvent _self;
  final $Res Function(RocketsLoadEvent) _then;

/// Create a copy of RocketsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reload = null,}) {
  return _then(RocketsLoadEvent(
reload: null == reload ? _self.reload : reload // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _RocketsRefreshEvent implements RocketsEvent {
  const _RocketsRefreshEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RocketsRefreshEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RocketsEvent.refresh()';
}


}




/// @nodoc
mixin _$RocketsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RocketsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RocketsState()';
}


}

/// @nodoc
class $RocketsStateCopyWith<$Res>  {
$RocketsStateCopyWith(RocketsState _, $Res Function(RocketsState) __);
}


/// Adds pattern-matching-related methods to [RocketsState].
extension RocketsStatePatterns on RocketsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( RocketsLoadingState value)?  loading,TResult Function( RocketsSuccessState value)?  success,TResult Function( RocketsErrorState value)?  error,TResult Function( RocketsEmptyState value)?  empty,required TResult orElse(),}){
final _that = this;
switch (_that) {
case RocketsLoadingState() when loading != null:
return loading(_that);case RocketsSuccessState() when success != null:
return success(_that);case RocketsErrorState() when error != null:
return error(_that);case RocketsEmptyState() when empty != null:
return empty(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( RocketsLoadingState value)  loading,required TResult Function( RocketsSuccessState value)  success,required TResult Function( RocketsErrorState value)  error,required TResult Function( RocketsEmptyState value)  empty,}){
final _that = this;
switch (_that) {
case RocketsLoadingState():
return loading(_that);case RocketsSuccessState():
return success(_that);case RocketsErrorState():
return error(_that);case RocketsEmptyState():
return empty(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( RocketsLoadingState value)?  loading,TResult? Function( RocketsSuccessState value)?  success,TResult? Function( RocketsErrorState value)?  error,TResult? Function( RocketsEmptyState value)?  empty,}){
final _that = this;
switch (_that) {
case RocketsLoadingState() when loading != null:
return loading(_that);case RocketsSuccessState() when success != null:
return success(_that);case RocketsErrorState() when error != null:
return error(_that);case RocketsEmptyState() when empty != null:
return empty(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( List<RocketResource> rockets)?  success,TResult Function()?  error,TResult Function()?  empty,required TResult orElse(),}) {final _that = this;
switch (_that) {
case RocketsLoadingState() when loading != null:
return loading();case RocketsSuccessState() when success != null:
return success(_that.rockets);case RocketsErrorState() when error != null:
return error();case RocketsEmptyState() when empty != null:
return empty();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( List<RocketResource> rockets)  success,required TResult Function()  error,required TResult Function()  empty,}) {final _that = this;
switch (_that) {
case RocketsLoadingState():
return loading();case RocketsSuccessState():
return success(_that.rockets);case RocketsErrorState():
return error();case RocketsEmptyState():
return empty();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( List<RocketResource> rockets)?  success,TResult? Function()?  error,TResult? Function()?  empty,}) {final _that = this;
switch (_that) {
case RocketsLoadingState() when loading != null:
return loading();case RocketsSuccessState() when success != null:
return success(_that.rockets);case RocketsErrorState() when error != null:
return error();case RocketsEmptyState() when empty != null:
return empty();case _:
  return null;

}
}

}

/// @nodoc


class RocketsLoadingState implements RocketsState {
  const RocketsLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RocketsLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RocketsState.loading()';
}


}




/// @nodoc


class RocketsSuccessState implements RocketsState {
  const RocketsSuccessState({final  List<RocketResource> rockets = const []}): _rockets = rockets;
  

 final  List<RocketResource> _rockets;
@JsonKey() List<RocketResource> get rockets {
  if (_rockets is EqualUnmodifiableListView) return _rockets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rockets);
}


/// Create a copy of RocketsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RocketsSuccessStateCopyWith<RocketsSuccessState> get copyWith => _$RocketsSuccessStateCopyWithImpl<RocketsSuccessState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RocketsSuccessState&&const DeepCollectionEquality().equals(other._rockets, _rockets));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_rockets));

@override
String toString() {
  return 'RocketsState.success(rockets: $rockets)';
}


}

/// @nodoc
abstract mixin class $RocketsSuccessStateCopyWith<$Res> implements $RocketsStateCopyWith<$Res> {
  factory $RocketsSuccessStateCopyWith(RocketsSuccessState value, $Res Function(RocketsSuccessState) _then) = _$RocketsSuccessStateCopyWithImpl;
@useResult
$Res call({
 List<RocketResource> rockets
});




}
/// @nodoc
class _$RocketsSuccessStateCopyWithImpl<$Res>
    implements $RocketsSuccessStateCopyWith<$Res> {
  _$RocketsSuccessStateCopyWithImpl(this._self, this._then);

  final RocketsSuccessState _self;
  final $Res Function(RocketsSuccessState) _then;

/// Create a copy of RocketsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? rockets = null,}) {
  return _then(RocketsSuccessState(
rockets: null == rockets ? _self._rockets : rockets // ignore: cast_nullable_to_non_nullable
as List<RocketResource>,
  ));
}


}

/// @nodoc


class RocketsErrorState implements RocketsState {
  const RocketsErrorState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RocketsErrorState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RocketsState.error()';
}


}




/// @nodoc


class RocketsEmptyState implements RocketsState {
  const RocketsEmptyState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RocketsEmptyState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RocketsState.empty()';
}


}




// dart format on

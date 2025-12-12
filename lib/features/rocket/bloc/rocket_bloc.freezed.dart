// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rocket_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RocketEvent {

 String get rocketId;
/// Create a copy of RocketEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RocketEventCopyWith<RocketEvent> get copyWith => _$RocketEventCopyWithImpl<RocketEvent>(this as RocketEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RocketEvent&&(identical(other.rocketId, rocketId) || other.rocketId == rocketId));
}


@override
int get hashCode => Object.hash(runtimeType,rocketId);

@override
String toString() {
  return 'RocketEvent(rocketId: $rocketId)';
}


}

/// @nodoc
abstract mixin class $RocketEventCopyWith<$Res>  {
  factory $RocketEventCopyWith(RocketEvent value, $Res Function(RocketEvent) _then) = _$RocketEventCopyWithImpl;
@useResult
$Res call({
 String rocketId
});




}
/// @nodoc
class _$RocketEventCopyWithImpl<$Res>
    implements $RocketEventCopyWith<$Res> {
  _$RocketEventCopyWithImpl(this._self, this._then);

  final RocketEvent _self;
  final $Res Function(RocketEvent) _then;

/// Create a copy of RocketEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rocketId = null,}) {
  return _then(_self.copyWith(
rocketId: null == rocketId ? _self.rocketId : rocketId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RocketEvent].
extension RocketEventPatterns on RocketEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( RocketLoadEvent value)?  load,required TResult orElse(),}){
final _that = this;
switch (_that) {
case RocketLoadEvent() when load != null:
return load(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( RocketLoadEvent value)  load,}){
final _that = this;
switch (_that) {
case RocketLoadEvent():
return load(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( RocketLoadEvent value)?  load,}){
final _that = this;
switch (_that) {
case RocketLoadEvent() when load != null:
return load(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String rocketId)?  load,required TResult orElse(),}) {final _that = this;
switch (_that) {
case RocketLoadEvent() when load != null:
return load(_that.rocketId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String rocketId)  load,}) {final _that = this;
switch (_that) {
case RocketLoadEvent():
return load(_that.rocketId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String rocketId)?  load,}) {final _that = this;
switch (_that) {
case RocketLoadEvent() when load != null:
return load(_that.rocketId);case _:
  return null;

}
}

}

/// @nodoc


class RocketLoadEvent implements RocketEvent {
  const RocketLoadEvent({this.rocketId = 'falcon1'});
  

@override@JsonKey() final  String rocketId;

/// Create a copy of RocketEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RocketLoadEventCopyWith<RocketLoadEvent> get copyWith => _$RocketLoadEventCopyWithImpl<RocketLoadEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RocketLoadEvent&&(identical(other.rocketId, rocketId) || other.rocketId == rocketId));
}


@override
int get hashCode => Object.hash(runtimeType,rocketId);

@override
String toString() {
  return 'RocketEvent.load(rocketId: $rocketId)';
}


}

/// @nodoc
abstract mixin class $RocketLoadEventCopyWith<$Res> implements $RocketEventCopyWith<$Res> {
  factory $RocketLoadEventCopyWith(RocketLoadEvent value, $Res Function(RocketLoadEvent) _then) = _$RocketLoadEventCopyWithImpl;
@override @useResult
$Res call({
 String rocketId
});




}
/// @nodoc
class _$RocketLoadEventCopyWithImpl<$Res>
    implements $RocketLoadEventCopyWith<$Res> {
  _$RocketLoadEventCopyWithImpl(this._self, this._then);

  final RocketLoadEvent _self;
  final $Res Function(RocketLoadEvent) _then;

/// Create a copy of RocketEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rocketId = null,}) {
  return _then(RocketLoadEvent(
rocketId: null == rocketId ? _self.rocketId : rocketId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$RocketState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RocketState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RocketState()';
}


}

/// @nodoc
class $RocketStateCopyWith<$Res>  {
$RocketStateCopyWith(RocketState _, $Res Function(RocketState) __);
}


/// Adds pattern-matching-related methods to [RocketState].
extension RocketStatePatterns on RocketState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( RocketLoadingState value)?  loading,TResult Function( RocketSuccessState value)?  success,TResult Function( RocketErrorState value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case RocketLoadingState() when loading != null:
return loading(_that);case RocketSuccessState() when success != null:
return success(_that);case RocketErrorState() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( RocketLoadingState value)  loading,required TResult Function( RocketSuccessState value)  success,required TResult Function( RocketErrorState value)  error,}){
final _that = this;
switch (_that) {
case RocketLoadingState():
return loading(_that);case RocketSuccessState():
return success(_that);case RocketErrorState():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( RocketLoadingState value)?  loading,TResult? Function( RocketSuccessState value)?  success,TResult? Function( RocketErrorState value)?  error,}){
final _that = this;
switch (_that) {
case RocketLoadingState() when loading != null:
return loading(_that);case RocketSuccessState() when success != null:
return success(_that);case RocketErrorState() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( RocketResource rocket)?  success,TResult Function()?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case RocketLoadingState() when loading != null:
return loading();case RocketSuccessState() when success != null:
return success(_that.rocket);case RocketErrorState() when error != null:
return error();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( RocketResource rocket)  success,required TResult Function()  error,}) {final _that = this;
switch (_that) {
case RocketLoadingState():
return loading();case RocketSuccessState():
return success(_that.rocket);case RocketErrorState():
return error();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( RocketResource rocket)?  success,TResult? Function()?  error,}) {final _that = this;
switch (_that) {
case RocketLoadingState() when loading != null:
return loading();case RocketSuccessState() when success != null:
return success(_that.rocket);case RocketErrorState() when error != null:
return error();case _:
  return null;

}
}

}

/// @nodoc


class RocketLoadingState implements RocketState {
  const RocketLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RocketLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RocketState.loading()';
}


}




/// @nodoc


class RocketSuccessState implements RocketState {
  const RocketSuccessState({required this.rocket});
  

 final  RocketResource rocket;

/// Create a copy of RocketState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RocketSuccessStateCopyWith<RocketSuccessState> get copyWith => _$RocketSuccessStateCopyWithImpl<RocketSuccessState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RocketSuccessState&&(identical(other.rocket, rocket) || other.rocket == rocket));
}


@override
int get hashCode => Object.hash(runtimeType,rocket);

@override
String toString() {
  return 'RocketState.success(rocket: $rocket)';
}


}

/// @nodoc
abstract mixin class $RocketSuccessStateCopyWith<$Res> implements $RocketStateCopyWith<$Res> {
  factory $RocketSuccessStateCopyWith(RocketSuccessState value, $Res Function(RocketSuccessState) _then) = _$RocketSuccessStateCopyWithImpl;
@useResult
$Res call({
 RocketResource rocket
});




}
/// @nodoc
class _$RocketSuccessStateCopyWithImpl<$Res>
    implements $RocketSuccessStateCopyWith<$Res> {
  _$RocketSuccessStateCopyWithImpl(this._self, this._then);

  final RocketSuccessState _self;
  final $Res Function(RocketSuccessState) _then;

/// Create a copy of RocketState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? rocket = null,}) {
  return _then(RocketSuccessState(
rocket: null == rocket ? _self.rocket : rocket // ignore: cast_nullable_to_non_nullable
as RocketResource,
  ));
}


}

/// @nodoc


class RocketErrorState implements RocketState {
  const RocketErrorState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RocketErrorState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RocketState.error()';
}


}




// dart format on

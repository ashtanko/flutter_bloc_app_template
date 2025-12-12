// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'roadster_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RoadsterEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoadsterEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RoadsterEvent()';
}


}

/// @nodoc
class $RoadsterEventCopyWith<$Res>  {
$RoadsterEventCopyWith(RoadsterEvent _, $Res Function(RoadsterEvent) __);
}


/// Adds pattern-matching-related methods to [RoadsterEvent].
extension RoadsterEventPatterns on RoadsterEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( RoadsterLoadEvent value)?  load,required TResult orElse(),}){
final _that = this;
switch (_that) {
case RoadsterLoadEvent() when load != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( RoadsterLoadEvent value)  load,}){
final _that = this;
switch (_that) {
case RoadsterLoadEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( RoadsterLoadEvent value)?  load,}){
final _that = this;
switch (_that) {
case RoadsterLoadEvent() when load != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  load,required TResult orElse(),}) {final _that = this;
switch (_that) {
case RoadsterLoadEvent() when load != null:
return load();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  load,}) {final _that = this;
switch (_that) {
case RoadsterLoadEvent():
return load();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  load,}) {final _that = this;
switch (_that) {
case RoadsterLoadEvent() when load != null:
return load();case _:
  return null;

}
}

}

/// @nodoc


class RoadsterLoadEvent implements RoadsterEvent {
  const RoadsterLoadEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoadsterLoadEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RoadsterEvent.load()';
}


}




/// @nodoc
mixin _$RoadsterState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoadsterState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RoadsterState()';
}


}

/// @nodoc
class $RoadsterStateCopyWith<$Res>  {
$RoadsterStateCopyWith(RoadsterState _, $Res Function(RoadsterState) __);
}


/// Adds pattern-matching-related methods to [RoadsterState].
extension RoadsterStatePatterns on RoadsterState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( RoadsterLoadingState value)?  loading,TResult Function( RoadsterSuccessState value)?  success,TResult Function( RoadsterErrorState value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case RoadsterLoadingState() when loading != null:
return loading(_that);case RoadsterSuccessState() when success != null:
return success(_that);case RoadsterErrorState() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( RoadsterLoadingState value)  loading,required TResult Function( RoadsterSuccessState value)  success,required TResult Function( RoadsterErrorState value)  error,}){
final _that = this;
switch (_that) {
case RoadsterLoadingState():
return loading(_that);case RoadsterSuccessState():
return success(_that);case RoadsterErrorState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( RoadsterLoadingState value)?  loading,TResult? Function( RoadsterSuccessState value)?  success,TResult? Function( RoadsterErrorState value)?  error,}){
final _that = this;
switch (_that) {
case RoadsterLoadingState() when loading != null:
return loading(_that);case RoadsterSuccessState() when success != null:
return success(_that);case RoadsterErrorState() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( RoadsterResource roadster)?  success,TResult Function()?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case RoadsterLoadingState() when loading != null:
return loading();case RoadsterSuccessState() when success != null:
return success(_that.roadster);case RoadsterErrorState() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( RoadsterResource roadster)  success,required TResult Function()  error,}) {final _that = this;
switch (_that) {
case RoadsterLoadingState():
return loading();case RoadsterSuccessState():
return success(_that.roadster);case RoadsterErrorState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( RoadsterResource roadster)?  success,TResult? Function()?  error,}) {final _that = this;
switch (_that) {
case RoadsterLoadingState() when loading != null:
return loading();case RoadsterSuccessState() when success != null:
return success(_that.roadster);case RoadsterErrorState() when error != null:
return error();case _:
  return null;

}
}

}

/// @nodoc


class RoadsterLoadingState implements RoadsterState {
  const RoadsterLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoadsterLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RoadsterState.loading()';
}


}




/// @nodoc


class RoadsterSuccessState implements RoadsterState {
  const RoadsterSuccessState({required this.roadster});
  

 final  RoadsterResource roadster;

/// Create a copy of RoadsterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoadsterSuccessStateCopyWith<RoadsterSuccessState> get copyWith => _$RoadsterSuccessStateCopyWithImpl<RoadsterSuccessState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoadsterSuccessState&&(identical(other.roadster, roadster) || other.roadster == roadster));
}


@override
int get hashCode => Object.hash(runtimeType,roadster);

@override
String toString() {
  return 'RoadsterState.success(roadster: $roadster)';
}


}

/// @nodoc
abstract mixin class $RoadsterSuccessStateCopyWith<$Res> implements $RoadsterStateCopyWith<$Res> {
  factory $RoadsterSuccessStateCopyWith(RoadsterSuccessState value, $Res Function(RoadsterSuccessState) _then) = _$RoadsterSuccessStateCopyWithImpl;
@useResult
$Res call({
 RoadsterResource roadster
});




}
/// @nodoc
class _$RoadsterSuccessStateCopyWithImpl<$Res>
    implements $RoadsterSuccessStateCopyWith<$Res> {
  _$RoadsterSuccessStateCopyWithImpl(this._self, this._then);

  final RoadsterSuccessState _self;
  final $Res Function(RoadsterSuccessState) _then;

/// Create a copy of RoadsterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? roadster = null,}) {
  return _then(RoadsterSuccessState(
roadster: null == roadster ? _self.roadster : roadster // ignore: cast_nullable_to_non_nullable
as RoadsterResource,
  ));
}


}

/// @nodoc


class RoadsterErrorState implements RoadsterState {
  const RoadsterErrorState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoadsterErrorState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RoadsterState.error()';
}


}




// dart format on

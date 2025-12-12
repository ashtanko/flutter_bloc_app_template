// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LaunchesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LaunchesEvent()';
}


}

/// @nodoc
class $LaunchesEventCopyWith<$Res>  {
$LaunchesEventCopyWith(LaunchesEvent _, $Res Function(LaunchesEvent) __);
}


/// Adds pattern-matching-related methods to [LaunchesEvent].
extension LaunchesEventPatterns on LaunchesEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LaunchesLoadEvent value)?  load,TResult Function( _LaunchesRefreshEvent value)?  refresh,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LaunchesLoadEvent() when load != null:
return load(_that);case _LaunchesRefreshEvent() when refresh != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LaunchesLoadEvent value)  load,required TResult Function( _LaunchesRefreshEvent value)  refresh,}){
final _that = this;
switch (_that) {
case LaunchesLoadEvent():
return load(_that);case _LaunchesRefreshEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LaunchesLoadEvent value)?  load,TResult? Function( _LaunchesRefreshEvent value)?  refresh,}){
final _that = this;
switch (_that) {
case LaunchesLoadEvent() when load != null:
return load(_that);case _LaunchesRefreshEvent() when refresh != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool reload,  LaunchesFilter? filter)?  load,TResult Function()?  refresh,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LaunchesLoadEvent() when load != null:
return load(_that.reload,_that.filter);case _LaunchesRefreshEvent() when refresh != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool reload,  LaunchesFilter? filter)  load,required TResult Function()  refresh,}) {final _that = this;
switch (_that) {
case LaunchesLoadEvent():
return load(_that.reload,_that.filter);case _LaunchesRefreshEvent():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool reload,  LaunchesFilter? filter)?  load,TResult? Function()?  refresh,}) {final _that = this;
switch (_that) {
case LaunchesLoadEvent() when load != null:
return load(_that.reload,_that.filter);case _LaunchesRefreshEvent() when refresh != null:
return refresh();case _:
  return null;

}
}

}

/// @nodoc


class LaunchesLoadEvent implements LaunchesEvent {
  const LaunchesLoadEvent({this.reload = false, this.filter});
  

@JsonKey() final  bool reload;
 final  LaunchesFilter? filter;

/// Create a copy of LaunchesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LaunchesLoadEventCopyWith<LaunchesLoadEvent> get copyWith => _$LaunchesLoadEventCopyWithImpl<LaunchesLoadEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LaunchesLoadEvent&&(identical(other.reload, reload) || other.reload == reload)&&(identical(other.filter, filter) || other.filter == filter));
}


@override
int get hashCode => Object.hash(runtimeType,reload,filter);

@override
String toString() {
  return 'LaunchesEvent.load(reload: $reload, filter: $filter)';
}


}

/// @nodoc
abstract mixin class $LaunchesLoadEventCopyWith<$Res> implements $LaunchesEventCopyWith<$Res> {
  factory $LaunchesLoadEventCopyWith(LaunchesLoadEvent value, $Res Function(LaunchesLoadEvent) _then) = _$LaunchesLoadEventCopyWithImpl;
@useResult
$Res call({
 bool reload, LaunchesFilter? filter
});




}
/// @nodoc
class _$LaunchesLoadEventCopyWithImpl<$Res>
    implements $LaunchesLoadEventCopyWith<$Res> {
  _$LaunchesLoadEventCopyWithImpl(this._self, this._then);

  final LaunchesLoadEvent _self;
  final $Res Function(LaunchesLoadEvent) _then;

/// Create a copy of LaunchesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reload = null,Object? filter = freezed,}) {
  return _then(LaunchesLoadEvent(
reload: null == reload ? _self.reload : reload // ignore: cast_nullable_to_non_nullable
as bool,filter: freezed == filter ? _self.filter : filter // ignore: cast_nullable_to_non_nullable
as LaunchesFilter?,
  ));
}


}

/// @nodoc


class _LaunchesRefreshEvent implements LaunchesEvent {
  const _LaunchesRefreshEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LaunchesRefreshEvent);
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LaunchesState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LaunchesState()';
}


}

/// @nodoc
class $LaunchesStateCopyWith<$Res>  {
$LaunchesStateCopyWith(LaunchesState _, $Res Function(LaunchesState) __);
}


/// Adds pattern-matching-related methods to [LaunchesState].
extension LaunchesStatePatterns on LaunchesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LaunchesLoadingState value)?  loading,TResult Function( LaunchesSuccessState value)?  success,TResult Function( LaunchesErrorState value)?  error,TResult Function( LaunchesEmptyState value)?  empty,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LaunchesLoadingState() when loading != null:
return loading(_that);case LaunchesSuccessState() when success != null:
return success(_that);case LaunchesErrorState() when error != null:
return error(_that);case LaunchesEmptyState() when empty != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LaunchesLoadingState value)  loading,required TResult Function( LaunchesSuccessState value)  success,required TResult Function( LaunchesErrorState value)  error,required TResult Function( LaunchesEmptyState value)  empty,}){
final _that = this;
switch (_that) {
case LaunchesLoadingState():
return loading(_that);case LaunchesSuccessState():
return success(_that);case LaunchesErrorState():
return error(_that);case LaunchesEmptyState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LaunchesLoadingState value)?  loading,TResult? Function( LaunchesSuccessState value)?  success,TResult? Function( LaunchesErrorState value)?  error,TResult? Function( LaunchesEmptyState value)?  empty,}){
final _that = this;
switch (_that) {
case LaunchesLoadingState() when loading != null:
return loading(_that);case LaunchesSuccessState() when success != null:
return success(_that);case LaunchesErrorState() when error != null:
return error(_that);case LaunchesEmptyState() when empty != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( List<LaunchResource> launches)?  success,TResult Function()?  error,TResult Function()?  empty,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LaunchesLoadingState() when loading != null:
return loading();case LaunchesSuccessState() when success != null:
return success(_that.launches);case LaunchesErrorState() when error != null:
return error();case LaunchesEmptyState() when empty != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( List<LaunchResource> launches)  success,required TResult Function()  error,required TResult Function()  empty,}) {final _that = this;
switch (_that) {
case LaunchesLoadingState():
return loading();case LaunchesSuccessState():
return success(_that.launches);case LaunchesErrorState():
return error();case LaunchesEmptyState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( List<LaunchResource> launches)?  success,TResult? Function()?  error,TResult? Function()?  empty,}) {final _that = this;
switch (_that) {
case LaunchesLoadingState() when loading != null:
return loading();case LaunchesSuccessState() when success != null:
return success(_that.launches);case LaunchesErrorState() when error != null:
return error();case LaunchesEmptyState() when empty != null:
return empty();case _:
  return null;

}
}

}

/// @nodoc


class LaunchesLoadingState implements LaunchesState {
  const LaunchesLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LaunchesLoadingState);
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
  const LaunchesSuccessState({final  List<LaunchResource> launches = const []}): _launches = launches;
  

 final  List<LaunchResource> _launches;
@JsonKey() List<LaunchResource> get launches {
  if (_launches is EqualUnmodifiableListView) return _launches;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_launches);
}


/// Create a copy of LaunchesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LaunchesSuccessStateCopyWith<LaunchesSuccessState> get copyWith => _$LaunchesSuccessStateCopyWithImpl<LaunchesSuccessState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LaunchesSuccessState&&const DeepCollectionEquality().equals(other._launches, _launches));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_launches));

@override
String toString() {
  return 'LaunchesState.success(launches: $launches)';
}


}

/// @nodoc
abstract mixin class $LaunchesSuccessStateCopyWith<$Res> implements $LaunchesStateCopyWith<$Res> {
  factory $LaunchesSuccessStateCopyWith(LaunchesSuccessState value, $Res Function(LaunchesSuccessState) _then) = _$LaunchesSuccessStateCopyWithImpl;
@useResult
$Res call({
 List<LaunchResource> launches
});




}
/// @nodoc
class _$LaunchesSuccessStateCopyWithImpl<$Res>
    implements $LaunchesSuccessStateCopyWith<$Res> {
  _$LaunchesSuccessStateCopyWithImpl(this._self, this._then);

  final LaunchesSuccessState _self;
  final $Res Function(LaunchesSuccessState) _then;

/// Create a copy of LaunchesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? launches = null,}) {
  return _then(LaunchesSuccessState(
launches: null == launches ? _self._launches : launches // ignore: cast_nullable_to_non_nullable
as List<LaunchResource>,
  ));
}


}

/// @nodoc


class LaunchesErrorState implements LaunchesState {
  const LaunchesErrorState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LaunchesErrorState);
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LaunchesEmptyState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LaunchesState.empty()';
}


}




// dart format on

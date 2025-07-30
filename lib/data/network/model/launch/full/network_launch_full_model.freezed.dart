// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_launch_full_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NetworkLaunchFullModel {
  @JsonKey(name: '_id')
  String? get id;
  @JsonKey(name: 'flight_number')
  int? get flightNumber;
  @JsonKey(name: 'mission_name')
  String? get missionName;
  @JsonKey(name: 'mission_id')
  List<dynamic>? get missionId;
  @JsonKey(name: 'upcoming')
  bool? get upcoming;
  @JsonKey(name: 'launch_year')
  String? get launchYear;
  @JsonKey(name: 'launch_date_unix')
  int? get launchDateUnix;
  @TimestampSerializer()
  @JsonKey(name: 'launch_date_utc')
  DateTime? get launchDate;
  @JsonKey(name: 'launch_date_local')
  String? get launchDateLocal;
  @JsonKey(name: 'is_tentative')
  bool? get isTentative;
  @JsonKey(name: 'tentative_max_precision')
  String? get tentativeMaxPrecision;
  @JsonKey(name: 'tbd')
  bool? get tbd;
  @JsonKey(name: 'launch_window')
  int? get launchWindow;
  @JsonKey(name: 'rocket')
  NetworkRocketModel? get rocket;
  @JsonKey(name: 'ships')
  List<dynamic>? get ships;
  @JsonKey(name: 'telemetry')
  NetworkTelemetry? get telemetry;
  @JsonKey(name: 'launch_site')
  NetworkLaunchSite? get launchSite;
  @JsonKey(name: 'launch_success')
  bool? get success;
  @JsonKey(name: 'launch_failure_details')
  NetworkLaunchFailureDetails? get launchFailureDetails;
  @JsonKey(name: 'links')
  NetworkLaunchLinksModel? get links;
  String? get details;
  @TimestampSerializer()
  @JsonKey(name: 'static_fire_date_utc')
  DateTime? get staticFireDateUtc;
  @JsonKey(name: 'static_fire_date_unix')
  int? get staticFireDateUnix;
  NetworkTimeline? get timeline;

  /// Create a copy of NetworkLaunchFullModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NetworkLaunchFullModelCopyWith<NetworkLaunchFullModel> get copyWith =>
      _$NetworkLaunchFullModelCopyWithImpl<NetworkLaunchFullModel>(
          this as NetworkLaunchFullModel, _$identity);

  /// Serializes this NetworkLaunchFullModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NetworkLaunchFullModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.flightNumber, flightNumber) ||
                other.flightNumber == flightNumber) &&
            (identical(other.missionName, missionName) ||
                other.missionName == missionName) &&
            const DeepCollectionEquality().equals(other.missionId, missionId) &&
            (identical(other.upcoming, upcoming) ||
                other.upcoming == upcoming) &&
            (identical(other.launchYear, launchYear) ||
                other.launchYear == launchYear) &&
            (identical(other.launchDateUnix, launchDateUnix) ||
                other.launchDateUnix == launchDateUnix) &&
            (identical(other.launchDate, launchDate) ||
                other.launchDate == launchDate) &&
            (identical(other.launchDateLocal, launchDateLocal) ||
                other.launchDateLocal == launchDateLocal) &&
            (identical(other.isTentative, isTentative) ||
                other.isTentative == isTentative) &&
            (identical(other.tentativeMaxPrecision, tentativeMaxPrecision) ||
                other.tentativeMaxPrecision == tentativeMaxPrecision) &&
            (identical(other.tbd, tbd) || other.tbd == tbd) &&
            (identical(other.launchWindow, launchWindow) ||
                other.launchWindow == launchWindow) &&
            (identical(other.rocket, rocket) || other.rocket == rocket) &&
            const DeepCollectionEquality().equals(other.ships, ships) &&
            (identical(other.telemetry, telemetry) ||
                other.telemetry == telemetry) &&
            (identical(other.launchSite, launchSite) ||
                other.launchSite == launchSite) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.launchFailureDetails, launchFailureDetails) ||
                other.launchFailureDetails == launchFailureDetails) &&
            (identical(other.links, links) || other.links == links) &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.staticFireDateUtc, staticFireDateUtc) ||
                other.staticFireDateUtc == staticFireDateUtc) &&
            (identical(other.staticFireDateUnix, staticFireDateUnix) ||
                other.staticFireDateUnix == staticFireDateUnix) &&
            (identical(other.timeline, timeline) ||
                other.timeline == timeline));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        flightNumber,
        missionName,
        const DeepCollectionEquality().hash(missionId),
        upcoming,
        launchYear,
        launchDateUnix,
        launchDate,
        launchDateLocal,
        isTentative,
        tentativeMaxPrecision,
        tbd,
        launchWindow,
        rocket,
        const DeepCollectionEquality().hash(ships),
        telemetry,
        launchSite,
        success,
        launchFailureDetails,
        links,
        details,
        staticFireDateUtc,
        staticFireDateUnix,
        timeline
      ]);

  @override
  String toString() {
    return 'NetworkLaunchFullModel(id: $id, flightNumber: $flightNumber, missionName: $missionName, missionId: $missionId, upcoming: $upcoming, launchYear: $launchYear, launchDateUnix: $launchDateUnix, launchDate: $launchDate, launchDateLocal: $launchDateLocal, isTentative: $isTentative, tentativeMaxPrecision: $tentativeMaxPrecision, tbd: $tbd, launchWindow: $launchWindow, rocket: $rocket, ships: $ships, telemetry: $telemetry, launchSite: $launchSite, success: $success, launchFailureDetails: $launchFailureDetails, links: $links, details: $details, staticFireDateUtc: $staticFireDateUtc, staticFireDateUnix: $staticFireDateUnix, timeline: $timeline)';
  }
}

/// @nodoc
abstract mixin class $NetworkLaunchFullModelCopyWith<$Res> {
  factory $NetworkLaunchFullModelCopyWith(NetworkLaunchFullModel value,
          $Res Function(NetworkLaunchFullModel) _then) =
      _$NetworkLaunchFullModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'flight_number') int? flightNumber,
      @JsonKey(name: 'mission_name') String? missionName,
      @JsonKey(name: 'mission_id') List<dynamic>? missionId,
      @JsonKey(name: 'upcoming') bool? upcoming,
      @JsonKey(name: 'launch_year') String? launchYear,
      @JsonKey(name: 'launch_date_unix') int? launchDateUnix,
      @TimestampSerializer()
      @JsonKey(name: 'launch_date_utc')
      DateTime? launchDate,
      @JsonKey(name: 'launch_date_local') String? launchDateLocal,
      @JsonKey(name: 'is_tentative') bool? isTentative,
      @JsonKey(name: 'tentative_max_precision') String? tentativeMaxPrecision,
      @JsonKey(name: 'tbd') bool? tbd,
      @JsonKey(name: 'launch_window') int? launchWindow,
      @JsonKey(name: 'rocket') NetworkRocketModel? rocket,
      @JsonKey(name: 'ships') List<dynamic>? ships,
      @JsonKey(name: 'telemetry') NetworkTelemetry? telemetry,
      @JsonKey(name: 'launch_site') NetworkLaunchSite? launchSite,
      @JsonKey(name: 'launch_success') bool? success,
      @JsonKey(name: 'launch_failure_details')
      NetworkLaunchFailureDetails? launchFailureDetails,
      @JsonKey(name: 'links') NetworkLaunchLinksModel? links,
      String? details,
      @TimestampSerializer()
      @JsonKey(name: 'static_fire_date_utc')
      DateTime? staticFireDateUtc,
      @JsonKey(name: 'static_fire_date_unix') int? staticFireDateUnix,
      NetworkTimeline? timeline});

  $NetworkRocketModelCopyWith<$Res>? get rocket;
  $NetworkTelemetryCopyWith<$Res>? get telemetry;
  $NetworkLaunchSiteCopyWith<$Res>? get launchSite;
  $NetworkLaunchFailureDetailsCopyWith<$Res>? get launchFailureDetails;
  $NetworkLaunchLinksModelCopyWith<$Res>? get links;
  $NetworkTimelineCopyWith<$Res>? get timeline;
}

/// @nodoc
class _$NetworkLaunchFullModelCopyWithImpl<$Res>
    implements $NetworkLaunchFullModelCopyWith<$Res> {
  _$NetworkLaunchFullModelCopyWithImpl(this._self, this._then);

  final NetworkLaunchFullModel _self;
  final $Res Function(NetworkLaunchFullModel) _then;

  /// Create a copy of NetworkLaunchFullModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? flightNumber = freezed,
    Object? missionName = freezed,
    Object? missionId = freezed,
    Object? upcoming = freezed,
    Object? launchYear = freezed,
    Object? launchDateUnix = freezed,
    Object? launchDate = freezed,
    Object? launchDateLocal = freezed,
    Object? isTentative = freezed,
    Object? tentativeMaxPrecision = freezed,
    Object? tbd = freezed,
    Object? launchWindow = freezed,
    Object? rocket = freezed,
    Object? ships = freezed,
    Object? telemetry = freezed,
    Object? launchSite = freezed,
    Object? success = freezed,
    Object? launchFailureDetails = freezed,
    Object? links = freezed,
    Object? details = freezed,
    Object? staticFireDateUtc = freezed,
    Object? staticFireDateUnix = freezed,
    Object? timeline = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      flightNumber: freezed == flightNumber
          ? _self.flightNumber
          : flightNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      missionName: freezed == missionName
          ? _self.missionName
          : missionName // ignore: cast_nullable_to_non_nullable
              as String?,
      missionId: freezed == missionId
          ? _self.missionId
          : missionId // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      upcoming: freezed == upcoming
          ? _self.upcoming
          : upcoming // ignore: cast_nullable_to_non_nullable
              as bool?,
      launchYear: freezed == launchYear
          ? _self.launchYear
          : launchYear // ignore: cast_nullable_to_non_nullable
              as String?,
      launchDateUnix: freezed == launchDateUnix
          ? _self.launchDateUnix
          : launchDateUnix // ignore: cast_nullable_to_non_nullable
              as int?,
      launchDate: freezed == launchDate
          ? _self.launchDate
          : launchDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      launchDateLocal: freezed == launchDateLocal
          ? _self.launchDateLocal
          : launchDateLocal // ignore: cast_nullable_to_non_nullable
              as String?,
      isTentative: freezed == isTentative
          ? _self.isTentative
          : isTentative // ignore: cast_nullable_to_non_nullable
              as bool?,
      tentativeMaxPrecision: freezed == tentativeMaxPrecision
          ? _self.tentativeMaxPrecision
          : tentativeMaxPrecision // ignore: cast_nullable_to_non_nullable
              as String?,
      tbd: freezed == tbd
          ? _self.tbd
          : tbd // ignore: cast_nullable_to_non_nullable
              as bool?,
      launchWindow: freezed == launchWindow
          ? _self.launchWindow
          : launchWindow // ignore: cast_nullable_to_non_nullable
              as int?,
      rocket: freezed == rocket
          ? _self.rocket
          : rocket // ignore: cast_nullable_to_non_nullable
              as NetworkRocketModel?,
      ships: freezed == ships
          ? _self.ships
          : ships // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      telemetry: freezed == telemetry
          ? _self.telemetry
          : telemetry // ignore: cast_nullable_to_non_nullable
              as NetworkTelemetry?,
      launchSite: freezed == launchSite
          ? _self.launchSite
          : launchSite // ignore: cast_nullable_to_non_nullable
              as NetworkLaunchSite?,
      success: freezed == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      launchFailureDetails: freezed == launchFailureDetails
          ? _self.launchFailureDetails
          : launchFailureDetails // ignore: cast_nullable_to_non_nullable
              as NetworkLaunchFailureDetails?,
      links: freezed == links
          ? _self.links
          : links // ignore: cast_nullable_to_non_nullable
              as NetworkLaunchLinksModel?,
      details: freezed == details
          ? _self.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      staticFireDateUtc: freezed == staticFireDateUtc
          ? _self.staticFireDateUtc
          : staticFireDateUtc // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      staticFireDateUnix: freezed == staticFireDateUnix
          ? _self.staticFireDateUnix
          : staticFireDateUnix // ignore: cast_nullable_to_non_nullable
              as int?,
      timeline: freezed == timeline
          ? _self.timeline
          : timeline // ignore: cast_nullable_to_non_nullable
              as NetworkTimeline?,
    ));
  }

  /// Create a copy of NetworkLaunchFullModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NetworkRocketModelCopyWith<$Res>? get rocket {
    if (_self.rocket == null) {
      return null;
    }

    return $NetworkRocketModelCopyWith<$Res>(_self.rocket!, (value) {
      return _then(_self.copyWith(rocket: value));
    });
  }

  /// Create a copy of NetworkLaunchFullModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NetworkTelemetryCopyWith<$Res>? get telemetry {
    if (_self.telemetry == null) {
      return null;
    }

    return $NetworkTelemetryCopyWith<$Res>(_self.telemetry!, (value) {
      return _then(_self.copyWith(telemetry: value));
    });
  }

  /// Create a copy of NetworkLaunchFullModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NetworkLaunchSiteCopyWith<$Res>? get launchSite {
    if (_self.launchSite == null) {
      return null;
    }

    return $NetworkLaunchSiteCopyWith<$Res>(_self.launchSite!, (value) {
      return _then(_self.copyWith(launchSite: value));
    });
  }

  /// Create a copy of NetworkLaunchFullModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NetworkLaunchFailureDetailsCopyWith<$Res>? get launchFailureDetails {
    if (_self.launchFailureDetails == null) {
      return null;
    }

    return $NetworkLaunchFailureDetailsCopyWith<$Res>(
        _self.launchFailureDetails!, (value) {
      return _then(_self.copyWith(launchFailureDetails: value));
    });
  }

  /// Create a copy of NetworkLaunchFullModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NetworkLaunchLinksModelCopyWith<$Res>? get links {
    if (_self.links == null) {
      return null;
    }

    return $NetworkLaunchLinksModelCopyWith<$Res>(_self.links!, (value) {
      return _then(_self.copyWith(links: value));
    });
  }

  /// Create a copy of NetworkLaunchFullModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NetworkTimelineCopyWith<$Res>? get timeline {
    if (_self.timeline == null) {
      return null;
    }

    return $NetworkTimelineCopyWith<$Res>(_self.timeline!, (value) {
      return _then(_self.copyWith(timeline: value));
    });
  }
}

/// Adds pattern-matching-related methods to [NetworkLaunchFullModel].
extension NetworkLaunchFullModelPatterns on NetworkLaunchFullModel {
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
    TResult Function(_NetworkLaunchFullModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NetworkLaunchFullModel() when $default != null:
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
    TResult Function(_NetworkLaunchFullModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkLaunchFullModel():
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
    TResult? Function(_NetworkLaunchFullModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkLaunchFullModel() when $default != null:
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
    TResult Function(
            @JsonKey(name: '_id') String? id,
            @JsonKey(name: 'flight_number') int? flightNumber,
            @JsonKey(name: 'mission_name') String? missionName,
            @JsonKey(name: 'mission_id') List<dynamic>? missionId,
            @JsonKey(name: 'upcoming') bool? upcoming,
            @JsonKey(name: 'launch_year') String? launchYear,
            @JsonKey(name: 'launch_date_unix') int? launchDateUnix,
            @TimestampSerializer()
            @JsonKey(name: 'launch_date_utc')
            DateTime? launchDate,
            @JsonKey(name: 'launch_date_local') String? launchDateLocal,
            @JsonKey(name: 'is_tentative') bool? isTentative,
            @JsonKey(name: 'tentative_max_precision')
            String? tentativeMaxPrecision,
            @JsonKey(name: 'tbd') bool? tbd,
            @JsonKey(name: 'launch_window') int? launchWindow,
            @JsonKey(name: 'rocket') NetworkRocketModel? rocket,
            @JsonKey(name: 'ships') List<dynamic>? ships,
            @JsonKey(name: 'telemetry') NetworkTelemetry? telemetry,
            @JsonKey(name: 'launch_site') NetworkLaunchSite? launchSite,
            @JsonKey(name: 'launch_success') bool? success,
            @JsonKey(name: 'launch_failure_details')
            NetworkLaunchFailureDetails? launchFailureDetails,
            @JsonKey(name: 'links') NetworkLaunchLinksModel? links,
            String? details,
            @TimestampSerializer()
            @JsonKey(name: 'static_fire_date_utc')
            DateTime? staticFireDateUtc,
            @JsonKey(name: 'static_fire_date_unix') int? staticFireDateUnix,
            NetworkTimeline? timeline)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NetworkLaunchFullModel() when $default != null:
        return $default(
            _that.id,
            _that.flightNumber,
            _that.missionName,
            _that.missionId,
            _that.upcoming,
            _that.launchYear,
            _that.launchDateUnix,
            _that.launchDate,
            _that.launchDateLocal,
            _that.isTentative,
            _that.tentativeMaxPrecision,
            _that.tbd,
            _that.launchWindow,
            _that.rocket,
            _that.ships,
            _that.telemetry,
            _that.launchSite,
            _that.success,
            _that.launchFailureDetails,
            _that.links,
            _that.details,
            _that.staticFireDateUtc,
            _that.staticFireDateUnix,
            _that.timeline);
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
    TResult Function(
            @JsonKey(name: '_id') String? id,
            @JsonKey(name: 'flight_number') int? flightNumber,
            @JsonKey(name: 'mission_name') String? missionName,
            @JsonKey(name: 'mission_id') List<dynamic>? missionId,
            @JsonKey(name: 'upcoming') bool? upcoming,
            @JsonKey(name: 'launch_year') String? launchYear,
            @JsonKey(name: 'launch_date_unix') int? launchDateUnix,
            @TimestampSerializer()
            @JsonKey(name: 'launch_date_utc')
            DateTime? launchDate,
            @JsonKey(name: 'launch_date_local') String? launchDateLocal,
            @JsonKey(name: 'is_tentative') bool? isTentative,
            @JsonKey(name: 'tentative_max_precision')
            String? tentativeMaxPrecision,
            @JsonKey(name: 'tbd') bool? tbd,
            @JsonKey(name: 'launch_window') int? launchWindow,
            @JsonKey(name: 'rocket') NetworkRocketModel? rocket,
            @JsonKey(name: 'ships') List<dynamic>? ships,
            @JsonKey(name: 'telemetry') NetworkTelemetry? telemetry,
            @JsonKey(name: 'launch_site') NetworkLaunchSite? launchSite,
            @JsonKey(name: 'launch_success') bool? success,
            @JsonKey(name: 'launch_failure_details')
            NetworkLaunchFailureDetails? launchFailureDetails,
            @JsonKey(name: 'links') NetworkLaunchLinksModel? links,
            String? details,
            @TimestampSerializer()
            @JsonKey(name: 'static_fire_date_utc')
            DateTime? staticFireDateUtc,
            @JsonKey(name: 'static_fire_date_unix') int? staticFireDateUnix,
            NetworkTimeline? timeline)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkLaunchFullModel():
        return $default(
            _that.id,
            _that.flightNumber,
            _that.missionName,
            _that.missionId,
            _that.upcoming,
            _that.launchYear,
            _that.launchDateUnix,
            _that.launchDate,
            _that.launchDateLocal,
            _that.isTentative,
            _that.tentativeMaxPrecision,
            _that.tbd,
            _that.launchWindow,
            _that.rocket,
            _that.ships,
            _that.telemetry,
            _that.launchSite,
            _that.success,
            _that.launchFailureDetails,
            _that.links,
            _that.details,
            _that.staticFireDateUtc,
            _that.staticFireDateUnix,
            _that.timeline);
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
    TResult? Function(
            @JsonKey(name: '_id') String? id,
            @JsonKey(name: 'flight_number') int? flightNumber,
            @JsonKey(name: 'mission_name') String? missionName,
            @JsonKey(name: 'mission_id') List<dynamic>? missionId,
            @JsonKey(name: 'upcoming') bool? upcoming,
            @JsonKey(name: 'launch_year') String? launchYear,
            @JsonKey(name: 'launch_date_unix') int? launchDateUnix,
            @TimestampSerializer()
            @JsonKey(name: 'launch_date_utc')
            DateTime? launchDate,
            @JsonKey(name: 'launch_date_local') String? launchDateLocal,
            @JsonKey(name: 'is_tentative') bool? isTentative,
            @JsonKey(name: 'tentative_max_precision')
            String? tentativeMaxPrecision,
            @JsonKey(name: 'tbd') bool? tbd,
            @JsonKey(name: 'launch_window') int? launchWindow,
            @JsonKey(name: 'rocket') NetworkRocketModel? rocket,
            @JsonKey(name: 'ships') List<dynamic>? ships,
            @JsonKey(name: 'telemetry') NetworkTelemetry? telemetry,
            @JsonKey(name: 'launch_site') NetworkLaunchSite? launchSite,
            @JsonKey(name: 'launch_success') bool? success,
            @JsonKey(name: 'launch_failure_details')
            NetworkLaunchFailureDetails? launchFailureDetails,
            @JsonKey(name: 'links') NetworkLaunchLinksModel? links,
            String? details,
            @TimestampSerializer()
            @JsonKey(name: 'static_fire_date_utc')
            DateTime? staticFireDateUtc,
            @JsonKey(name: 'static_fire_date_unix') int? staticFireDateUnix,
            NetworkTimeline? timeline)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkLaunchFullModel() when $default != null:
        return $default(
            _that.id,
            _that.flightNumber,
            _that.missionName,
            _that.missionId,
            _that.upcoming,
            _that.launchYear,
            _that.launchDateUnix,
            _that.launchDate,
            _that.launchDateLocal,
            _that.isTentative,
            _that.tentativeMaxPrecision,
            _that.tbd,
            _that.launchWindow,
            _that.rocket,
            _that.ships,
            _that.telemetry,
            _that.launchSite,
            _that.success,
            _that.launchFailureDetails,
            _that.links,
            _that.details,
            _that.staticFireDateUtc,
            _that.staticFireDateUnix,
            _that.timeline);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _NetworkLaunchFullModel implements NetworkLaunchFullModel {
  const _NetworkLaunchFullModel(
      {@JsonKey(name: '_id') this.id,
      @JsonKey(name: 'flight_number') this.flightNumber,
      @JsonKey(name: 'mission_name') this.missionName,
      @JsonKey(name: 'mission_id') final List<dynamic>? missionId,
      @JsonKey(name: 'upcoming') this.upcoming,
      @JsonKey(name: 'launch_year') this.launchYear,
      @JsonKey(name: 'launch_date_unix') this.launchDateUnix,
      @TimestampSerializer() @JsonKey(name: 'launch_date_utc') this.launchDate,
      @JsonKey(name: 'launch_date_local') this.launchDateLocal,
      @JsonKey(name: 'is_tentative') this.isTentative,
      @JsonKey(name: 'tentative_max_precision') this.tentativeMaxPrecision,
      @JsonKey(name: 'tbd') this.tbd,
      @JsonKey(name: 'launch_window') this.launchWindow,
      @JsonKey(name: 'rocket') this.rocket,
      @JsonKey(name: 'ships') final List<dynamic>? ships,
      @JsonKey(name: 'telemetry') this.telemetry,
      @JsonKey(name: 'launch_site') this.launchSite,
      @JsonKey(name: 'launch_success') this.success,
      @JsonKey(name: 'launch_failure_details') this.launchFailureDetails,
      @JsonKey(name: 'links') this.links,
      this.details,
      @TimestampSerializer()
      @JsonKey(name: 'static_fire_date_utc')
      this.staticFireDateUtc,
      @JsonKey(name: 'static_fire_date_unix') this.staticFireDateUnix,
      this.timeline})
      : _missionId = missionId,
        _ships = ships;
  factory _NetworkLaunchFullModel.fromJson(Map<String, dynamic> json) =>
      _$NetworkLaunchFullModelFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @JsonKey(name: 'flight_number')
  final int? flightNumber;
  @override
  @JsonKey(name: 'mission_name')
  final String? missionName;
  final List<dynamic>? _missionId;
  @override
  @JsonKey(name: 'mission_id')
  List<dynamic>? get missionId {
    final value = _missionId;
    if (value == null) return null;
    if (_missionId is EqualUnmodifiableListView) return _missionId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'upcoming')
  final bool? upcoming;
  @override
  @JsonKey(name: 'launch_year')
  final String? launchYear;
  @override
  @JsonKey(name: 'launch_date_unix')
  final int? launchDateUnix;
  @override
  @TimestampSerializer()
  @JsonKey(name: 'launch_date_utc')
  final DateTime? launchDate;
  @override
  @JsonKey(name: 'launch_date_local')
  final String? launchDateLocal;
  @override
  @JsonKey(name: 'is_tentative')
  final bool? isTentative;
  @override
  @JsonKey(name: 'tentative_max_precision')
  final String? tentativeMaxPrecision;
  @override
  @JsonKey(name: 'tbd')
  final bool? tbd;
  @override
  @JsonKey(name: 'launch_window')
  final int? launchWindow;
  @override
  @JsonKey(name: 'rocket')
  final NetworkRocketModel? rocket;
  final List<dynamic>? _ships;
  @override
  @JsonKey(name: 'ships')
  List<dynamic>? get ships {
    final value = _ships;
    if (value == null) return null;
    if (_ships is EqualUnmodifiableListView) return _ships;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'telemetry')
  final NetworkTelemetry? telemetry;
  @override
  @JsonKey(name: 'launch_site')
  final NetworkLaunchSite? launchSite;
  @override
  @JsonKey(name: 'launch_success')
  final bool? success;
  @override
  @JsonKey(name: 'launch_failure_details')
  final NetworkLaunchFailureDetails? launchFailureDetails;
  @override
  @JsonKey(name: 'links')
  final NetworkLaunchLinksModel? links;
  @override
  final String? details;
  @override
  @TimestampSerializer()
  @JsonKey(name: 'static_fire_date_utc')
  final DateTime? staticFireDateUtc;
  @override
  @JsonKey(name: 'static_fire_date_unix')
  final int? staticFireDateUnix;
  @override
  final NetworkTimeline? timeline;

  /// Create a copy of NetworkLaunchFullModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NetworkLaunchFullModelCopyWith<_NetworkLaunchFullModel> get copyWith =>
      __$NetworkLaunchFullModelCopyWithImpl<_NetworkLaunchFullModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NetworkLaunchFullModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NetworkLaunchFullModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.flightNumber, flightNumber) ||
                other.flightNumber == flightNumber) &&
            (identical(other.missionName, missionName) ||
                other.missionName == missionName) &&
            const DeepCollectionEquality()
                .equals(other._missionId, _missionId) &&
            (identical(other.upcoming, upcoming) ||
                other.upcoming == upcoming) &&
            (identical(other.launchYear, launchYear) ||
                other.launchYear == launchYear) &&
            (identical(other.launchDateUnix, launchDateUnix) ||
                other.launchDateUnix == launchDateUnix) &&
            (identical(other.launchDate, launchDate) ||
                other.launchDate == launchDate) &&
            (identical(other.launchDateLocal, launchDateLocal) ||
                other.launchDateLocal == launchDateLocal) &&
            (identical(other.isTentative, isTentative) ||
                other.isTentative == isTentative) &&
            (identical(other.tentativeMaxPrecision, tentativeMaxPrecision) ||
                other.tentativeMaxPrecision == tentativeMaxPrecision) &&
            (identical(other.tbd, tbd) || other.tbd == tbd) &&
            (identical(other.launchWindow, launchWindow) ||
                other.launchWindow == launchWindow) &&
            (identical(other.rocket, rocket) || other.rocket == rocket) &&
            const DeepCollectionEquality().equals(other._ships, _ships) &&
            (identical(other.telemetry, telemetry) ||
                other.telemetry == telemetry) &&
            (identical(other.launchSite, launchSite) ||
                other.launchSite == launchSite) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.launchFailureDetails, launchFailureDetails) ||
                other.launchFailureDetails == launchFailureDetails) &&
            (identical(other.links, links) || other.links == links) &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.staticFireDateUtc, staticFireDateUtc) ||
                other.staticFireDateUtc == staticFireDateUtc) &&
            (identical(other.staticFireDateUnix, staticFireDateUnix) ||
                other.staticFireDateUnix == staticFireDateUnix) &&
            (identical(other.timeline, timeline) ||
                other.timeline == timeline));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        flightNumber,
        missionName,
        const DeepCollectionEquality().hash(_missionId),
        upcoming,
        launchYear,
        launchDateUnix,
        launchDate,
        launchDateLocal,
        isTentative,
        tentativeMaxPrecision,
        tbd,
        launchWindow,
        rocket,
        const DeepCollectionEquality().hash(_ships),
        telemetry,
        launchSite,
        success,
        launchFailureDetails,
        links,
        details,
        staticFireDateUtc,
        staticFireDateUnix,
        timeline
      ]);

  @override
  String toString() {
    return 'NetworkLaunchFullModel(id: $id, flightNumber: $flightNumber, missionName: $missionName, missionId: $missionId, upcoming: $upcoming, launchYear: $launchYear, launchDateUnix: $launchDateUnix, launchDate: $launchDate, launchDateLocal: $launchDateLocal, isTentative: $isTentative, tentativeMaxPrecision: $tentativeMaxPrecision, tbd: $tbd, launchWindow: $launchWindow, rocket: $rocket, ships: $ships, telemetry: $telemetry, launchSite: $launchSite, success: $success, launchFailureDetails: $launchFailureDetails, links: $links, details: $details, staticFireDateUtc: $staticFireDateUtc, staticFireDateUnix: $staticFireDateUnix, timeline: $timeline)';
  }
}

/// @nodoc
abstract mixin class _$NetworkLaunchFullModelCopyWith<$Res>
    implements $NetworkLaunchFullModelCopyWith<$Res> {
  factory _$NetworkLaunchFullModelCopyWith(_NetworkLaunchFullModel value,
          $Res Function(_NetworkLaunchFullModel) _then) =
      __$NetworkLaunchFullModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'flight_number') int? flightNumber,
      @JsonKey(name: 'mission_name') String? missionName,
      @JsonKey(name: 'mission_id') List<dynamic>? missionId,
      @JsonKey(name: 'upcoming') bool? upcoming,
      @JsonKey(name: 'launch_year') String? launchYear,
      @JsonKey(name: 'launch_date_unix') int? launchDateUnix,
      @TimestampSerializer()
      @JsonKey(name: 'launch_date_utc')
      DateTime? launchDate,
      @JsonKey(name: 'launch_date_local') String? launchDateLocal,
      @JsonKey(name: 'is_tentative') bool? isTentative,
      @JsonKey(name: 'tentative_max_precision') String? tentativeMaxPrecision,
      @JsonKey(name: 'tbd') bool? tbd,
      @JsonKey(name: 'launch_window') int? launchWindow,
      @JsonKey(name: 'rocket') NetworkRocketModel? rocket,
      @JsonKey(name: 'ships') List<dynamic>? ships,
      @JsonKey(name: 'telemetry') NetworkTelemetry? telemetry,
      @JsonKey(name: 'launch_site') NetworkLaunchSite? launchSite,
      @JsonKey(name: 'launch_success') bool? success,
      @JsonKey(name: 'launch_failure_details')
      NetworkLaunchFailureDetails? launchFailureDetails,
      @JsonKey(name: 'links') NetworkLaunchLinksModel? links,
      String? details,
      @TimestampSerializer()
      @JsonKey(name: 'static_fire_date_utc')
      DateTime? staticFireDateUtc,
      @JsonKey(name: 'static_fire_date_unix') int? staticFireDateUnix,
      NetworkTimeline? timeline});

  @override
  $NetworkRocketModelCopyWith<$Res>? get rocket;
  @override
  $NetworkTelemetryCopyWith<$Res>? get telemetry;
  @override
  $NetworkLaunchSiteCopyWith<$Res>? get launchSite;
  @override
  $NetworkLaunchFailureDetailsCopyWith<$Res>? get launchFailureDetails;
  @override
  $NetworkLaunchLinksModelCopyWith<$Res>? get links;
  @override
  $NetworkTimelineCopyWith<$Res>? get timeline;
}

/// @nodoc
class __$NetworkLaunchFullModelCopyWithImpl<$Res>
    implements _$NetworkLaunchFullModelCopyWith<$Res> {
  __$NetworkLaunchFullModelCopyWithImpl(this._self, this._then);

  final _NetworkLaunchFullModel _self;
  final $Res Function(_NetworkLaunchFullModel) _then;

  /// Create a copy of NetworkLaunchFullModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? flightNumber = freezed,
    Object? missionName = freezed,
    Object? missionId = freezed,
    Object? upcoming = freezed,
    Object? launchYear = freezed,
    Object? launchDateUnix = freezed,
    Object? launchDate = freezed,
    Object? launchDateLocal = freezed,
    Object? isTentative = freezed,
    Object? tentativeMaxPrecision = freezed,
    Object? tbd = freezed,
    Object? launchWindow = freezed,
    Object? rocket = freezed,
    Object? ships = freezed,
    Object? telemetry = freezed,
    Object? launchSite = freezed,
    Object? success = freezed,
    Object? launchFailureDetails = freezed,
    Object? links = freezed,
    Object? details = freezed,
    Object? staticFireDateUtc = freezed,
    Object? staticFireDateUnix = freezed,
    Object? timeline = freezed,
  }) {
    return _then(_NetworkLaunchFullModel(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      flightNumber: freezed == flightNumber
          ? _self.flightNumber
          : flightNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      missionName: freezed == missionName
          ? _self.missionName
          : missionName // ignore: cast_nullable_to_non_nullable
              as String?,
      missionId: freezed == missionId
          ? _self._missionId
          : missionId // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      upcoming: freezed == upcoming
          ? _self.upcoming
          : upcoming // ignore: cast_nullable_to_non_nullable
              as bool?,
      launchYear: freezed == launchYear
          ? _self.launchYear
          : launchYear // ignore: cast_nullable_to_non_nullable
              as String?,
      launchDateUnix: freezed == launchDateUnix
          ? _self.launchDateUnix
          : launchDateUnix // ignore: cast_nullable_to_non_nullable
              as int?,
      launchDate: freezed == launchDate
          ? _self.launchDate
          : launchDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      launchDateLocal: freezed == launchDateLocal
          ? _self.launchDateLocal
          : launchDateLocal // ignore: cast_nullable_to_non_nullable
              as String?,
      isTentative: freezed == isTentative
          ? _self.isTentative
          : isTentative // ignore: cast_nullable_to_non_nullable
              as bool?,
      tentativeMaxPrecision: freezed == tentativeMaxPrecision
          ? _self.tentativeMaxPrecision
          : tentativeMaxPrecision // ignore: cast_nullable_to_non_nullable
              as String?,
      tbd: freezed == tbd
          ? _self.tbd
          : tbd // ignore: cast_nullable_to_non_nullable
              as bool?,
      launchWindow: freezed == launchWindow
          ? _self.launchWindow
          : launchWindow // ignore: cast_nullable_to_non_nullable
              as int?,
      rocket: freezed == rocket
          ? _self.rocket
          : rocket // ignore: cast_nullable_to_non_nullable
              as NetworkRocketModel?,
      ships: freezed == ships
          ? _self._ships
          : ships // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      telemetry: freezed == telemetry
          ? _self.telemetry
          : telemetry // ignore: cast_nullable_to_non_nullable
              as NetworkTelemetry?,
      launchSite: freezed == launchSite
          ? _self.launchSite
          : launchSite // ignore: cast_nullable_to_non_nullable
              as NetworkLaunchSite?,
      success: freezed == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      launchFailureDetails: freezed == launchFailureDetails
          ? _self.launchFailureDetails
          : launchFailureDetails // ignore: cast_nullable_to_non_nullable
              as NetworkLaunchFailureDetails?,
      links: freezed == links
          ? _self.links
          : links // ignore: cast_nullable_to_non_nullable
              as NetworkLaunchLinksModel?,
      details: freezed == details
          ? _self.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      staticFireDateUtc: freezed == staticFireDateUtc
          ? _self.staticFireDateUtc
          : staticFireDateUtc // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      staticFireDateUnix: freezed == staticFireDateUnix
          ? _self.staticFireDateUnix
          : staticFireDateUnix // ignore: cast_nullable_to_non_nullable
              as int?,
      timeline: freezed == timeline
          ? _self.timeline
          : timeline // ignore: cast_nullable_to_non_nullable
              as NetworkTimeline?,
    ));
  }

  /// Create a copy of NetworkLaunchFullModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NetworkRocketModelCopyWith<$Res>? get rocket {
    if (_self.rocket == null) {
      return null;
    }

    return $NetworkRocketModelCopyWith<$Res>(_self.rocket!, (value) {
      return _then(_self.copyWith(rocket: value));
    });
  }

  /// Create a copy of NetworkLaunchFullModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NetworkTelemetryCopyWith<$Res>? get telemetry {
    if (_self.telemetry == null) {
      return null;
    }

    return $NetworkTelemetryCopyWith<$Res>(_self.telemetry!, (value) {
      return _then(_self.copyWith(telemetry: value));
    });
  }

  /// Create a copy of NetworkLaunchFullModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NetworkLaunchSiteCopyWith<$Res>? get launchSite {
    if (_self.launchSite == null) {
      return null;
    }

    return $NetworkLaunchSiteCopyWith<$Res>(_self.launchSite!, (value) {
      return _then(_self.copyWith(launchSite: value));
    });
  }

  /// Create a copy of NetworkLaunchFullModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NetworkLaunchFailureDetailsCopyWith<$Res>? get launchFailureDetails {
    if (_self.launchFailureDetails == null) {
      return null;
    }

    return $NetworkLaunchFailureDetailsCopyWith<$Res>(
        _self.launchFailureDetails!, (value) {
      return _then(_self.copyWith(launchFailureDetails: value));
    });
  }

  /// Create a copy of NetworkLaunchFullModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NetworkLaunchLinksModelCopyWith<$Res>? get links {
    if (_self.links == null) {
      return null;
    }

    return $NetworkLaunchLinksModelCopyWith<$Res>(_self.links!, (value) {
      return _then(_self.copyWith(links: value));
    });
  }

  /// Create a copy of NetworkLaunchFullModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NetworkTimelineCopyWith<$Res>? get timeline {
    if (_self.timeline == null) {
      return null;
    }

    return $NetworkTimelineCopyWith<$Res>(_self.timeline!, (value) {
      return _then(_self.copyWith(timeline: value));
    });
  }
}

/// @nodoc
mixin _$NetworkFirstStage {
  List<NetworkCore>? get cores;

  /// Create a copy of NetworkFirstStage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NetworkFirstStageCopyWith<NetworkFirstStage> get copyWith =>
      _$NetworkFirstStageCopyWithImpl<NetworkFirstStage>(
          this as NetworkFirstStage, _$identity);

  /// Serializes this NetworkFirstStage to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NetworkFirstStage &&
            const DeepCollectionEquality().equals(other.cores, cores));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(cores));

  @override
  String toString() {
    return 'NetworkFirstStage(cores: $cores)';
  }
}

/// @nodoc
abstract mixin class $NetworkFirstStageCopyWith<$Res> {
  factory $NetworkFirstStageCopyWith(
          NetworkFirstStage value, $Res Function(NetworkFirstStage) _then) =
      _$NetworkFirstStageCopyWithImpl;
  @useResult
  $Res call({List<NetworkCore>? cores});
}

/// @nodoc
class _$NetworkFirstStageCopyWithImpl<$Res>
    implements $NetworkFirstStageCopyWith<$Res> {
  _$NetworkFirstStageCopyWithImpl(this._self, this._then);

  final NetworkFirstStage _self;
  final $Res Function(NetworkFirstStage) _then;

  /// Create a copy of NetworkFirstStage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cores = freezed,
  }) {
    return _then(_self.copyWith(
      cores: freezed == cores
          ? _self.cores
          : cores // ignore: cast_nullable_to_non_nullable
              as List<NetworkCore>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [NetworkFirstStage].
extension NetworkFirstStagePatterns on NetworkFirstStage {
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
    TResult Function(_NetworkFirstStage value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NetworkFirstStage() when $default != null:
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
    TResult Function(_NetworkFirstStage value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkFirstStage():
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
    TResult? Function(_NetworkFirstStage value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkFirstStage() when $default != null:
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
    TResult Function(List<NetworkCore>? cores)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NetworkFirstStage() when $default != null:
        return $default(_that.cores);
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
    TResult Function(List<NetworkCore>? cores) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkFirstStage():
        return $default(_that.cores);
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
    TResult? Function(List<NetworkCore>? cores)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkFirstStage() when $default != null:
        return $default(_that.cores);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _NetworkFirstStage implements NetworkFirstStage {
  const _NetworkFirstStage({required final List<NetworkCore>? cores})
      : _cores = cores;
  factory _NetworkFirstStage.fromJson(Map<String, dynamic> json) =>
      _$NetworkFirstStageFromJson(json);

  final List<NetworkCore>? _cores;
  @override
  List<NetworkCore>? get cores {
    final value = _cores;
    if (value == null) return null;
    if (_cores is EqualUnmodifiableListView) return _cores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of NetworkFirstStage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NetworkFirstStageCopyWith<_NetworkFirstStage> get copyWith =>
      __$NetworkFirstStageCopyWithImpl<_NetworkFirstStage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NetworkFirstStageToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NetworkFirstStage &&
            const DeepCollectionEquality().equals(other._cores, _cores));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cores));

  @override
  String toString() {
    return 'NetworkFirstStage(cores: $cores)';
  }
}

/// @nodoc
abstract mixin class _$NetworkFirstStageCopyWith<$Res>
    implements $NetworkFirstStageCopyWith<$Res> {
  factory _$NetworkFirstStageCopyWith(
          _NetworkFirstStage value, $Res Function(_NetworkFirstStage) _then) =
      __$NetworkFirstStageCopyWithImpl;
  @override
  @useResult
  $Res call({List<NetworkCore>? cores});
}

/// @nodoc
class __$NetworkFirstStageCopyWithImpl<$Res>
    implements _$NetworkFirstStageCopyWith<$Res> {
  __$NetworkFirstStageCopyWithImpl(this._self, this._then);

  final _NetworkFirstStage _self;
  final $Res Function(_NetworkFirstStage) _then;

  /// Create a copy of NetworkFirstStage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? cores = freezed,
  }) {
    return _then(_NetworkFirstStage(
      cores: freezed == cores
          ? _self._cores
          : cores // ignore: cast_nullable_to_non_nullable
              as List<NetworkCore>?,
    ));
  }
}

/// @nodoc
mixin _$NetworkCore {
  @JsonKey(name: 'core_serial')
  String? get coreSerial;
  @JsonKey(name: 'flight')
  int? get flight;
  @JsonKey(name: 'block')
  String? get block;
  @JsonKey(name: 'gridfins')
  bool? get gridfins;
  @JsonKey(name: 'legs')
  bool? get legs;
  @JsonKey(name: 'reused')
  bool? get reused;
  @JsonKey(name: 'land_success')
  bool? get landSuccess;
  @JsonKey(name: 'landing_intent')
  bool? get landingIntent;
  @JsonKey(name: 'landing_type')
  String? get landingType;
  @JsonKey(name: 'landing_vehicle')
  String? get landingVehicle;

  /// Create a copy of NetworkCore
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NetworkCoreCopyWith<NetworkCore> get copyWith =>
      _$NetworkCoreCopyWithImpl<NetworkCore>(this as NetworkCore, _$identity);

  /// Serializes this NetworkCore to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NetworkCore &&
            (identical(other.coreSerial, coreSerial) ||
                other.coreSerial == coreSerial) &&
            (identical(other.flight, flight) || other.flight == flight) &&
            (identical(other.block, block) || other.block == block) &&
            (identical(other.gridfins, gridfins) ||
                other.gridfins == gridfins) &&
            (identical(other.legs, legs) || other.legs == legs) &&
            (identical(other.reused, reused) || other.reused == reused) &&
            (identical(other.landSuccess, landSuccess) ||
                other.landSuccess == landSuccess) &&
            (identical(other.landingIntent, landingIntent) ||
                other.landingIntent == landingIntent) &&
            (identical(other.landingType, landingType) ||
                other.landingType == landingType) &&
            (identical(other.landingVehicle, landingVehicle) ||
                other.landingVehicle == landingVehicle));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      coreSerial,
      flight,
      block,
      gridfins,
      legs,
      reused,
      landSuccess,
      landingIntent,
      landingType,
      landingVehicle);

  @override
  String toString() {
    return 'NetworkCore(coreSerial: $coreSerial, flight: $flight, block: $block, gridfins: $gridfins, legs: $legs, reused: $reused, landSuccess: $landSuccess, landingIntent: $landingIntent, landingType: $landingType, landingVehicle: $landingVehicle)';
  }
}

/// @nodoc
abstract mixin class $NetworkCoreCopyWith<$Res> {
  factory $NetworkCoreCopyWith(
          NetworkCore value, $Res Function(NetworkCore) _then) =
      _$NetworkCoreCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'core_serial') String? coreSerial,
      @JsonKey(name: 'flight') int? flight,
      @JsonKey(name: 'block') String? block,
      @JsonKey(name: 'gridfins') bool? gridfins,
      @JsonKey(name: 'legs') bool? legs,
      @JsonKey(name: 'reused') bool? reused,
      @JsonKey(name: 'land_success') bool? landSuccess,
      @JsonKey(name: 'landing_intent') bool? landingIntent,
      @JsonKey(name: 'landing_type') String? landingType,
      @JsonKey(name: 'landing_vehicle') String? landingVehicle});
}

/// @nodoc
class _$NetworkCoreCopyWithImpl<$Res> implements $NetworkCoreCopyWith<$Res> {
  _$NetworkCoreCopyWithImpl(this._self, this._then);

  final NetworkCore _self;
  final $Res Function(NetworkCore) _then;

  /// Create a copy of NetworkCore
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coreSerial = freezed,
    Object? flight = freezed,
    Object? block = freezed,
    Object? gridfins = freezed,
    Object? legs = freezed,
    Object? reused = freezed,
    Object? landSuccess = freezed,
    Object? landingIntent = freezed,
    Object? landingType = freezed,
    Object? landingVehicle = freezed,
  }) {
    return _then(_self.copyWith(
      coreSerial: freezed == coreSerial
          ? _self.coreSerial
          : coreSerial // ignore: cast_nullable_to_non_nullable
              as String?,
      flight: freezed == flight
          ? _self.flight
          : flight // ignore: cast_nullable_to_non_nullable
              as int?,
      block: freezed == block
          ? _self.block
          : block // ignore: cast_nullable_to_non_nullable
              as String?,
      gridfins: freezed == gridfins
          ? _self.gridfins
          : gridfins // ignore: cast_nullable_to_non_nullable
              as bool?,
      legs: freezed == legs
          ? _self.legs
          : legs // ignore: cast_nullable_to_non_nullable
              as bool?,
      reused: freezed == reused
          ? _self.reused
          : reused // ignore: cast_nullable_to_non_nullable
              as bool?,
      landSuccess: freezed == landSuccess
          ? _self.landSuccess
          : landSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      landingIntent: freezed == landingIntent
          ? _self.landingIntent
          : landingIntent // ignore: cast_nullable_to_non_nullable
              as bool?,
      landingType: freezed == landingType
          ? _self.landingType
          : landingType // ignore: cast_nullable_to_non_nullable
              as String?,
      landingVehicle: freezed == landingVehicle
          ? _self.landingVehicle
          : landingVehicle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [NetworkCore].
extension NetworkCorePatterns on NetworkCore {
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
    TResult Function(_NetworkCore value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NetworkCore() when $default != null:
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
    TResult Function(_NetworkCore value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkCore():
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
    TResult? Function(_NetworkCore value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkCore() when $default != null:
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
    TResult Function(
            @JsonKey(name: 'core_serial') String? coreSerial,
            @JsonKey(name: 'flight') int? flight,
            @JsonKey(name: 'block') String? block,
            @JsonKey(name: 'gridfins') bool? gridfins,
            @JsonKey(name: 'legs') bool? legs,
            @JsonKey(name: 'reused') bool? reused,
            @JsonKey(name: 'land_success') bool? landSuccess,
            @JsonKey(name: 'landing_intent') bool? landingIntent,
            @JsonKey(name: 'landing_type') String? landingType,
            @JsonKey(name: 'landing_vehicle') String? landingVehicle)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NetworkCore() when $default != null:
        return $default(
            _that.coreSerial,
            _that.flight,
            _that.block,
            _that.gridfins,
            _that.legs,
            _that.reused,
            _that.landSuccess,
            _that.landingIntent,
            _that.landingType,
            _that.landingVehicle);
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
    TResult Function(
            @JsonKey(name: 'core_serial') String? coreSerial,
            @JsonKey(name: 'flight') int? flight,
            @JsonKey(name: 'block') String? block,
            @JsonKey(name: 'gridfins') bool? gridfins,
            @JsonKey(name: 'legs') bool? legs,
            @JsonKey(name: 'reused') bool? reused,
            @JsonKey(name: 'land_success') bool? landSuccess,
            @JsonKey(name: 'landing_intent') bool? landingIntent,
            @JsonKey(name: 'landing_type') String? landingType,
            @JsonKey(name: 'landing_vehicle') String? landingVehicle)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkCore():
        return $default(
            _that.coreSerial,
            _that.flight,
            _that.block,
            _that.gridfins,
            _that.legs,
            _that.reused,
            _that.landSuccess,
            _that.landingIntent,
            _that.landingType,
            _that.landingVehicle);
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
    TResult? Function(
            @JsonKey(name: 'core_serial') String? coreSerial,
            @JsonKey(name: 'flight') int? flight,
            @JsonKey(name: 'block') String? block,
            @JsonKey(name: 'gridfins') bool? gridfins,
            @JsonKey(name: 'legs') bool? legs,
            @JsonKey(name: 'reused') bool? reused,
            @JsonKey(name: 'land_success') bool? landSuccess,
            @JsonKey(name: 'landing_intent') bool? landingIntent,
            @JsonKey(name: 'landing_type') String? landingType,
            @JsonKey(name: 'landing_vehicle') String? landingVehicle)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkCore() when $default != null:
        return $default(
            _that.coreSerial,
            _that.flight,
            _that.block,
            _that.gridfins,
            _that.legs,
            _that.reused,
            _that.landSuccess,
            _that.landingIntent,
            _that.landingType,
            _that.landingVehicle);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _NetworkCore implements NetworkCore {
  const _NetworkCore(
      {@JsonKey(name: 'core_serial') this.coreSerial,
      @JsonKey(name: 'flight') this.flight,
      @JsonKey(name: 'block') this.block,
      @JsonKey(name: 'gridfins') this.gridfins,
      @JsonKey(name: 'legs') this.legs,
      @JsonKey(name: 'reused') this.reused,
      @JsonKey(name: 'land_success') this.landSuccess,
      @JsonKey(name: 'landing_intent') this.landingIntent,
      @JsonKey(name: 'landing_type') this.landingType,
      @JsonKey(name: 'landing_vehicle') this.landingVehicle});
  factory _NetworkCore.fromJson(Map<String, dynamic> json) =>
      _$NetworkCoreFromJson(json);

  @override
  @JsonKey(name: 'core_serial')
  final String? coreSerial;
  @override
  @JsonKey(name: 'flight')
  final int? flight;
  @override
  @JsonKey(name: 'block')
  final String? block;
  @override
  @JsonKey(name: 'gridfins')
  final bool? gridfins;
  @override
  @JsonKey(name: 'legs')
  final bool? legs;
  @override
  @JsonKey(name: 'reused')
  final bool? reused;
  @override
  @JsonKey(name: 'land_success')
  final bool? landSuccess;
  @override
  @JsonKey(name: 'landing_intent')
  final bool? landingIntent;
  @override
  @JsonKey(name: 'landing_type')
  final String? landingType;
  @override
  @JsonKey(name: 'landing_vehicle')
  final String? landingVehicle;

  /// Create a copy of NetworkCore
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NetworkCoreCopyWith<_NetworkCore> get copyWith =>
      __$NetworkCoreCopyWithImpl<_NetworkCore>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NetworkCoreToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NetworkCore &&
            (identical(other.coreSerial, coreSerial) ||
                other.coreSerial == coreSerial) &&
            (identical(other.flight, flight) || other.flight == flight) &&
            (identical(other.block, block) || other.block == block) &&
            (identical(other.gridfins, gridfins) ||
                other.gridfins == gridfins) &&
            (identical(other.legs, legs) || other.legs == legs) &&
            (identical(other.reused, reused) || other.reused == reused) &&
            (identical(other.landSuccess, landSuccess) ||
                other.landSuccess == landSuccess) &&
            (identical(other.landingIntent, landingIntent) ||
                other.landingIntent == landingIntent) &&
            (identical(other.landingType, landingType) ||
                other.landingType == landingType) &&
            (identical(other.landingVehicle, landingVehicle) ||
                other.landingVehicle == landingVehicle));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      coreSerial,
      flight,
      block,
      gridfins,
      legs,
      reused,
      landSuccess,
      landingIntent,
      landingType,
      landingVehicle);

  @override
  String toString() {
    return 'NetworkCore(coreSerial: $coreSerial, flight: $flight, block: $block, gridfins: $gridfins, legs: $legs, reused: $reused, landSuccess: $landSuccess, landingIntent: $landingIntent, landingType: $landingType, landingVehicle: $landingVehicle)';
  }
}

/// @nodoc
abstract mixin class _$NetworkCoreCopyWith<$Res>
    implements $NetworkCoreCopyWith<$Res> {
  factory _$NetworkCoreCopyWith(
          _NetworkCore value, $Res Function(_NetworkCore) _then) =
      __$NetworkCoreCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'core_serial') String? coreSerial,
      @JsonKey(name: 'flight') int? flight,
      @JsonKey(name: 'block') String? block,
      @JsonKey(name: 'gridfins') bool? gridfins,
      @JsonKey(name: 'legs') bool? legs,
      @JsonKey(name: 'reused') bool? reused,
      @JsonKey(name: 'land_success') bool? landSuccess,
      @JsonKey(name: 'landing_intent') bool? landingIntent,
      @JsonKey(name: 'landing_type') String? landingType,
      @JsonKey(name: 'landing_vehicle') String? landingVehicle});
}

/// @nodoc
class __$NetworkCoreCopyWithImpl<$Res> implements _$NetworkCoreCopyWith<$Res> {
  __$NetworkCoreCopyWithImpl(this._self, this._then);

  final _NetworkCore _self;
  final $Res Function(_NetworkCore) _then;

  /// Create a copy of NetworkCore
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? coreSerial = freezed,
    Object? flight = freezed,
    Object? block = freezed,
    Object? gridfins = freezed,
    Object? legs = freezed,
    Object? reused = freezed,
    Object? landSuccess = freezed,
    Object? landingIntent = freezed,
    Object? landingType = freezed,
    Object? landingVehicle = freezed,
  }) {
    return _then(_NetworkCore(
      coreSerial: freezed == coreSerial
          ? _self.coreSerial
          : coreSerial // ignore: cast_nullable_to_non_nullable
              as String?,
      flight: freezed == flight
          ? _self.flight
          : flight // ignore: cast_nullable_to_non_nullable
              as int?,
      block: freezed == block
          ? _self.block
          : block // ignore: cast_nullable_to_non_nullable
              as String?,
      gridfins: freezed == gridfins
          ? _self.gridfins
          : gridfins // ignore: cast_nullable_to_non_nullable
              as bool?,
      legs: freezed == legs
          ? _self.legs
          : legs // ignore: cast_nullable_to_non_nullable
              as bool?,
      reused: freezed == reused
          ? _self.reused
          : reused // ignore: cast_nullable_to_non_nullable
              as bool?,
      landSuccess: freezed == landSuccess
          ? _self.landSuccess
          : landSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      landingIntent: freezed == landingIntent
          ? _self.landingIntent
          : landingIntent // ignore: cast_nullable_to_non_nullable
              as bool?,
      landingType: freezed == landingType
          ? _self.landingType
          : landingType // ignore: cast_nullable_to_non_nullable
              as String?,
      landingVehicle: freezed == landingVehicle
          ? _self.landingVehicle
          : landingVehicle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$NetworkSecondStage {
  int? get block;
  List<NetworkPayload>? get payloads;

  /// Create a copy of NetworkSecondStage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NetworkSecondStageCopyWith<NetworkSecondStage> get copyWith =>
      _$NetworkSecondStageCopyWithImpl<NetworkSecondStage>(
          this as NetworkSecondStage, _$identity);

  /// Serializes this NetworkSecondStage to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NetworkSecondStage &&
            (identical(other.block, block) || other.block == block) &&
            const DeepCollectionEquality().equals(other.payloads, payloads));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, block, const DeepCollectionEquality().hash(payloads));

  @override
  String toString() {
    return 'NetworkSecondStage(block: $block, payloads: $payloads)';
  }
}

/// @nodoc
abstract mixin class $NetworkSecondStageCopyWith<$Res> {
  factory $NetworkSecondStageCopyWith(
          NetworkSecondStage value, $Res Function(NetworkSecondStage) _then) =
      _$NetworkSecondStageCopyWithImpl;
  @useResult
  $Res call({int? block, List<NetworkPayload>? payloads});
}

/// @nodoc
class _$NetworkSecondStageCopyWithImpl<$Res>
    implements $NetworkSecondStageCopyWith<$Res> {
  _$NetworkSecondStageCopyWithImpl(this._self, this._then);

  final NetworkSecondStage _self;
  final $Res Function(NetworkSecondStage) _then;

  /// Create a copy of NetworkSecondStage
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
              as List<NetworkPayload>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [NetworkSecondStage].
extension NetworkSecondStagePatterns on NetworkSecondStage {
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
    TResult Function(_NetworkSecondStage value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NetworkSecondStage() when $default != null:
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
    TResult Function(_NetworkSecondStage value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkSecondStage():
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
    TResult? Function(_NetworkSecondStage value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkSecondStage() when $default != null:
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
    TResult Function(int? block, List<NetworkPayload>? payloads)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NetworkSecondStage() when $default != null:
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
    TResult Function(int? block, List<NetworkPayload>? payloads) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkSecondStage():
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
    TResult? Function(int? block, List<NetworkPayload>? payloads)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkSecondStage() when $default != null:
        return $default(_that.block, _that.payloads);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _NetworkSecondStage implements NetworkSecondStage {
  const _NetworkSecondStage({this.block, final List<NetworkPayload>? payloads})
      : _payloads = payloads;
  factory _NetworkSecondStage.fromJson(Map<String, dynamic> json) =>
      _$NetworkSecondStageFromJson(json);

  @override
  final int? block;
  final List<NetworkPayload>? _payloads;
  @override
  List<NetworkPayload>? get payloads {
    final value = _payloads;
    if (value == null) return null;
    if (_payloads is EqualUnmodifiableListView) return _payloads;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of NetworkSecondStage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NetworkSecondStageCopyWith<_NetworkSecondStage> get copyWith =>
      __$NetworkSecondStageCopyWithImpl<_NetworkSecondStage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NetworkSecondStageToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NetworkSecondStage &&
            (identical(other.block, block) || other.block == block) &&
            const DeepCollectionEquality().equals(other._payloads, _payloads));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, block, const DeepCollectionEquality().hash(_payloads));

  @override
  String toString() {
    return 'NetworkSecondStage(block: $block, payloads: $payloads)';
  }
}

/// @nodoc
abstract mixin class _$NetworkSecondStageCopyWith<$Res>
    implements $NetworkSecondStageCopyWith<$Res> {
  factory _$NetworkSecondStageCopyWith(
          _NetworkSecondStage value, $Res Function(_NetworkSecondStage) _then) =
      __$NetworkSecondStageCopyWithImpl;
  @override
  @useResult
  $Res call({int? block, List<NetworkPayload>? payloads});
}

/// @nodoc
class __$NetworkSecondStageCopyWithImpl<$Res>
    implements _$NetworkSecondStageCopyWith<$Res> {
  __$NetworkSecondStageCopyWithImpl(this._self, this._then);

  final _NetworkSecondStage _self;
  final $Res Function(_NetworkSecondStage) _then;

  /// Create a copy of NetworkSecondStage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? block = freezed,
    Object? payloads = freezed,
  }) {
    return _then(_NetworkSecondStage(
      block: freezed == block
          ? _self.block
          : block // ignore: cast_nullable_to_non_nullable
              as int?,
      payloads: freezed == payloads
          ? _self._payloads
          : payloads // ignore: cast_nullable_to_non_nullable
              as List<NetworkPayload>?,
    ));
  }
}

/// @nodoc
mixin _$NetworkPayload {
  @JsonKey(name: 'payload_id')
  String? get payloadId;
  @JsonKey(name: 'norad_id')
  List<dynamic>? get noradId;
  @JsonKey(name: 'reused')
  bool? get reused;
  @JsonKey(name: 'customers')
  List<String>? get customers;
  @JsonKey(name: 'nationality')
  String? get nationality;
  @JsonKey(name: 'manufacturer')
  String? get manufacturer;
  @JsonKey(name: 'payload_type')
  String? get payloadType;
  @JsonKey(name: 'payload_mass_kg')
  int? get payloadMassKg;
  @JsonKey(name: 'payload_mass_lbs')
  int? get payloadMassLbs;
  @JsonKey(name: 'orbit')
  String? get orbit;
  @JsonKey(name: 'orbit_params')
  NetworkOrbitParams? get orbitParams;

  /// Create a copy of NetworkPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NetworkPayloadCopyWith<NetworkPayload> get copyWith =>
      _$NetworkPayloadCopyWithImpl<NetworkPayload>(
          this as NetworkPayload, _$identity);

  /// Serializes this NetworkPayload to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NetworkPayload &&
            (identical(other.payloadId, payloadId) ||
                other.payloadId == payloadId) &&
            const DeepCollectionEquality().equals(other.noradId, noradId) &&
            (identical(other.reused, reused) || other.reused == reused) &&
            const DeepCollectionEquality().equals(other.customers, customers) &&
            (identical(other.nationality, nationality) ||
                other.nationality == nationality) &&
            (identical(other.manufacturer, manufacturer) ||
                other.manufacturer == manufacturer) &&
            (identical(other.payloadType, payloadType) ||
                other.payloadType == payloadType) &&
            (identical(other.payloadMassKg, payloadMassKg) ||
                other.payloadMassKg == payloadMassKg) &&
            (identical(other.payloadMassLbs, payloadMassLbs) ||
                other.payloadMassLbs == payloadMassLbs) &&
            (identical(other.orbit, orbit) || other.orbit == orbit) &&
            (identical(other.orbitParams, orbitParams) ||
                other.orbitParams == orbitParams));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      payloadId,
      const DeepCollectionEquality().hash(noradId),
      reused,
      const DeepCollectionEquality().hash(customers),
      nationality,
      manufacturer,
      payloadType,
      payloadMassKg,
      payloadMassLbs,
      orbit,
      orbitParams);

  @override
  String toString() {
    return 'NetworkPayload(payloadId: $payloadId, noradId: $noradId, reused: $reused, customers: $customers, nationality: $nationality, manufacturer: $manufacturer, payloadType: $payloadType, payloadMassKg: $payloadMassKg, payloadMassLbs: $payloadMassLbs, orbit: $orbit, orbitParams: $orbitParams)';
  }
}

/// @nodoc
abstract mixin class $NetworkPayloadCopyWith<$Res> {
  factory $NetworkPayloadCopyWith(
          NetworkPayload value, $Res Function(NetworkPayload) _then) =
      _$NetworkPayloadCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'payload_id') String? payloadId,
      @JsonKey(name: 'norad_id') List<dynamic>? noradId,
      @JsonKey(name: 'reused') bool? reused,
      @JsonKey(name: 'customers') List<String>? customers,
      @JsonKey(name: 'nationality') String? nationality,
      @JsonKey(name: 'manufacturer') String? manufacturer,
      @JsonKey(name: 'payload_type') String? payloadType,
      @JsonKey(name: 'payload_mass_kg') int? payloadMassKg,
      @JsonKey(name: 'payload_mass_lbs') int? payloadMassLbs,
      @JsonKey(name: 'orbit') String? orbit,
      @JsonKey(name: 'orbit_params') NetworkOrbitParams? orbitParams});

  $NetworkOrbitParamsCopyWith<$Res>? get orbitParams;
}

/// @nodoc
class _$NetworkPayloadCopyWithImpl<$Res>
    implements $NetworkPayloadCopyWith<$Res> {
  _$NetworkPayloadCopyWithImpl(this._self, this._then);

  final NetworkPayload _self;
  final $Res Function(NetworkPayload) _then;

  /// Create a copy of NetworkPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payloadId = freezed,
    Object? noradId = freezed,
    Object? reused = freezed,
    Object? customers = freezed,
    Object? nationality = freezed,
    Object? manufacturer = freezed,
    Object? payloadType = freezed,
    Object? payloadMassKg = freezed,
    Object? payloadMassLbs = freezed,
    Object? orbit = freezed,
    Object? orbitParams = freezed,
  }) {
    return _then(_self.copyWith(
      payloadId: freezed == payloadId
          ? _self.payloadId
          : payloadId // ignore: cast_nullable_to_non_nullable
              as String?,
      noradId: freezed == noradId
          ? _self.noradId
          : noradId // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      reused: freezed == reused
          ? _self.reused
          : reused // ignore: cast_nullable_to_non_nullable
              as bool?,
      customers: freezed == customers
          ? _self.customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      nationality: freezed == nationality
          ? _self.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String?,
      manufacturer: freezed == manufacturer
          ? _self.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String?,
      payloadType: freezed == payloadType
          ? _self.payloadType
          : payloadType // ignore: cast_nullable_to_non_nullable
              as String?,
      payloadMassKg: freezed == payloadMassKg
          ? _self.payloadMassKg
          : payloadMassKg // ignore: cast_nullable_to_non_nullable
              as int?,
      payloadMassLbs: freezed == payloadMassLbs
          ? _self.payloadMassLbs
          : payloadMassLbs // ignore: cast_nullable_to_non_nullable
              as int?,
      orbit: freezed == orbit
          ? _self.orbit
          : orbit // ignore: cast_nullable_to_non_nullable
              as String?,
      orbitParams: freezed == orbitParams
          ? _self.orbitParams
          : orbitParams // ignore: cast_nullable_to_non_nullable
              as NetworkOrbitParams?,
    ));
  }

  /// Create a copy of NetworkPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NetworkOrbitParamsCopyWith<$Res>? get orbitParams {
    if (_self.orbitParams == null) {
      return null;
    }

    return $NetworkOrbitParamsCopyWith<$Res>(_self.orbitParams!, (value) {
      return _then(_self.copyWith(orbitParams: value));
    });
  }
}

/// Adds pattern-matching-related methods to [NetworkPayload].
extension NetworkPayloadPatterns on NetworkPayload {
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
    TResult Function(_NetworkPayload value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NetworkPayload() when $default != null:
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
    TResult Function(_NetworkPayload value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkPayload():
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
    TResult? Function(_NetworkPayload value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkPayload() when $default != null:
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
    TResult Function(
            @JsonKey(name: 'payload_id') String? payloadId,
            @JsonKey(name: 'norad_id') List<dynamic>? noradId,
            @JsonKey(name: 'reused') bool? reused,
            @JsonKey(name: 'customers') List<String>? customers,
            @JsonKey(name: 'nationality') String? nationality,
            @JsonKey(name: 'manufacturer') String? manufacturer,
            @JsonKey(name: 'payload_type') String? payloadType,
            @JsonKey(name: 'payload_mass_kg') int? payloadMassKg,
            @JsonKey(name: 'payload_mass_lbs') int? payloadMassLbs,
            @JsonKey(name: 'orbit') String? orbit,
            @JsonKey(name: 'orbit_params') NetworkOrbitParams? orbitParams)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NetworkPayload() when $default != null:
        return $default(
            _that.payloadId,
            _that.noradId,
            _that.reused,
            _that.customers,
            _that.nationality,
            _that.manufacturer,
            _that.payloadType,
            _that.payloadMassKg,
            _that.payloadMassLbs,
            _that.orbit,
            _that.orbitParams);
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
    TResult Function(
            @JsonKey(name: 'payload_id') String? payloadId,
            @JsonKey(name: 'norad_id') List<dynamic>? noradId,
            @JsonKey(name: 'reused') bool? reused,
            @JsonKey(name: 'customers') List<String>? customers,
            @JsonKey(name: 'nationality') String? nationality,
            @JsonKey(name: 'manufacturer') String? manufacturer,
            @JsonKey(name: 'payload_type') String? payloadType,
            @JsonKey(name: 'payload_mass_kg') int? payloadMassKg,
            @JsonKey(name: 'payload_mass_lbs') int? payloadMassLbs,
            @JsonKey(name: 'orbit') String? orbit,
            @JsonKey(name: 'orbit_params') NetworkOrbitParams? orbitParams)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkPayload():
        return $default(
            _that.payloadId,
            _that.noradId,
            _that.reused,
            _that.customers,
            _that.nationality,
            _that.manufacturer,
            _that.payloadType,
            _that.payloadMassKg,
            _that.payloadMassLbs,
            _that.orbit,
            _that.orbitParams);
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
    TResult? Function(
            @JsonKey(name: 'payload_id') String? payloadId,
            @JsonKey(name: 'norad_id') List<dynamic>? noradId,
            @JsonKey(name: 'reused') bool? reused,
            @JsonKey(name: 'customers') List<String>? customers,
            @JsonKey(name: 'nationality') String? nationality,
            @JsonKey(name: 'manufacturer') String? manufacturer,
            @JsonKey(name: 'payload_type') String? payloadType,
            @JsonKey(name: 'payload_mass_kg') int? payloadMassKg,
            @JsonKey(name: 'payload_mass_lbs') int? payloadMassLbs,
            @JsonKey(name: 'orbit') String? orbit,
            @JsonKey(name: 'orbit_params') NetworkOrbitParams? orbitParams)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkPayload() when $default != null:
        return $default(
            _that.payloadId,
            _that.noradId,
            _that.reused,
            _that.customers,
            _that.nationality,
            _that.manufacturer,
            _that.payloadType,
            _that.payloadMassKg,
            _that.payloadMassLbs,
            _that.orbit,
            _that.orbitParams);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _NetworkPayload implements NetworkPayload {
  const _NetworkPayload(
      {@JsonKey(name: 'payload_id') this.payloadId,
      @JsonKey(name: 'norad_id') final List<dynamic>? noradId,
      @JsonKey(name: 'reused') this.reused,
      @JsonKey(name: 'customers') final List<String>? customers,
      @JsonKey(name: 'nationality') this.nationality,
      @JsonKey(name: 'manufacturer') this.manufacturer,
      @JsonKey(name: 'payload_type') this.payloadType,
      @JsonKey(name: 'payload_mass_kg') this.payloadMassKg,
      @JsonKey(name: 'payload_mass_lbs') this.payloadMassLbs,
      @JsonKey(name: 'orbit') this.orbit,
      @JsonKey(name: 'orbit_params') this.orbitParams})
      : _noradId = noradId,
        _customers = customers;
  factory _NetworkPayload.fromJson(Map<String, dynamic> json) =>
      _$NetworkPayloadFromJson(json);

  @override
  @JsonKey(name: 'payload_id')
  final String? payloadId;
  final List<dynamic>? _noradId;
  @override
  @JsonKey(name: 'norad_id')
  List<dynamic>? get noradId {
    final value = _noradId;
    if (value == null) return null;
    if (_noradId is EqualUnmodifiableListView) return _noradId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'reused')
  final bool? reused;
  final List<String>? _customers;
  @override
  @JsonKey(name: 'customers')
  List<String>? get customers {
    final value = _customers;
    if (value == null) return null;
    if (_customers is EqualUnmodifiableListView) return _customers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'nationality')
  final String? nationality;
  @override
  @JsonKey(name: 'manufacturer')
  final String? manufacturer;
  @override
  @JsonKey(name: 'payload_type')
  final String? payloadType;
  @override
  @JsonKey(name: 'payload_mass_kg')
  final int? payloadMassKg;
  @override
  @JsonKey(name: 'payload_mass_lbs')
  final int? payloadMassLbs;
  @override
  @JsonKey(name: 'orbit')
  final String? orbit;
  @override
  @JsonKey(name: 'orbit_params')
  final NetworkOrbitParams? orbitParams;

  /// Create a copy of NetworkPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NetworkPayloadCopyWith<_NetworkPayload> get copyWith =>
      __$NetworkPayloadCopyWithImpl<_NetworkPayload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NetworkPayloadToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NetworkPayload &&
            (identical(other.payloadId, payloadId) ||
                other.payloadId == payloadId) &&
            const DeepCollectionEquality().equals(other._noradId, _noradId) &&
            (identical(other.reused, reused) || other.reused == reused) &&
            const DeepCollectionEquality()
                .equals(other._customers, _customers) &&
            (identical(other.nationality, nationality) ||
                other.nationality == nationality) &&
            (identical(other.manufacturer, manufacturer) ||
                other.manufacturer == manufacturer) &&
            (identical(other.payloadType, payloadType) ||
                other.payloadType == payloadType) &&
            (identical(other.payloadMassKg, payloadMassKg) ||
                other.payloadMassKg == payloadMassKg) &&
            (identical(other.payloadMassLbs, payloadMassLbs) ||
                other.payloadMassLbs == payloadMassLbs) &&
            (identical(other.orbit, orbit) || other.orbit == orbit) &&
            (identical(other.orbitParams, orbitParams) ||
                other.orbitParams == orbitParams));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      payloadId,
      const DeepCollectionEquality().hash(_noradId),
      reused,
      const DeepCollectionEquality().hash(_customers),
      nationality,
      manufacturer,
      payloadType,
      payloadMassKg,
      payloadMassLbs,
      orbit,
      orbitParams);

  @override
  String toString() {
    return 'NetworkPayload(payloadId: $payloadId, noradId: $noradId, reused: $reused, customers: $customers, nationality: $nationality, manufacturer: $manufacturer, payloadType: $payloadType, payloadMassKg: $payloadMassKg, payloadMassLbs: $payloadMassLbs, orbit: $orbit, orbitParams: $orbitParams)';
  }
}

/// @nodoc
abstract mixin class _$NetworkPayloadCopyWith<$Res>
    implements $NetworkPayloadCopyWith<$Res> {
  factory _$NetworkPayloadCopyWith(
          _NetworkPayload value, $Res Function(_NetworkPayload) _then) =
      __$NetworkPayloadCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'payload_id') String? payloadId,
      @JsonKey(name: 'norad_id') List<dynamic>? noradId,
      @JsonKey(name: 'reused') bool? reused,
      @JsonKey(name: 'customers') List<String>? customers,
      @JsonKey(name: 'nationality') String? nationality,
      @JsonKey(name: 'manufacturer') String? manufacturer,
      @JsonKey(name: 'payload_type') String? payloadType,
      @JsonKey(name: 'payload_mass_kg') int? payloadMassKg,
      @JsonKey(name: 'payload_mass_lbs') int? payloadMassLbs,
      @JsonKey(name: 'orbit') String? orbit,
      @JsonKey(name: 'orbit_params') NetworkOrbitParams? orbitParams});

  @override
  $NetworkOrbitParamsCopyWith<$Res>? get orbitParams;
}

/// @nodoc
class __$NetworkPayloadCopyWithImpl<$Res>
    implements _$NetworkPayloadCopyWith<$Res> {
  __$NetworkPayloadCopyWithImpl(this._self, this._then);

  final _NetworkPayload _self;
  final $Res Function(_NetworkPayload) _then;

  /// Create a copy of NetworkPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? payloadId = freezed,
    Object? noradId = freezed,
    Object? reused = freezed,
    Object? customers = freezed,
    Object? nationality = freezed,
    Object? manufacturer = freezed,
    Object? payloadType = freezed,
    Object? payloadMassKg = freezed,
    Object? payloadMassLbs = freezed,
    Object? orbit = freezed,
    Object? orbitParams = freezed,
  }) {
    return _then(_NetworkPayload(
      payloadId: freezed == payloadId
          ? _self.payloadId
          : payloadId // ignore: cast_nullable_to_non_nullable
              as String?,
      noradId: freezed == noradId
          ? _self._noradId
          : noradId // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      reused: freezed == reused
          ? _self.reused
          : reused // ignore: cast_nullable_to_non_nullable
              as bool?,
      customers: freezed == customers
          ? _self._customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      nationality: freezed == nationality
          ? _self.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String?,
      manufacturer: freezed == manufacturer
          ? _self.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String?,
      payloadType: freezed == payloadType
          ? _self.payloadType
          : payloadType // ignore: cast_nullable_to_non_nullable
              as String?,
      payloadMassKg: freezed == payloadMassKg
          ? _self.payloadMassKg
          : payloadMassKg // ignore: cast_nullable_to_non_nullable
              as int?,
      payloadMassLbs: freezed == payloadMassLbs
          ? _self.payloadMassLbs
          : payloadMassLbs // ignore: cast_nullable_to_non_nullable
              as int?,
      orbit: freezed == orbit
          ? _self.orbit
          : orbit // ignore: cast_nullable_to_non_nullable
              as String?,
      orbitParams: freezed == orbitParams
          ? _self.orbitParams
          : orbitParams // ignore: cast_nullable_to_non_nullable
              as NetworkOrbitParams?,
    ));
  }

  /// Create a copy of NetworkPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NetworkOrbitParamsCopyWith<$Res>? get orbitParams {
    if (_self.orbitParams == null) {
      return null;
    }

    return $NetworkOrbitParamsCopyWith<$Res>(_self.orbitParams!, (value) {
      return _then(_self.copyWith(orbitParams: value));
    });
  }
}

/// @nodoc
mixin _$NetworkOrbitParams {
  @JsonKey(name: 'reference_system')
  String? get referenceSystem;
  @JsonKey(name: 'regime')
  String? get regime;
  @JsonKey(name: 'longitude')
  int? get longitude;
  @JsonKey(name: 'semi_major_axis_km')
  double? get semiMajorAxisKm;
  @JsonKey(name: 'eccentricity')
  double? get eccentricity;
  @JsonKey(name: 'periapsis_km')
  int? get periapsisKm;
  @JsonKey(name: 'apoapsis_km')
  int? get apoapsisKm;
  @JsonKey(name: 'inclination_deg')
  int? get inclinationDeg;

  /// Create a copy of NetworkOrbitParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NetworkOrbitParamsCopyWith<NetworkOrbitParams> get copyWith =>
      _$NetworkOrbitParamsCopyWithImpl<NetworkOrbitParams>(
          this as NetworkOrbitParams, _$identity);

  /// Serializes this NetworkOrbitParams to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NetworkOrbitParams &&
            (identical(other.referenceSystem, referenceSystem) ||
                other.referenceSystem == referenceSystem) &&
            (identical(other.regime, regime) || other.regime == regime) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.semiMajorAxisKm, semiMajorAxisKm) ||
                other.semiMajorAxisKm == semiMajorAxisKm) &&
            (identical(other.eccentricity, eccentricity) ||
                other.eccentricity == eccentricity) &&
            (identical(other.periapsisKm, periapsisKm) ||
                other.periapsisKm == periapsisKm) &&
            (identical(other.apoapsisKm, apoapsisKm) ||
                other.apoapsisKm == apoapsisKm) &&
            (identical(other.inclinationDeg, inclinationDeg) ||
                other.inclinationDeg == inclinationDeg));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      referenceSystem,
      regime,
      longitude,
      semiMajorAxisKm,
      eccentricity,
      periapsisKm,
      apoapsisKm,
      inclinationDeg);

  @override
  String toString() {
    return 'NetworkOrbitParams(referenceSystem: $referenceSystem, regime: $regime, longitude: $longitude, semiMajorAxisKm: $semiMajorAxisKm, eccentricity: $eccentricity, periapsisKm: $periapsisKm, apoapsisKm: $apoapsisKm, inclinationDeg: $inclinationDeg)';
  }
}

/// @nodoc
abstract mixin class $NetworkOrbitParamsCopyWith<$Res> {
  factory $NetworkOrbitParamsCopyWith(
          NetworkOrbitParams value, $Res Function(NetworkOrbitParams) _then) =
      _$NetworkOrbitParamsCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'reference_system') String? referenceSystem,
      @JsonKey(name: 'regime') String? regime,
      @JsonKey(name: 'longitude') int? longitude,
      @JsonKey(name: 'semi_major_axis_km') double? semiMajorAxisKm,
      @JsonKey(name: 'eccentricity') double? eccentricity,
      @JsonKey(name: 'periapsis_km') int? periapsisKm,
      @JsonKey(name: 'apoapsis_km') int? apoapsisKm,
      @JsonKey(name: 'inclination_deg') int? inclinationDeg});
}

/// @nodoc
class _$NetworkOrbitParamsCopyWithImpl<$Res>
    implements $NetworkOrbitParamsCopyWith<$Res> {
  _$NetworkOrbitParamsCopyWithImpl(this._self, this._then);

  final NetworkOrbitParams _self;
  final $Res Function(NetworkOrbitParams) _then;

  /// Create a copy of NetworkOrbitParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? referenceSystem = freezed,
    Object? regime = freezed,
    Object? longitude = freezed,
    Object? semiMajorAxisKm = freezed,
    Object? eccentricity = freezed,
    Object? periapsisKm = freezed,
    Object? apoapsisKm = freezed,
    Object? inclinationDeg = freezed,
  }) {
    return _then(_self.copyWith(
      referenceSystem: freezed == referenceSystem
          ? _self.referenceSystem
          : referenceSystem // ignore: cast_nullable_to_non_nullable
              as String?,
      regime: freezed == regime
          ? _self.regime
          : regime // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as int?,
      semiMajorAxisKm: freezed == semiMajorAxisKm
          ? _self.semiMajorAxisKm
          : semiMajorAxisKm // ignore: cast_nullable_to_non_nullable
              as double?,
      eccentricity: freezed == eccentricity
          ? _self.eccentricity
          : eccentricity // ignore: cast_nullable_to_non_nullable
              as double?,
      periapsisKm: freezed == periapsisKm
          ? _self.periapsisKm
          : periapsisKm // ignore: cast_nullable_to_non_nullable
              as int?,
      apoapsisKm: freezed == apoapsisKm
          ? _self.apoapsisKm
          : apoapsisKm // ignore: cast_nullable_to_non_nullable
              as int?,
      inclinationDeg: freezed == inclinationDeg
          ? _self.inclinationDeg
          : inclinationDeg // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// Adds pattern-matching-related methods to [NetworkOrbitParams].
extension NetworkOrbitParamsPatterns on NetworkOrbitParams {
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
    TResult Function(_NetworkOrbitParams value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NetworkOrbitParams() when $default != null:
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
    TResult Function(_NetworkOrbitParams value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkOrbitParams():
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
    TResult? Function(_NetworkOrbitParams value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkOrbitParams() when $default != null:
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
    TResult Function(
            @JsonKey(name: 'reference_system') String? referenceSystem,
            @JsonKey(name: 'regime') String? regime,
            @JsonKey(name: 'longitude') int? longitude,
            @JsonKey(name: 'semi_major_axis_km') double? semiMajorAxisKm,
            @JsonKey(name: 'eccentricity') double? eccentricity,
            @JsonKey(name: 'periapsis_km') int? periapsisKm,
            @JsonKey(name: 'apoapsis_km') int? apoapsisKm,
            @JsonKey(name: 'inclination_deg') int? inclinationDeg)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NetworkOrbitParams() when $default != null:
        return $default(
            _that.referenceSystem,
            _that.regime,
            _that.longitude,
            _that.semiMajorAxisKm,
            _that.eccentricity,
            _that.periapsisKm,
            _that.apoapsisKm,
            _that.inclinationDeg);
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
    TResult Function(
            @JsonKey(name: 'reference_system') String? referenceSystem,
            @JsonKey(name: 'regime') String? regime,
            @JsonKey(name: 'longitude') int? longitude,
            @JsonKey(name: 'semi_major_axis_km') double? semiMajorAxisKm,
            @JsonKey(name: 'eccentricity') double? eccentricity,
            @JsonKey(name: 'periapsis_km') int? periapsisKm,
            @JsonKey(name: 'apoapsis_km') int? apoapsisKm,
            @JsonKey(name: 'inclination_deg') int? inclinationDeg)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkOrbitParams():
        return $default(
            _that.referenceSystem,
            _that.regime,
            _that.longitude,
            _that.semiMajorAxisKm,
            _that.eccentricity,
            _that.periapsisKm,
            _that.apoapsisKm,
            _that.inclinationDeg);
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
    TResult? Function(
            @JsonKey(name: 'reference_system') String? referenceSystem,
            @JsonKey(name: 'regime') String? regime,
            @JsonKey(name: 'longitude') int? longitude,
            @JsonKey(name: 'semi_major_axis_km') double? semiMajorAxisKm,
            @JsonKey(name: 'eccentricity') double? eccentricity,
            @JsonKey(name: 'periapsis_km') int? periapsisKm,
            @JsonKey(name: 'apoapsis_km') int? apoapsisKm,
            @JsonKey(name: 'inclination_deg') int? inclinationDeg)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkOrbitParams() when $default != null:
        return $default(
            _that.referenceSystem,
            _that.regime,
            _that.longitude,
            _that.semiMajorAxisKm,
            _that.eccentricity,
            _that.periapsisKm,
            _that.apoapsisKm,
            _that.inclinationDeg);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _NetworkOrbitParams implements NetworkOrbitParams {
  const _NetworkOrbitParams(
      {@JsonKey(name: 'reference_system') this.referenceSystem,
      @JsonKey(name: 'regime') this.regime,
      @JsonKey(name: 'longitude') this.longitude,
      @JsonKey(name: 'semi_major_axis_km') this.semiMajorAxisKm,
      @JsonKey(name: 'eccentricity') this.eccentricity,
      @JsonKey(name: 'periapsis_km') this.periapsisKm,
      @JsonKey(name: 'apoapsis_km') this.apoapsisKm,
      @JsonKey(name: 'inclination_deg') this.inclinationDeg});
  factory _NetworkOrbitParams.fromJson(Map<String, dynamic> json) =>
      _$NetworkOrbitParamsFromJson(json);

  @override
  @JsonKey(name: 'reference_system')
  final String? referenceSystem;
  @override
  @JsonKey(name: 'regime')
  final String? regime;
  @override
  @JsonKey(name: 'longitude')
  final int? longitude;
  @override
  @JsonKey(name: 'semi_major_axis_km')
  final double? semiMajorAxisKm;
  @override
  @JsonKey(name: 'eccentricity')
  final double? eccentricity;
  @override
  @JsonKey(name: 'periapsis_km')
  final int? periapsisKm;
  @override
  @JsonKey(name: 'apoapsis_km')
  final int? apoapsisKm;
  @override
  @JsonKey(name: 'inclination_deg')
  final int? inclinationDeg;

  /// Create a copy of NetworkOrbitParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NetworkOrbitParamsCopyWith<_NetworkOrbitParams> get copyWith =>
      __$NetworkOrbitParamsCopyWithImpl<_NetworkOrbitParams>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NetworkOrbitParamsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NetworkOrbitParams &&
            (identical(other.referenceSystem, referenceSystem) ||
                other.referenceSystem == referenceSystem) &&
            (identical(other.regime, regime) || other.regime == regime) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.semiMajorAxisKm, semiMajorAxisKm) ||
                other.semiMajorAxisKm == semiMajorAxisKm) &&
            (identical(other.eccentricity, eccentricity) ||
                other.eccentricity == eccentricity) &&
            (identical(other.periapsisKm, periapsisKm) ||
                other.periapsisKm == periapsisKm) &&
            (identical(other.apoapsisKm, apoapsisKm) ||
                other.apoapsisKm == apoapsisKm) &&
            (identical(other.inclinationDeg, inclinationDeg) ||
                other.inclinationDeg == inclinationDeg));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      referenceSystem,
      regime,
      longitude,
      semiMajorAxisKm,
      eccentricity,
      periapsisKm,
      apoapsisKm,
      inclinationDeg);

  @override
  String toString() {
    return 'NetworkOrbitParams(referenceSystem: $referenceSystem, regime: $regime, longitude: $longitude, semiMajorAxisKm: $semiMajorAxisKm, eccentricity: $eccentricity, periapsisKm: $periapsisKm, apoapsisKm: $apoapsisKm, inclinationDeg: $inclinationDeg)';
  }
}

/// @nodoc
abstract mixin class _$NetworkOrbitParamsCopyWith<$Res>
    implements $NetworkOrbitParamsCopyWith<$Res> {
  factory _$NetworkOrbitParamsCopyWith(
          _NetworkOrbitParams value, $Res Function(_NetworkOrbitParams) _then) =
      __$NetworkOrbitParamsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'reference_system') String? referenceSystem,
      @JsonKey(name: 'regime') String? regime,
      @JsonKey(name: 'longitude') int? longitude,
      @JsonKey(name: 'semi_major_axis_km') double? semiMajorAxisKm,
      @JsonKey(name: 'eccentricity') double? eccentricity,
      @JsonKey(name: 'periapsis_km') int? periapsisKm,
      @JsonKey(name: 'apoapsis_km') int? apoapsisKm,
      @JsonKey(name: 'inclination_deg') int? inclinationDeg});
}

/// @nodoc
class __$NetworkOrbitParamsCopyWithImpl<$Res>
    implements _$NetworkOrbitParamsCopyWith<$Res> {
  __$NetworkOrbitParamsCopyWithImpl(this._self, this._then);

  final _NetworkOrbitParams _self;
  final $Res Function(_NetworkOrbitParams) _then;

  /// Create a copy of NetworkOrbitParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? referenceSystem = freezed,
    Object? regime = freezed,
    Object? longitude = freezed,
    Object? semiMajorAxisKm = freezed,
    Object? eccentricity = freezed,
    Object? periapsisKm = freezed,
    Object? apoapsisKm = freezed,
    Object? inclinationDeg = freezed,
  }) {
    return _then(_NetworkOrbitParams(
      referenceSystem: freezed == referenceSystem
          ? _self.referenceSystem
          : referenceSystem // ignore: cast_nullable_to_non_nullable
              as String?,
      regime: freezed == regime
          ? _self.regime
          : regime // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as int?,
      semiMajorAxisKm: freezed == semiMajorAxisKm
          ? _self.semiMajorAxisKm
          : semiMajorAxisKm // ignore: cast_nullable_to_non_nullable
              as double?,
      eccentricity: freezed == eccentricity
          ? _self.eccentricity
          : eccentricity // ignore: cast_nullable_to_non_nullable
              as double?,
      periapsisKm: freezed == periapsisKm
          ? _self.periapsisKm
          : periapsisKm // ignore: cast_nullable_to_non_nullable
              as int?,
      apoapsisKm: freezed == apoapsisKm
          ? _self.apoapsisKm
          : apoapsisKm // ignore: cast_nullable_to_non_nullable
              as int?,
      inclinationDeg: freezed == inclinationDeg
          ? _self.inclinationDeg
          : inclinationDeg // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
mixin _$NetworkFairings {
  @JsonKey(name: 'reused')
  bool? get reused;
  @JsonKey(name: 'recovery_attempt')
  bool? get recoveryAttempt;
  @JsonKey(name: 'recovered')
  bool? get recovered;
  @JsonKey(name: 'ship')
  String? get ship;

  /// Create a copy of NetworkFairings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NetworkFairingsCopyWith<NetworkFairings> get copyWith =>
      _$NetworkFairingsCopyWithImpl<NetworkFairings>(
          this as NetworkFairings, _$identity);

  /// Serializes this NetworkFairings to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NetworkFairings &&
            (identical(other.reused, reused) || other.reused == reused) &&
            (identical(other.recoveryAttempt, recoveryAttempt) ||
                other.recoveryAttempt == recoveryAttempt) &&
            (identical(other.recovered, recovered) ||
                other.recovered == recovered) &&
            (identical(other.ship, ship) || other.ship == ship));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, reused, recoveryAttempt, recovered, ship);

  @override
  String toString() {
    return 'NetworkFairings(reused: $reused, recoveryAttempt: $recoveryAttempt, recovered: $recovered, ship: $ship)';
  }
}

/// @nodoc
abstract mixin class $NetworkFairingsCopyWith<$Res> {
  factory $NetworkFairingsCopyWith(
          NetworkFairings value, $Res Function(NetworkFairings) _then) =
      _$NetworkFairingsCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'reused') bool? reused,
      @JsonKey(name: 'recovery_attempt') bool? recoveryAttempt,
      @JsonKey(name: 'recovered') bool? recovered,
      @JsonKey(name: 'ship') String? ship});
}

/// @nodoc
class _$NetworkFairingsCopyWithImpl<$Res>
    implements $NetworkFairingsCopyWith<$Res> {
  _$NetworkFairingsCopyWithImpl(this._self, this._then);

  final NetworkFairings _self;
  final $Res Function(NetworkFairings) _then;

  /// Create a copy of NetworkFairings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reused = freezed,
    Object? recoveryAttempt = freezed,
    Object? recovered = freezed,
    Object? ship = freezed,
  }) {
    return _then(_self.copyWith(
      reused: freezed == reused
          ? _self.reused
          : reused // ignore: cast_nullable_to_non_nullable
              as bool?,
      recoveryAttempt: freezed == recoveryAttempt
          ? _self.recoveryAttempt
          : recoveryAttempt // ignore: cast_nullable_to_non_nullable
              as bool?,
      recovered: freezed == recovered
          ? _self.recovered
          : recovered // ignore: cast_nullable_to_non_nullable
              as bool?,
      ship: freezed == ship
          ? _self.ship
          : ship // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [NetworkFairings].
extension NetworkFairingsPatterns on NetworkFairings {
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
    TResult Function(_NetworkFairings value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NetworkFairings() when $default != null:
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
    TResult Function(_NetworkFairings value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkFairings():
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
    TResult? Function(_NetworkFairings value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkFairings() when $default != null:
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
    TResult Function(
            @JsonKey(name: 'reused') bool? reused,
            @JsonKey(name: 'recovery_attempt') bool? recoveryAttempt,
            @JsonKey(name: 'recovered') bool? recovered,
            @JsonKey(name: 'ship') String? ship)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NetworkFairings() when $default != null:
        return $default(
            _that.reused, _that.recoveryAttempt, _that.recovered, _that.ship);
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
    TResult Function(
            @JsonKey(name: 'reused') bool? reused,
            @JsonKey(name: 'recovery_attempt') bool? recoveryAttempt,
            @JsonKey(name: 'recovered') bool? recovered,
            @JsonKey(name: 'ship') String? ship)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkFairings():
        return $default(
            _that.reused, _that.recoveryAttempt, _that.recovered, _that.ship);
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
    TResult? Function(
            @JsonKey(name: 'reused') bool? reused,
            @JsonKey(name: 'recovery_attempt') bool? recoveryAttempt,
            @JsonKey(name: 'recovered') bool? recovered,
            @JsonKey(name: 'ship') String? ship)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkFairings() when $default != null:
        return $default(
            _that.reused, _that.recoveryAttempt, _that.recovered, _that.ship);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _NetworkFairings implements NetworkFairings {
  const _NetworkFairings(
      {@JsonKey(name: 'reused') this.reused,
      @JsonKey(name: 'recovery_attempt') this.recoveryAttempt,
      @JsonKey(name: 'recovered') this.recovered,
      @JsonKey(name: 'ship') this.ship});
  factory _NetworkFairings.fromJson(Map<String, dynamic> json) =>
      _$NetworkFairingsFromJson(json);

  @override
  @JsonKey(name: 'reused')
  final bool? reused;
  @override
  @JsonKey(name: 'recovery_attempt')
  final bool? recoveryAttempt;
  @override
  @JsonKey(name: 'recovered')
  final bool? recovered;
  @override
  @JsonKey(name: 'ship')
  final String? ship;

  /// Create a copy of NetworkFairings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NetworkFairingsCopyWith<_NetworkFairings> get copyWith =>
      __$NetworkFairingsCopyWithImpl<_NetworkFairings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NetworkFairingsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NetworkFairings &&
            (identical(other.reused, reused) || other.reused == reused) &&
            (identical(other.recoveryAttempt, recoveryAttempt) ||
                other.recoveryAttempt == recoveryAttempt) &&
            (identical(other.recovered, recovered) ||
                other.recovered == recovered) &&
            (identical(other.ship, ship) || other.ship == ship));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, reused, recoveryAttempt, recovered, ship);

  @override
  String toString() {
    return 'NetworkFairings(reused: $reused, recoveryAttempt: $recoveryAttempt, recovered: $recovered, ship: $ship)';
  }
}

/// @nodoc
abstract mixin class _$NetworkFairingsCopyWith<$Res>
    implements $NetworkFairingsCopyWith<$Res> {
  factory _$NetworkFairingsCopyWith(
          _NetworkFairings value, $Res Function(_NetworkFairings) _then) =
      __$NetworkFairingsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'reused') bool? reused,
      @JsonKey(name: 'recovery_attempt') bool? recoveryAttempt,
      @JsonKey(name: 'recovered') bool? recovered,
      @JsonKey(name: 'ship') String? ship});
}

/// @nodoc
class __$NetworkFairingsCopyWithImpl<$Res>
    implements _$NetworkFairingsCopyWith<$Res> {
  __$NetworkFairingsCopyWithImpl(this._self, this._then);

  final _NetworkFairings _self;
  final $Res Function(_NetworkFairings) _then;

  /// Create a copy of NetworkFairings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? reused = freezed,
    Object? recoveryAttempt = freezed,
    Object? recovered = freezed,
    Object? ship = freezed,
  }) {
    return _then(_NetworkFairings(
      reused: freezed == reused
          ? _self.reused
          : reused // ignore: cast_nullable_to_non_nullable
              as bool?,
      recoveryAttempt: freezed == recoveryAttempt
          ? _self.recoveryAttempt
          : recoveryAttempt // ignore: cast_nullable_to_non_nullable
              as bool?,
      recovered: freezed == recovered
          ? _self.recovered
          : recovered // ignore: cast_nullable_to_non_nullable
              as bool?,
      ship: freezed == ship
          ? _self.ship
          : ship // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$NetworkTelemetry {
  @JsonKey(name: 'flight_club')
  String? get flightClub;

  /// Create a copy of NetworkTelemetry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NetworkTelemetryCopyWith<NetworkTelemetry> get copyWith =>
      _$NetworkTelemetryCopyWithImpl<NetworkTelemetry>(
          this as NetworkTelemetry, _$identity);

  /// Serializes this NetworkTelemetry to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NetworkTelemetry &&
            (identical(other.flightClub, flightClub) ||
                other.flightClub == flightClub));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, flightClub);

  @override
  String toString() {
    return 'NetworkTelemetry(flightClub: $flightClub)';
  }
}

/// @nodoc
abstract mixin class $NetworkTelemetryCopyWith<$Res> {
  factory $NetworkTelemetryCopyWith(
          NetworkTelemetry value, $Res Function(NetworkTelemetry) _then) =
      _$NetworkTelemetryCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'flight_club') String? flightClub});
}

/// @nodoc
class _$NetworkTelemetryCopyWithImpl<$Res>
    implements $NetworkTelemetryCopyWith<$Res> {
  _$NetworkTelemetryCopyWithImpl(this._self, this._then);

  final NetworkTelemetry _self;
  final $Res Function(NetworkTelemetry) _then;

  /// Create a copy of NetworkTelemetry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flightClub = freezed,
  }) {
    return _then(_self.copyWith(
      flightClub: freezed == flightClub
          ? _self.flightClub
          : flightClub // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [NetworkTelemetry].
extension NetworkTelemetryPatterns on NetworkTelemetry {
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
    TResult Function(_NetworkTelemetry value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NetworkTelemetry() when $default != null:
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
    TResult Function(_NetworkTelemetry value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkTelemetry():
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
    TResult? Function(_NetworkTelemetry value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkTelemetry() when $default != null:
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
    TResult Function(@JsonKey(name: 'flight_club') String? flightClub)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NetworkTelemetry() when $default != null:
        return $default(_that.flightClub);
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
    TResult Function(@JsonKey(name: 'flight_club') String? flightClub) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkTelemetry():
        return $default(_that.flightClub);
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
    TResult? Function(@JsonKey(name: 'flight_club') String? flightClub)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkTelemetry() when $default != null:
        return $default(_that.flightClub);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _NetworkTelemetry implements NetworkTelemetry {
  const _NetworkTelemetry({@JsonKey(name: 'flight_club') this.flightClub});
  factory _NetworkTelemetry.fromJson(Map<String, dynamic> json) =>
      _$NetworkTelemetryFromJson(json);

  @override
  @JsonKey(name: 'flight_club')
  final String? flightClub;

  /// Create a copy of NetworkTelemetry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NetworkTelemetryCopyWith<_NetworkTelemetry> get copyWith =>
      __$NetworkTelemetryCopyWithImpl<_NetworkTelemetry>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NetworkTelemetryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NetworkTelemetry &&
            (identical(other.flightClub, flightClub) ||
                other.flightClub == flightClub));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, flightClub);

  @override
  String toString() {
    return 'NetworkTelemetry(flightClub: $flightClub)';
  }
}

/// @nodoc
abstract mixin class _$NetworkTelemetryCopyWith<$Res>
    implements $NetworkTelemetryCopyWith<$Res> {
  factory _$NetworkTelemetryCopyWith(
          _NetworkTelemetry value, $Res Function(_NetworkTelemetry) _then) =
      __$NetworkTelemetryCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'flight_club') String? flightClub});
}

/// @nodoc
class __$NetworkTelemetryCopyWithImpl<$Res>
    implements _$NetworkTelemetryCopyWith<$Res> {
  __$NetworkTelemetryCopyWithImpl(this._self, this._then);

  final _NetworkTelemetry _self;
  final $Res Function(_NetworkTelemetry) _then;

  /// Create a copy of NetworkTelemetry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? flightClub = freezed,
  }) {
    return _then(_NetworkTelemetry(
      flightClub: freezed == flightClub
          ? _self.flightClub
          : flightClub // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$NetworkLaunchSite {
  @JsonKey(name: 'site_id')
  String? get siteId;
  @JsonKey(name: 'site_name')
  String? get siteName;
  @JsonKey(name: 'site_name_long')
  String? get siteNameLong;

  /// Create a copy of NetworkLaunchSite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NetworkLaunchSiteCopyWith<NetworkLaunchSite> get copyWith =>
      _$NetworkLaunchSiteCopyWithImpl<NetworkLaunchSite>(
          this as NetworkLaunchSite, _$identity);

  /// Serializes this NetworkLaunchSite to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NetworkLaunchSite &&
            (identical(other.siteId, siteId) || other.siteId == siteId) &&
            (identical(other.siteName, siteName) ||
                other.siteName == siteName) &&
            (identical(other.siteNameLong, siteNameLong) ||
                other.siteNameLong == siteNameLong));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, siteId, siteName, siteNameLong);

  @override
  String toString() {
    return 'NetworkLaunchSite(siteId: $siteId, siteName: $siteName, siteNameLong: $siteNameLong)';
  }
}

/// @nodoc
abstract mixin class $NetworkLaunchSiteCopyWith<$Res> {
  factory $NetworkLaunchSiteCopyWith(
          NetworkLaunchSite value, $Res Function(NetworkLaunchSite) _then) =
      _$NetworkLaunchSiteCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'site_id') String? siteId,
      @JsonKey(name: 'site_name') String? siteName,
      @JsonKey(name: 'site_name_long') String? siteNameLong});
}

/// @nodoc
class _$NetworkLaunchSiteCopyWithImpl<$Res>
    implements $NetworkLaunchSiteCopyWith<$Res> {
  _$NetworkLaunchSiteCopyWithImpl(this._self, this._then);

  final NetworkLaunchSite _self;
  final $Res Function(NetworkLaunchSite) _then;

  /// Create a copy of NetworkLaunchSite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? siteId = freezed,
    Object? siteName = freezed,
    Object? siteNameLong = freezed,
  }) {
    return _then(_self.copyWith(
      siteId: freezed == siteId
          ? _self.siteId
          : siteId // ignore: cast_nullable_to_non_nullable
              as String?,
      siteName: freezed == siteName
          ? _self.siteName
          : siteName // ignore: cast_nullable_to_non_nullable
              as String?,
      siteNameLong: freezed == siteNameLong
          ? _self.siteNameLong
          : siteNameLong // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [NetworkLaunchSite].
extension NetworkLaunchSitePatterns on NetworkLaunchSite {
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
    TResult Function(_NetworkLaunchSite value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NetworkLaunchSite() when $default != null:
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
    TResult Function(_NetworkLaunchSite value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkLaunchSite():
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
    TResult? Function(_NetworkLaunchSite value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkLaunchSite() when $default != null:
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
    TResult Function(
            @JsonKey(name: 'site_id') String? siteId,
            @JsonKey(name: 'site_name') String? siteName,
            @JsonKey(name: 'site_name_long') String? siteNameLong)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NetworkLaunchSite() when $default != null:
        return $default(_that.siteId, _that.siteName, _that.siteNameLong);
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
    TResult Function(
            @JsonKey(name: 'site_id') String? siteId,
            @JsonKey(name: 'site_name') String? siteName,
            @JsonKey(name: 'site_name_long') String? siteNameLong)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkLaunchSite():
        return $default(_that.siteId, _that.siteName, _that.siteNameLong);
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
    TResult? Function(
            @JsonKey(name: 'site_id') String? siteId,
            @JsonKey(name: 'site_name') String? siteName,
            @JsonKey(name: 'site_name_long') String? siteNameLong)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkLaunchSite() when $default != null:
        return $default(_that.siteId, _that.siteName, _that.siteNameLong);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _NetworkLaunchSite implements NetworkLaunchSite {
  const _NetworkLaunchSite(
      {@JsonKey(name: 'site_id') this.siteId,
      @JsonKey(name: 'site_name') this.siteName,
      @JsonKey(name: 'site_name_long') this.siteNameLong});
  factory _NetworkLaunchSite.fromJson(Map<String, dynamic> json) =>
      _$NetworkLaunchSiteFromJson(json);

  @override
  @JsonKey(name: 'site_id')
  final String? siteId;
  @override
  @JsonKey(name: 'site_name')
  final String? siteName;
  @override
  @JsonKey(name: 'site_name_long')
  final String? siteNameLong;

  /// Create a copy of NetworkLaunchSite
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NetworkLaunchSiteCopyWith<_NetworkLaunchSite> get copyWith =>
      __$NetworkLaunchSiteCopyWithImpl<_NetworkLaunchSite>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NetworkLaunchSiteToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NetworkLaunchSite &&
            (identical(other.siteId, siteId) || other.siteId == siteId) &&
            (identical(other.siteName, siteName) ||
                other.siteName == siteName) &&
            (identical(other.siteNameLong, siteNameLong) ||
                other.siteNameLong == siteNameLong));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, siteId, siteName, siteNameLong);

  @override
  String toString() {
    return 'NetworkLaunchSite(siteId: $siteId, siteName: $siteName, siteNameLong: $siteNameLong)';
  }
}

/// @nodoc
abstract mixin class _$NetworkLaunchSiteCopyWith<$Res>
    implements $NetworkLaunchSiteCopyWith<$Res> {
  factory _$NetworkLaunchSiteCopyWith(
          _NetworkLaunchSite value, $Res Function(_NetworkLaunchSite) _then) =
      __$NetworkLaunchSiteCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'site_id') String? siteId,
      @JsonKey(name: 'site_name') String? siteName,
      @JsonKey(name: 'site_name_long') String? siteNameLong});
}

/// @nodoc
class __$NetworkLaunchSiteCopyWithImpl<$Res>
    implements _$NetworkLaunchSiteCopyWith<$Res> {
  __$NetworkLaunchSiteCopyWithImpl(this._self, this._then);

  final _NetworkLaunchSite _self;
  final $Res Function(_NetworkLaunchSite) _then;

  /// Create a copy of NetworkLaunchSite
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? siteId = freezed,
    Object? siteName = freezed,
    Object? siteNameLong = freezed,
  }) {
    return _then(_NetworkLaunchSite(
      siteId: freezed == siteId
          ? _self.siteId
          : siteId // ignore: cast_nullable_to_non_nullable
              as String?,
      siteName: freezed == siteName
          ? _self.siteName
          : siteName // ignore: cast_nullable_to_non_nullable
              as String?,
      siteNameLong: freezed == siteNameLong
          ? _self.siteNameLong
          : siteNameLong // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$NetworkLaunchFailureDetails {
  @JsonKey(name: 'time')
  int? get time;
  @JsonKey(name: 'altitude')
  int? get altitude;
  @JsonKey(name: 'reason')
  String? get reason;

  /// Create a copy of NetworkLaunchFailureDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NetworkLaunchFailureDetailsCopyWith<NetworkLaunchFailureDetails>
      get copyWith => _$NetworkLaunchFailureDetailsCopyWithImpl<
              NetworkLaunchFailureDetails>(
          this as NetworkLaunchFailureDetails, _$identity);

  /// Serializes this NetworkLaunchFailureDetails to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NetworkLaunchFailureDetails &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.altitude, altitude) ||
                other.altitude == altitude) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, time, altitude, reason);

  @override
  String toString() {
    return 'NetworkLaunchFailureDetails(time: $time, altitude: $altitude, reason: $reason)';
  }
}

/// @nodoc
abstract mixin class $NetworkLaunchFailureDetailsCopyWith<$Res> {
  factory $NetworkLaunchFailureDetailsCopyWith(
          NetworkLaunchFailureDetails value,
          $Res Function(NetworkLaunchFailureDetails) _then) =
      _$NetworkLaunchFailureDetailsCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'time') int? time,
      @JsonKey(name: 'altitude') int? altitude,
      @JsonKey(name: 'reason') String? reason});
}

/// @nodoc
class _$NetworkLaunchFailureDetailsCopyWithImpl<$Res>
    implements $NetworkLaunchFailureDetailsCopyWith<$Res> {
  _$NetworkLaunchFailureDetailsCopyWithImpl(this._self, this._then);

  final NetworkLaunchFailureDetails _self;
  final $Res Function(NetworkLaunchFailureDetails) _then;

  /// Create a copy of NetworkLaunchFailureDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? altitude = freezed,
    Object? reason = freezed,
  }) {
    return _then(_self.copyWith(
      time: freezed == time
          ? _self.time
          : time // ignore: cast_nullable_to_non_nullable
              as int?,
      altitude: freezed == altitude
          ? _self.altitude
          : altitude // ignore: cast_nullable_to_non_nullable
              as int?,
      reason: freezed == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [NetworkLaunchFailureDetails].
extension NetworkLaunchFailureDetailsPatterns on NetworkLaunchFailureDetails {
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
    TResult Function(_NetworkLaunchFailureDetails value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NetworkLaunchFailureDetails() when $default != null:
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
    TResult Function(_NetworkLaunchFailureDetails value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkLaunchFailureDetails():
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
    TResult? Function(_NetworkLaunchFailureDetails value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkLaunchFailureDetails() when $default != null:
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
    TResult Function(
            @JsonKey(name: 'time') int? time,
            @JsonKey(name: 'altitude') int? altitude,
            @JsonKey(name: 'reason') String? reason)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NetworkLaunchFailureDetails() when $default != null:
        return $default(_that.time, _that.altitude, _that.reason);
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
    TResult Function(
            @JsonKey(name: 'time') int? time,
            @JsonKey(name: 'altitude') int? altitude,
            @JsonKey(name: 'reason') String? reason)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkLaunchFailureDetails():
        return $default(_that.time, _that.altitude, _that.reason);
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
    TResult? Function(
            @JsonKey(name: 'time') int? time,
            @JsonKey(name: 'altitude') int? altitude,
            @JsonKey(name: 'reason') String? reason)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkLaunchFailureDetails() when $default != null:
        return $default(_that.time, _that.altitude, _that.reason);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _NetworkLaunchFailureDetails implements NetworkLaunchFailureDetails {
  const _NetworkLaunchFailureDetails(
      {@JsonKey(name: 'time') this.time,
      @JsonKey(name: 'altitude') this.altitude,
      @JsonKey(name: 'reason') this.reason});
  factory _NetworkLaunchFailureDetails.fromJson(Map<String, dynamic> json) =>
      _$NetworkLaunchFailureDetailsFromJson(json);

  @override
  @JsonKey(name: 'time')
  final int? time;
  @override
  @JsonKey(name: 'altitude')
  final int? altitude;
  @override
  @JsonKey(name: 'reason')
  final String? reason;

  /// Create a copy of NetworkLaunchFailureDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NetworkLaunchFailureDetailsCopyWith<_NetworkLaunchFailureDetails>
      get copyWith => __$NetworkLaunchFailureDetailsCopyWithImpl<
          _NetworkLaunchFailureDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NetworkLaunchFailureDetailsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NetworkLaunchFailureDetails &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.altitude, altitude) ||
                other.altitude == altitude) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, time, altitude, reason);

  @override
  String toString() {
    return 'NetworkLaunchFailureDetails(time: $time, altitude: $altitude, reason: $reason)';
  }
}

/// @nodoc
abstract mixin class _$NetworkLaunchFailureDetailsCopyWith<$Res>
    implements $NetworkLaunchFailureDetailsCopyWith<$Res> {
  factory _$NetworkLaunchFailureDetailsCopyWith(
          _NetworkLaunchFailureDetails value,
          $Res Function(_NetworkLaunchFailureDetails) _then) =
      __$NetworkLaunchFailureDetailsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'time') int? time,
      @JsonKey(name: 'altitude') int? altitude,
      @JsonKey(name: 'reason') String? reason});
}

/// @nodoc
class __$NetworkLaunchFailureDetailsCopyWithImpl<$Res>
    implements _$NetworkLaunchFailureDetailsCopyWith<$Res> {
  __$NetworkLaunchFailureDetailsCopyWithImpl(this._self, this._then);

  final _NetworkLaunchFailureDetails _self;
  final $Res Function(_NetworkLaunchFailureDetails) _then;

  /// Create a copy of NetworkLaunchFailureDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? time = freezed,
    Object? altitude = freezed,
    Object? reason = freezed,
  }) {
    return _then(_NetworkLaunchFailureDetails(
      time: freezed == time
          ? _self.time
          : time // ignore: cast_nullable_to_non_nullable
              as int?,
      altitude: freezed == altitude
          ? _self.altitude
          : altitude // ignore: cast_nullable_to_non_nullable
              as int?,
      reason: freezed == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$NetworkTimeline {
  @JsonKey(name: 'webcast_liftoff')
  int? get webcastLiftoff;

  /// Create a copy of NetworkTimeline
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NetworkTimelineCopyWith<NetworkTimeline> get copyWith =>
      _$NetworkTimelineCopyWithImpl<NetworkTimeline>(
          this as NetworkTimeline, _$identity);

  /// Serializes this NetworkTimeline to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NetworkTimeline &&
            (identical(other.webcastLiftoff, webcastLiftoff) ||
                other.webcastLiftoff == webcastLiftoff));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, webcastLiftoff);

  @override
  String toString() {
    return 'NetworkTimeline(webcastLiftoff: $webcastLiftoff)';
  }
}

/// @nodoc
abstract mixin class $NetworkTimelineCopyWith<$Res> {
  factory $NetworkTimelineCopyWith(
          NetworkTimeline value, $Res Function(NetworkTimeline) _then) =
      _$NetworkTimelineCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'webcast_liftoff') int? webcastLiftoff});
}

/// @nodoc
class _$NetworkTimelineCopyWithImpl<$Res>
    implements $NetworkTimelineCopyWith<$Res> {
  _$NetworkTimelineCopyWithImpl(this._self, this._then);

  final NetworkTimeline _self;
  final $Res Function(NetworkTimeline) _then;

  /// Create a copy of NetworkTimeline
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? webcastLiftoff = freezed,
  }) {
    return _then(_self.copyWith(
      webcastLiftoff: freezed == webcastLiftoff
          ? _self.webcastLiftoff
          : webcastLiftoff // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// Adds pattern-matching-related methods to [NetworkTimeline].
extension NetworkTimelinePatterns on NetworkTimeline {
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
    TResult Function(_NetworkTimeline value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NetworkTimeline() when $default != null:
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
    TResult Function(_NetworkTimeline value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkTimeline():
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
    TResult? Function(_NetworkTimeline value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkTimeline() when $default != null:
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
    TResult Function(@JsonKey(name: 'webcast_liftoff') int? webcastLiftoff)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NetworkTimeline() when $default != null:
        return $default(_that.webcastLiftoff);
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
    TResult Function(@JsonKey(name: 'webcast_liftoff') int? webcastLiftoff)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkTimeline():
        return $default(_that.webcastLiftoff);
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
    TResult? Function(@JsonKey(name: 'webcast_liftoff') int? webcastLiftoff)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NetworkTimeline() when $default != null:
        return $default(_that.webcastLiftoff);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _NetworkTimeline implements NetworkTimeline {
  const _NetworkTimeline(
      {@JsonKey(name: 'webcast_liftoff') this.webcastLiftoff});
  factory _NetworkTimeline.fromJson(Map<String, dynamic> json) =>
      _$NetworkTimelineFromJson(json);

  @override
  @JsonKey(name: 'webcast_liftoff')
  final int? webcastLiftoff;

  /// Create a copy of NetworkTimeline
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NetworkTimelineCopyWith<_NetworkTimeline> get copyWith =>
      __$NetworkTimelineCopyWithImpl<_NetworkTimeline>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NetworkTimelineToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NetworkTimeline &&
            (identical(other.webcastLiftoff, webcastLiftoff) ||
                other.webcastLiftoff == webcastLiftoff));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, webcastLiftoff);

  @override
  String toString() {
    return 'NetworkTimeline(webcastLiftoff: $webcastLiftoff)';
  }
}

/// @nodoc
abstract mixin class _$NetworkTimelineCopyWith<$Res>
    implements $NetworkTimelineCopyWith<$Res> {
  factory _$NetworkTimelineCopyWith(
          _NetworkTimeline value, $Res Function(_NetworkTimeline) _then) =
      __$NetworkTimelineCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'webcast_liftoff') int? webcastLiftoff});
}

/// @nodoc
class __$NetworkTimelineCopyWithImpl<$Res>
    implements _$NetworkTimelineCopyWith<$Res> {
  __$NetworkTimelineCopyWithImpl(this._self, this._then);

  final _NetworkTimeline _self;
  final $Res Function(_NetworkTimeline) _then;

  /// Create a copy of NetworkTimeline
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? webcastLiftoff = freezed,
  }) {
    return _then(_NetworkTimeline(
      webcastLiftoff: freezed == webcastLiftoff
          ? _self.webcastLiftoff
          : webcastLiftoff // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

// dart format on

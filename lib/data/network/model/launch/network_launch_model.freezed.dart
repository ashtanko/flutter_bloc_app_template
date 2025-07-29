// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_launch_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NetworkLaunchModel {
  @JsonKey(name: '_id')
  String? get id;
  @JsonKey(name: 'flight_number')
  int? get flightNumber;
  @JsonKey(name: 'mission_name')
  String? get missionName;
  @TimestampSerializer()
  @JsonKey(name: 'launch_date_utc')
  DateTime? get launchDate;
  @JsonKey(name: 'rocket')
  NetworkRocketModel? get rocket;
  @JsonKey(name: 'launch_success')
  bool get success;
  @JsonKey(name: 'links')
  NetworkLaunchLinksModel? get links;

  /// Create a copy of NetworkLaunchModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NetworkLaunchModelCopyWith<NetworkLaunchModel> get copyWith =>
      _$NetworkLaunchModelCopyWithImpl<NetworkLaunchModel>(
          this as NetworkLaunchModel, _$identity);

  /// Serializes this NetworkLaunchModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NetworkLaunchModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.flightNumber, flightNumber) ||
                other.flightNumber == flightNumber) &&
            (identical(other.missionName, missionName) ||
                other.missionName == missionName) &&
            (identical(other.launchDate, launchDate) ||
                other.launchDate == launchDate) &&
            (identical(other.rocket, rocket) || other.rocket == rocket) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.links, links) || other.links == links));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, flightNumber, missionName,
      launchDate, rocket, success, links);

  @override
  String toString() {
    return 'NetworkLaunchModel(id: $id, flightNumber: $flightNumber, missionName: $missionName, launchDate: $launchDate, rocket: $rocket, success: $success, links: $links)';
  }
}

/// @nodoc
abstract mixin class $NetworkLaunchModelCopyWith<$Res> {
  factory $NetworkLaunchModelCopyWith(
          NetworkLaunchModel value, $Res Function(NetworkLaunchModel) _then) =
      _$NetworkLaunchModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'flight_number') int? flightNumber,
      @JsonKey(name: 'mission_name') String? missionName,
      @TimestampSerializer()
      @JsonKey(name: 'launch_date_utc')
      DateTime? launchDate,
      @JsonKey(name: 'rocket') NetworkRocketModel? rocket,
      @JsonKey(name: 'launch_success') bool success,
      @JsonKey(name: 'links') NetworkLaunchLinksModel? links});

  $NetworkRocketModelCopyWith<$Res>? get rocket;
  $NetworkLaunchLinksModelCopyWith<$Res>? get links;
}

/// @nodoc
class _$NetworkLaunchModelCopyWithImpl<$Res>
    implements $NetworkLaunchModelCopyWith<$Res> {
  _$NetworkLaunchModelCopyWithImpl(this._self, this._then);

  final NetworkLaunchModel _self;
  final $Res Function(NetworkLaunchModel) _then;

  /// Create a copy of NetworkLaunchModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? flightNumber = freezed,
    Object? missionName = freezed,
    Object? launchDate = freezed,
    Object? rocket = freezed,
    Object? success = null,
    Object? links = freezed,
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
      launchDate: freezed == launchDate
          ? _self.launchDate
          : launchDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rocket: freezed == rocket
          ? _self.rocket
          : rocket // ignore: cast_nullable_to_non_nullable
              as NetworkRocketModel?,
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      links: freezed == links
          ? _self.links
          : links // ignore: cast_nullable_to_non_nullable
              as NetworkLaunchLinksModel?,
    ));
  }

  /// Create a copy of NetworkLaunchModel
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

  /// Create a copy of NetworkLaunchModel
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
}

/// @nodoc
@JsonSerializable()
class _NetworkLaunchModel extends NetworkLaunchModel {
  const _NetworkLaunchModel(
      {@JsonKey(name: '_id') this.id,
      @JsonKey(name: 'flight_number') this.flightNumber,
      @JsonKey(name: 'mission_name') this.missionName,
      @TimestampSerializer() @JsonKey(name: 'launch_date_utc') this.launchDate,
      @JsonKey(name: 'rocket') this.rocket,
      @JsonKey(name: 'launch_success') this.success = false,
      @JsonKey(name: 'links') this.links})
      : super._();
  factory _NetworkLaunchModel.fromJson(Map<String, dynamic> json) =>
      _$NetworkLaunchModelFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @JsonKey(name: 'flight_number')
  final int? flightNumber;
  @override
  @JsonKey(name: 'mission_name')
  final String? missionName;
  @override
  @TimestampSerializer()
  @JsonKey(name: 'launch_date_utc')
  final DateTime? launchDate;
  @override
  @JsonKey(name: 'rocket')
  final NetworkRocketModel? rocket;
  @override
  @JsonKey(name: 'launch_success')
  final bool success;
  @override
  @JsonKey(name: 'links')
  final NetworkLaunchLinksModel? links;

  /// Create a copy of NetworkLaunchModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NetworkLaunchModelCopyWith<_NetworkLaunchModel> get copyWith =>
      __$NetworkLaunchModelCopyWithImpl<_NetworkLaunchModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NetworkLaunchModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NetworkLaunchModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.flightNumber, flightNumber) ||
                other.flightNumber == flightNumber) &&
            (identical(other.missionName, missionName) ||
                other.missionName == missionName) &&
            (identical(other.launchDate, launchDate) ||
                other.launchDate == launchDate) &&
            (identical(other.rocket, rocket) || other.rocket == rocket) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.links, links) || other.links == links));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, flightNumber, missionName,
      launchDate, rocket, success, links);

  @override
  String toString() {
    return 'NetworkLaunchModel(id: $id, flightNumber: $flightNumber, missionName: $missionName, launchDate: $launchDate, rocket: $rocket, success: $success, links: $links)';
  }
}

/// @nodoc
abstract mixin class _$NetworkLaunchModelCopyWith<$Res>
    implements $NetworkLaunchModelCopyWith<$Res> {
  factory _$NetworkLaunchModelCopyWith(
          _NetworkLaunchModel value, $Res Function(_NetworkLaunchModel) _then) =
      __$NetworkLaunchModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'flight_number') int? flightNumber,
      @JsonKey(name: 'mission_name') String? missionName,
      @TimestampSerializer()
      @JsonKey(name: 'launch_date_utc')
      DateTime? launchDate,
      @JsonKey(name: 'rocket') NetworkRocketModel? rocket,
      @JsonKey(name: 'launch_success') bool success,
      @JsonKey(name: 'links') NetworkLaunchLinksModel? links});

  @override
  $NetworkRocketModelCopyWith<$Res>? get rocket;
  @override
  $NetworkLaunchLinksModelCopyWith<$Res>? get links;
}

/// @nodoc
class __$NetworkLaunchModelCopyWithImpl<$Res>
    implements _$NetworkLaunchModelCopyWith<$Res> {
  __$NetworkLaunchModelCopyWithImpl(this._self, this._then);

  final _NetworkLaunchModel _self;
  final $Res Function(_NetworkLaunchModel) _then;

  /// Create a copy of NetworkLaunchModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? flightNumber = freezed,
    Object? missionName = freezed,
    Object? launchDate = freezed,
    Object? rocket = freezed,
    Object? success = null,
    Object? links = freezed,
  }) {
    return _then(_NetworkLaunchModel(
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
      launchDate: freezed == launchDate
          ? _self.launchDate
          : launchDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rocket: freezed == rocket
          ? _self.rocket
          : rocket // ignore: cast_nullable_to_non_nullable
              as NetworkRocketModel?,
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      links: freezed == links
          ? _self.links
          : links // ignore: cast_nullable_to_non_nullable
              as NetworkLaunchLinksModel?,
    ));
  }

  /// Create a copy of NetworkLaunchModel
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

  /// Create a copy of NetworkLaunchModel
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
}

/// @nodoc
mixin _$NetworkRocketModel {
  @JsonKey(name: 'rocket_id')
  String get id;
  @JsonKey(name: 'rocket_type')
  String? get type;
  @JsonKey(name: 'rocket_name')
  String? get name;

  /// Create a copy of NetworkRocketModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NetworkRocketModelCopyWith<NetworkRocketModel> get copyWith =>
      _$NetworkRocketModelCopyWithImpl<NetworkRocketModel>(
          this as NetworkRocketModel, _$identity);

  /// Serializes this NetworkRocketModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NetworkRocketModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, name);

  @override
  String toString() {
    return 'NetworkRocketModel(id: $id, type: $type, name: $name)';
  }
}

/// @nodoc
abstract mixin class $NetworkRocketModelCopyWith<$Res> {
  factory $NetworkRocketModelCopyWith(
          NetworkRocketModel value, $Res Function(NetworkRocketModel) _then) =
      _$NetworkRocketModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'rocket_id') String id,
      @JsonKey(name: 'rocket_type') String? type,
      @JsonKey(name: 'rocket_name') String? name});
}

/// @nodoc
class _$NetworkRocketModelCopyWithImpl<$Res>
    implements $NetworkRocketModelCopyWith<$Res> {
  _$NetworkRocketModelCopyWithImpl(this._self, this._then);

  final NetworkRocketModel _self;
  final $Res Function(NetworkRocketModel) _then;

  /// Create a copy of NetworkRocketModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = freezed,
    Object? name = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _NetworkRocketModel extends NetworkRocketModel {
  const _NetworkRocketModel(
      {@JsonKey(name: 'rocket_id') required this.id,
      @JsonKey(name: 'rocket_type') this.type,
      @JsonKey(name: 'rocket_name') this.name})
      : super._();
  factory _NetworkRocketModel.fromJson(Map<String, dynamic> json) =>
      _$NetworkRocketModelFromJson(json);

  @override
  @JsonKey(name: 'rocket_id')
  final String id;
  @override
  @JsonKey(name: 'rocket_type')
  final String? type;
  @override
  @JsonKey(name: 'rocket_name')
  final String? name;

  /// Create a copy of NetworkRocketModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NetworkRocketModelCopyWith<_NetworkRocketModel> get copyWith =>
      __$NetworkRocketModelCopyWithImpl<_NetworkRocketModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NetworkRocketModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NetworkRocketModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, name);

  @override
  String toString() {
    return 'NetworkRocketModel(id: $id, type: $type, name: $name)';
  }
}

/// @nodoc
abstract mixin class _$NetworkRocketModelCopyWith<$Res>
    implements $NetworkRocketModelCopyWith<$Res> {
  factory _$NetworkRocketModelCopyWith(
          _NetworkRocketModel value, $Res Function(_NetworkRocketModel) _then) =
      __$NetworkRocketModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'rocket_id') String id,
      @JsonKey(name: 'rocket_type') String? type,
      @JsonKey(name: 'rocket_name') String? name});
}

/// @nodoc
class __$NetworkRocketModelCopyWithImpl<$Res>
    implements _$NetworkRocketModelCopyWith<$Res> {
  __$NetworkRocketModelCopyWithImpl(this._self, this._then);

  final _NetworkRocketModel _self;
  final $Res Function(_NetworkRocketModel) _then;

  /// Create a copy of NetworkRocketModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? type = freezed,
    Object? name = freezed,
  }) {
    return _then(_NetworkRocketModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$NetworkLaunchLinksModel {
  @JsonKey(name: 'mission_patch')
  String? get missionPatch;
  @JsonKey(name: 'mission_patch_small')
  String? get missionPatchSmall;
  @JsonKey(name: 'article_link')
  String? get articleLink;
  @JsonKey(name: 'wikipedia')
  String? get wikipedia;
  @JsonKey(name: 'youtube_id')
  String? get youtubeId;

  /// Create a copy of NetworkLaunchLinksModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NetworkLaunchLinksModelCopyWith<NetworkLaunchLinksModel> get copyWith =>
      _$NetworkLaunchLinksModelCopyWithImpl<NetworkLaunchLinksModel>(
          this as NetworkLaunchLinksModel, _$identity);

  /// Serializes this NetworkLaunchLinksModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NetworkLaunchLinksModel &&
            (identical(other.missionPatch, missionPatch) ||
                other.missionPatch == missionPatch) &&
            (identical(other.missionPatchSmall, missionPatchSmall) ||
                other.missionPatchSmall == missionPatchSmall) &&
            (identical(other.articleLink, articleLink) ||
                other.articleLink == articleLink) &&
            (identical(other.wikipedia, wikipedia) ||
                other.wikipedia == wikipedia) &&
            (identical(other.youtubeId, youtubeId) ||
                other.youtubeId == youtubeId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, missionPatch, missionPatchSmall,
      articleLink, wikipedia, youtubeId);

  @override
  String toString() {
    return 'NetworkLaunchLinksModel(missionPatch: $missionPatch, missionPatchSmall: $missionPatchSmall, articleLink: $articleLink, wikipedia: $wikipedia, youtubeId: $youtubeId)';
  }
}

/// @nodoc
abstract mixin class $NetworkLaunchLinksModelCopyWith<$Res> {
  factory $NetworkLaunchLinksModelCopyWith(NetworkLaunchLinksModel value,
          $Res Function(NetworkLaunchLinksModel) _then) =
      _$NetworkLaunchLinksModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'mission_patch') String? missionPatch,
      @JsonKey(name: 'mission_patch_small') String? missionPatchSmall,
      @JsonKey(name: 'article_link') String? articleLink,
      @JsonKey(name: 'wikipedia') String? wikipedia,
      @JsonKey(name: 'youtube_id') String? youtubeId});
}

/// @nodoc
class _$NetworkLaunchLinksModelCopyWithImpl<$Res>
    implements $NetworkLaunchLinksModelCopyWith<$Res> {
  _$NetworkLaunchLinksModelCopyWithImpl(this._self, this._then);

  final NetworkLaunchLinksModel _self;
  final $Res Function(NetworkLaunchLinksModel) _then;

  /// Create a copy of NetworkLaunchLinksModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? missionPatch = freezed,
    Object? missionPatchSmall = freezed,
    Object? articleLink = freezed,
    Object? wikipedia = freezed,
    Object? youtubeId = freezed,
  }) {
    return _then(_self.copyWith(
      missionPatch: freezed == missionPatch
          ? _self.missionPatch
          : missionPatch // ignore: cast_nullable_to_non_nullable
              as String?,
      missionPatchSmall: freezed == missionPatchSmall
          ? _self.missionPatchSmall
          : missionPatchSmall // ignore: cast_nullable_to_non_nullable
              as String?,
      articleLink: freezed == articleLink
          ? _self.articleLink
          : articleLink // ignore: cast_nullable_to_non_nullable
              as String?,
      wikipedia: freezed == wikipedia
          ? _self.wikipedia
          : wikipedia // ignore: cast_nullable_to_non_nullable
              as String?,
      youtubeId: freezed == youtubeId
          ? _self.youtubeId
          : youtubeId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _NetworkLaunchLinksModel extends NetworkLaunchLinksModel {
  const _NetworkLaunchLinksModel(
      {@JsonKey(name: 'mission_patch') this.missionPatch,
      @JsonKey(name: 'mission_patch_small') this.missionPatchSmall,
      @JsonKey(name: 'article_link') this.articleLink,
      @JsonKey(name: 'wikipedia') this.wikipedia,
      @JsonKey(name: 'youtube_id') this.youtubeId})
      : super._();
  factory _NetworkLaunchLinksModel.fromJson(Map<String, dynamic> json) =>
      _$NetworkLaunchLinksModelFromJson(json);

  @override
  @JsonKey(name: 'mission_patch')
  final String? missionPatch;
  @override
  @JsonKey(name: 'mission_patch_small')
  final String? missionPatchSmall;
  @override
  @JsonKey(name: 'article_link')
  final String? articleLink;
  @override
  @JsonKey(name: 'wikipedia')
  final String? wikipedia;
  @override
  @JsonKey(name: 'youtube_id')
  final String? youtubeId;

  /// Create a copy of NetworkLaunchLinksModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NetworkLaunchLinksModelCopyWith<_NetworkLaunchLinksModel> get copyWith =>
      __$NetworkLaunchLinksModelCopyWithImpl<_NetworkLaunchLinksModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NetworkLaunchLinksModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NetworkLaunchLinksModel &&
            (identical(other.missionPatch, missionPatch) ||
                other.missionPatch == missionPatch) &&
            (identical(other.missionPatchSmall, missionPatchSmall) ||
                other.missionPatchSmall == missionPatchSmall) &&
            (identical(other.articleLink, articleLink) ||
                other.articleLink == articleLink) &&
            (identical(other.wikipedia, wikipedia) ||
                other.wikipedia == wikipedia) &&
            (identical(other.youtubeId, youtubeId) ||
                other.youtubeId == youtubeId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, missionPatch, missionPatchSmall,
      articleLink, wikipedia, youtubeId);

  @override
  String toString() {
    return 'NetworkLaunchLinksModel(missionPatch: $missionPatch, missionPatchSmall: $missionPatchSmall, articleLink: $articleLink, wikipedia: $wikipedia, youtubeId: $youtubeId)';
  }
}

/// @nodoc
abstract mixin class _$NetworkLaunchLinksModelCopyWith<$Res>
    implements $NetworkLaunchLinksModelCopyWith<$Res> {
  factory _$NetworkLaunchLinksModelCopyWith(_NetworkLaunchLinksModel value,
          $Res Function(_NetworkLaunchLinksModel) _then) =
      __$NetworkLaunchLinksModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'mission_patch') String? missionPatch,
      @JsonKey(name: 'mission_patch_small') String? missionPatchSmall,
      @JsonKey(name: 'article_link') String? articleLink,
      @JsonKey(name: 'wikipedia') String? wikipedia,
      @JsonKey(name: 'youtube_id') String? youtubeId});
}

/// @nodoc
class __$NetworkLaunchLinksModelCopyWithImpl<$Res>
    implements _$NetworkLaunchLinksModelCopyWith<$Res> {
  __$NetworkLaunchLinksModelCopyWithImpl(this._self, this._then);

  final _NetworkLaunchLinksModel _self;
  final $Res Function(_NetworkLaunchLinksModel) _then;

  /// Create a copy of NetworkLaunchLinksModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? missionPatch = freezed,
    Object? missionPatchSmall = freezed,
    Object? articleLink = freezed,
    Object? wikipedia = freezed,
    Object? youtubeId = freezed,
  }) {
    return _then(_NetworkLaunchLinksModel(
      missionPatch: freezed == missionPatch
          ? _self.missionPatch
          : missionPatch // ignore: cast_nullable_to_non_nullable
              as String?,
      missionPatchSmall: freezed == missionPatchSmall
          ? _self.missionPatchSmall
          : missionPatchSmall // ignore: cast_nullable_to_non_nullable
              as String?,
      articleLink: freezed == articleLink
          ? _self.articleLink
          : articleLink // ignore: cast_nullable_to_non_nullable
              as String?,
      wikipedia: freezed == wikipedia
          ? _self.wikipedia
          : wikipedia // ignore: cast_nullable_to_non_nullable
              as String?,
      youtubeId: freezed == youtubeId
          ? _self.youtubeId
          : youtubeId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on

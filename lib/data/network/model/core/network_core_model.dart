import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_core_model.freezed.dart';
part 'network_core_model.g.dart';

@freezed
abstract class NetworkCoreModel with _$NetworkCoreModel {
  const factory NetworkCoreModel({
    @JsonKey(name: 'core_serial') String? coreSerial,
    int? block,
    String? status,
    @JsonKey(name: 'original_launch') String? originalLaunch,
    @JsonKey(name: 'original_launch_unix') int? originalLaunchUnix,
    List<NetworkMission>? missions,
    @JsonKey(name: 'reuse_count') int? reuseCount,
    @JsonKey(name: 'rtls_attempts') int? rtlsAttempts,
    @JsonKey(name: 'rtls_landings') int? rtlsLandings,
    @JsonKey(name: 'asds_attempts') int? asdsAttempts,
    @JsonKey(name: 'asds_landings') int? asdsLandings,
    @JsonKey(name: 'water_landing') bool? waterLanding,
    String? details,
  }) = _NetworkCoreModel;

  const NetworkCoreModel._();

  factory NetworkCoreModel.fromJson(Map<String, dynamic> json) =>
      _$NetworkCoreModelFromJson(json);
}

@freezed
abstract class NetworkMission with _$NetworkMission {
  const factory NetworkMission({
    String? name,
    int? flight,
  }) = _NetworkMission;

  const NetworkMission._();

  factory NetworkMission.fromJson(Map<String, dynamic> json) =>
      _$NetworkMissionFromJson(json);
}

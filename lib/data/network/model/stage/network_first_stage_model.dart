import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_first_stage_model.freezed.dart';
part 'network_first_stage_model.g.dart';

@freezed
abstract class NetworkFirstStageModel with _$NetworkFirstStageModel {
  const factory NetworkFirstStageModel({
    List<NetworkStageCoreModel>? cores,
  }) = _NetworkFirstStageModel;

  const NetworkFirstStageModel._();

  factory NetworkFirstStageModel.fromJson(Map<String, dynamic> json) =>
      _$NetworkFirstStageModelFromJson(json);
}

@freezed
abstract class NetworkStageCoreModel with _$NetworkStageCoreModel {
  const factory NetworkStageCoreModel({
    @JsonKey(name: 'core_serial') String? coreSerial,
    int? flight,
    int? block,
    bool? gridfins,
    bool? legs,
    bool? reused,
    @JsonKey(name: 'land_success') bool? landSuccess,
    @JsonKey(name: 'landing_intent') bool? landingIntent,
    @JsonKey(name: 'landing_type') String? landingType,
    @JsonKey(name: 'landing_vehicle') String? landingVehicle,
  }) = _NetworkStageCoreModel;

  const NetworkStageCoreModel._();

  factory NetworkStageCoreModel.fromJson(Map<String, dynamic> json) =>
      _$NetworkStageCoreModelFromJson(json);
}

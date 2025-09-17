import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_core_model.freezed.dart';
part 'network_core_model.g.dart';

@freezed
abstract class NetworkCoreModel with _$NetworkCoreModel {
  const factory NetworkCoreModel({
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
  }) = _NetworkCoreModel;

  const NetworkCoreModel._();

  factory NetworkCoreModel.fromJson(Map<String, dynamic> json) =>
      _$NetworkCoreModelFromJson(json);
}

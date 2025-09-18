import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_payload_model.freezed.dart';
part 'network_payload_model.g.dart';

@freezed
abstract class NetworkPayloadModel with _$NetworkPayloadModel {
  const factory NetworkPayloadModel({
    @JsonKey(name: 'payload_id') String? payloadId,
    @JsonKey(name: 'norad_id') List<int>? noradId,
    bool? reused,
    List<String>? customers,
    String? nationality,
    String? manufacturer,
    @JsonKey(name: 'payload_type') String? payloadType,
    @JsonKey(name: 'payload_mass_kg') int? payloadMassKg,
    @JsonKey(name: 'payload_mass_lbs') int? payloadMassLbs,
    String? orbit,
  }) = _NetworkPayloadModel;

  const NetworkPayloadModel._();

  factory NetworkPayloadModel.fromJson(Map<String, dynamic> json) =>
      _$NetworkPayloadModelFromJson(json);
}

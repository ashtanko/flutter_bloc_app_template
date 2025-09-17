import 'package:flutter_bloc_app_template/data/network/model/payload/network_payload_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_second_stage_model.freezed.dart';
part 'network_second_stage_model.g.dart';

@freezed
abstract class NetworkSecondStageModel with _$NetworkSecondStageModel {
  const factory NetworkSecondStageModel({
    int? block,
    List<NetworkPayloadModel>? payloads,
  }) = _NetworkSecondStageModel;

  const NetworkSecondStageModel._();

  factory NetworkSecondStageModel.fromJson(Map<String, dynamic> json) =>
      _$NetworkSecondStageModelFromJson(json);
}

import 'package:flutter_bloc_app_template/data/network/model/core/network_core_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_first_stage_model.freezed.dart';
part 'network_first_stage_model.g.dart';

@freezed
abstract class NetworkFirstStageModel with _$NetworkFirstStageModel {
  const factory NetworkFirstStageModel({
    List<NetworkCoreModel>? cores,
  }) = _NetworkFirstStageModel;

  const NetworkFirstStageModel._();

  factory NetworkFirstStageModel.fromJson(Map<String, dynamic> json) =>
      _$NetworkFirstStageModelFromJson(json);
}

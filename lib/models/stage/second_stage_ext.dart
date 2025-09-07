import 'package:flutter_bloc_app_template/data/network/model/stage/network_second_stage_model.dart';
import 'package:flutter_bloc_app_template/models/payload/payload_ext.dart';
import 'package:flutter_bloc_app_template/models/stage/second_stage_resource.dart';

extension SecondStageExt on NetworkSecondStageModel {
  SecondStageResource toResource() {
    return SecondStageResource(
      block: block,
      payloads: payloads?.map((e) => e.toResource()).toList(growable: false),
    );
  }
}

import 'package:flutter_bloc_app_template/data/network/model/launch/network_first_stage_model.dart';
import 'package:flutter_bloc_app_template/models/core/core_ext.dart';
import 'package:flutter_bloc_app_template/models/launch/first_stage_resource.dart';

extension FirstStageExt on NetworkFirstStageModel {
  FirstStageResource toResource() {
    return FirstStageResource(
      cores: cores?.map((e) => e.toResource()).toList(),
    );
  }
}

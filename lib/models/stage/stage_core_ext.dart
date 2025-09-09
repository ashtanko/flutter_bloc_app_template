import 'package:flutter_bloc_app_template/data/network/model/stage/network_first_stage_model.dart';
import 'package:flutter_bloc_app_template/models/stage/stage_core_resource.dart';

extension CoreExt on NetworkStageCoreModel {
  StageCoreResource toResource() {
    return StageCoreResource(
      coreSerial: coreSerial,
      flight: flight,
      block: block,
      gridfins: gridfins,
      legs: legs,
      reused: reused,
      landSuccess: landSuccess,
      landingIntent: landingIntent,
      landingType: landingType,
      landingVehicle: landingVehicle,
    );
  }
}

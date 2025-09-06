import 'package:flutter_bloc_app_template/data/network/model/core/network_core_model.dart';
import 'package:flutter_bloc_app_template/models/core/core_resource.dart';

extension CoreExt on NetworkCoreModel {
  CoreResource toResource() {
    return CoreResource(
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

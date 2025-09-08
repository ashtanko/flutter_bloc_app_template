import 'package:flutter_bloc_app_template/data/network/model/core/network_core_model.dart';
import 'package:flutter_bloc_app_template/models/core/core_resource.dart';

extension CoreExt on NetworkCoreModel {
  CoreResource toResource() {
    return CoreResource(
      coreSerial: coreSerial,
      block: block,
      status: status,
      originalLaunch: originalLaunch,
      originalLaunchUnix: originalLaunchUnix,
      missions: missions?.map((m) => m.toResource()).toList(),
      reuseCount: reuseCount,
      rtlsAttempts: rtlsAttempts,
      rtlsLandings: rtlsLandings,
      asdsAttempts: asdsAttempts,
      asdsLandings: asdsLandings,
      waterLanding: waterLanding,
      details: details,
    );
  }
}

extension MissionExt on NetworkMission {
  MissionResource toResource() {
    return MissionResource(
      name: name,
      flight: flight,
    );
  }
}

import 'package:flutter_bloc_app_template/data/network/model/payload/network_payload_model.dart';
import 'package:flutter_bloc_app_template/models/payload/payload_resource.dart';

extension PayloadExt on NetworkPayloadModel {
  PayloadResource toResource() {
    return PayloadResource(
      payloadId: payloadId,
      noradId: noradId,
      reused: reused,
      customers: customers,
      nationality: nationality,
      manufacturer: manufacturer,
      payloadType: payloadType,
      payloadMassKg: payloadMassKg,
      payloadMassLbs: payloadMassLbs,
      orbit: orbit,
    );
  }
}

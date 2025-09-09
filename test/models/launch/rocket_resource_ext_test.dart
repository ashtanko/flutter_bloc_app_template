import 'package:flutter_bloc_app_template/data/network/model/launch/network_launch_model.dart';
import 'package:flutter_bloc_app_template/data/network/model/payload/network_payload_model.dart';
import 'package:flutter_bloc_app_template/data/network/model/rocket/network_rocket_model.dart';
import 'package:flutter_bloc_app_template/data/network/model/stage/network_first_stage_model.dart';
import 'package:flutter_bloc_app_template/data/network/model/stage/network_second_stage_model.dart';
import 'package:flutter_bloc_app_template/index.dart';
import 'package:flutter_bloc_app_template/models/payload/payload_resource.dart';
import 'package:flutter_bloc_app_template/models/rocket/rocket_ext.dart';
import 'package:flutter_bloc_app_template/models/stage/stage_core_resource.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('RocketResourceExtension.toResource', () {
    final networkRocket = const NetworkLaunchRocketModel(
      name: 'Falcon 9',
      type: 'FT',
      firstStage: NetworkFirstStageModel(
        cores: [
          NetworkStageCoreModel(coreSerial: 'B1013'),
          NetworkStageCoreModel(coreSerial: 'B1014'),
        ],
      ),
      secondStage: NetworkSecondStageModel(
        block: 1,
        payloads: [
          NetworkPayloadModel(payloadId: 'FalconSAT-2'),
          NetworkPayloadModel(payloadId: 'FalconSAT-3'),
        ],
      ),
      id: '1',
    );

    test('should map all fields including nested stages', () {
      final resource = networkRocket.toResource();

      expect(resource.rocketName, 'Falcon 9');
      expect(resource.rocketType, 'FT');

      // First stage
      expect(resource.firstStage?.cores, [
        const StageCoreResource(coreSerial: 'B1013'),
        const StageCoreResource(coreSerial: 'B1014'),
      ]);

      // Second stage
      expect(resource.secondStage?.block, 1);
      expect(resource.secondStage?.payloads, [
        const PayloadResource(payloadId: 'FalconSAT-2'),
        const PayloadResource(payloadId: 'FalconSAT-3'),
      ]);
    });

    test('should handle null stages correctly', () {
      final networkRocketNullStages = const NetworkRocketModel(
        name: 'Falcon Heavy',
        type: 'Heavy',
        rocketId: '1',
      );

      final resource = networkRocketNullStages.toResource();

      expect(resource.rocketName, 'Falcon Heavy');
      expect(resource.rocketType, 'Heavy');
      expect(resource.firstStage, null);
      expect(resource.secondStage, null);
    });
  });
}

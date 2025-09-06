import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc_app_template/models/launch/second_stage_resource.dart';

import 'first_stage_resource.dart';

@immutable
class RocketResource extends Equatable {
  const RocketResource({
    this.rocketName,
    this.rocketType,
    this.firstStage,
    this.secondStage,
  });

  final String? rocketName;
  final String? rocketType;
  final FirstStageResource? firstStage;
  final SecondStageResource? secondStage;

  @override
  List<Object?> get props => [
        rocketName,
        rocketType,
        firstStage,
        secondStage,
      ];
}

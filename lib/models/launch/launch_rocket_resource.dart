import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc_app_template/models/stage/first_stage_resource.dart';
import 'package:flutter_bloc_app_template/models/stage/second_stage_resource.dart';

@immutable
class LaunchRocketResource extends Equatable {
  const LaunchRocketResource({
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

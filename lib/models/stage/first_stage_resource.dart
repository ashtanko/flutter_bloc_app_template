import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc_app_template/models/core/core_resource.dart';

@immutable
class FirstStageResource extends Equatable {
  const FirstStageResource({this.cores});

  final List<CoreResource>? cores;

  @override
  List<Object?> get props => [cores];
}

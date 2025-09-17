import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc_app_template/models/payload/payload_resource.dart';

@immutable
class SecondStageResource extends Equatable {
  const SecondStageResource({this.block, this.payloads});

  final int? block;
  final List<PayloadResource>? payloads;

  @override
  List<Object?> get props => [block, payloads];
}

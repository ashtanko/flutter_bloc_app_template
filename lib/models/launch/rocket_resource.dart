import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
class RocketResource extends Equatable {
  const RocketResource({
    this.rocketName,
    this.rocketType,
  });

  final String? rocketName;
  final String? rocketType;

  @override
  List<Object?> get props => [
        rocketName,
        rocketType,
      ];
}

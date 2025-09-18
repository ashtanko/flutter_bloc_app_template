import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
class ThrustResource extends Equatable {
  const ThrustResource({
    this.kN,
    this.lbf,
  });

  final double? kN;
  final int? lbf;

  @override
  List<Object?> get props => [kN, lbf];
}

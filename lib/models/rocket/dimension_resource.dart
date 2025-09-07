import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
class DimensionResource extends Equatable {
  const DimensionResource({
    this.meters,
    this.feet,
  });

  final double? meters;
  final double? feet;

  @override
  List<Object?> get props => [meters, feet];
}

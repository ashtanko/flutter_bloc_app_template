import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
class LandingLegsResource extends Equatable {
  const LandingLegsResource({
    this.number,
    this.material,
  });

  final int? number;
  final String? material;

  @override
  List<Object?> get props => [number, material];
}

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
class IspResource extends Equatable {
  const IspResource({
    this.seaLevel,
    this.vacuum,
  });

  final int? seaLevel;
  final int? vacuum;

  @override
  List<Object?> get props => [seaLevel, vacuum];
}

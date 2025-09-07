import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
class MassResource extends Equatable {
  const MassResource({
    this.kg,
    this.lb,
  });

  final int? kg;
  final int? lb;

  @override
  List<Object?> get props => [kg, lb];
}

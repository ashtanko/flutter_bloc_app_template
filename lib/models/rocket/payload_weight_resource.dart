import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
class PayloadWeightResource extends Equatable {
  const PayloadWeightResource({
    this.id,
    this.name,
    this.kg,
    this.lb,
  });

  final String? id;
  final String? name;
  final int? kg;
  final int? lb;

  @override
  List<Object?> get props => [id, name, kg, lb];
}

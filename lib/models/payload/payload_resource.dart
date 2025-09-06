import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
class PayloadResource extends Equatable {
  const PayloadResource({
    this.payloadId,
    this.noradId,
    this.reused,
    this.customers,
    this.nationality,
    this.manufacturer,
    this.payloadType,
    this.payloadMassKg,
    this.payloadMassLbs,
    this.orbit,
  });

  final String? payloadId;
  final List<int>? noradId;
  final bool? reused;
  final List<String>? customers;
  final String? nationality;
  final String? manufacturer;
  final String? payloadType;
  final int? payloadMassKg;
  final int? payloadMassLbs;
  final String? orbit;

  @override
  List<Object?> get props => [
        payloadId,
        noradId,
        reused,
        customers,
        nationality,
        manufacturer,
        payloadType,
        payloadMassKg,
        payloadMassLbs,
        orbit,
      ];
}

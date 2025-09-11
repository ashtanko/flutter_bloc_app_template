import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class OrbitalData extends Equatable {
  OrbitalData({required this.label, required this.value, required this.icon});

  final String label;
  final String value;
  final IconData icon;

  @override
  List<Object?> get props => [label, value, icon];
}

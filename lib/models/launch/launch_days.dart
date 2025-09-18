import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
abstract class LaunchDays extends Equatable {
  const LaunchDays();
}

class Since extends LaunchDays {
  const Since(this.formattedDate);

  final String? formattedDate;

  @override
  List<Object?> get props => [formattedDate];
}

class Unknown extends LaunchDays {
  const Unknown();

  @override
  List<Object?> get props => [];
}

class From extends LaunchDays {
  const From(this.formattedDate);

  final String? formattedDate;

  @override
  List<Object?> get props => [formattedDate];
}

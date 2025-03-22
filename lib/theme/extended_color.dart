import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc_app_template/theme/color_family.dart';

class ExtendedColor extends Equatable {
  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });

  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  @override
  List<Object?> get props => [
        seed,
        value,
        light,
        lightHighContrast,
        lightMediumContrast,
        dark,
        darkHighContrast,
        darkMediumContrast,
      ];
}

import 'dart:ui';

import 'package:equatable/equatable.dart';

class ColorFamily extends Equatable {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;

  @override
  List<Object?> get props => [
        color,
        onColor,
        colorContainer,
        onColorContainer,
      ];
}

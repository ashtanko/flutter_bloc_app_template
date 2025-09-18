import 'package:flutter/material.dart';

class AnimatedGradientBackground extends StatelessWidget {
  const AnimatedGradientBackground({
    super.key,
    required this.pulseController,
  });

  final AnimationController pulseController;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    // Define gradients for light and dark themes
    final darkColors = [
      const Color(0xFF0D0E1C),
      const Color(0xFF1A1B3A),
      const Color(0xFF2D1B3D),
    ];

    final lightColors = [
      const Color(0xFFF0F4FF),
      const Color(0xFFE8ECFF),
      const Color(0xFFDDE3FF),
    ];

    final colors = isDark ? darkColors : lightColors;

    return AnimatedBuilder(
      animation: pulseController,
      builder: (context, child) {
        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.lerp(colors[0], colors[1], pulseController.value)!,
                Color.lerp(colors[1], colors[2], pulseController.value)!,
              ],
            ),
          ),
        );
      },
    );
  }
}

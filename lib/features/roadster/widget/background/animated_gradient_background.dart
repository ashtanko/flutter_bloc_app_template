import 'package:flutter/material.dart';

class AnimatedGradientBackground extends StatelessWidget {
  const AnimatedGradientBackground({
    super.key,
    required this.pulseController,
  });

  final AnimationController pulseController;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: pulseController,
      builder: (context, child) {
        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.lerp(
                  const Color(0xFF0D0E1C),
                  const Color(0xFF1A1B3A),
                  pulseController.value,
                )!,
                Color.lerp(
                  const Color(0xFF1A1B3A),
                  const Color(0xFF2D1B3D),
                  pulseController.value,
                )!,
              ],
            ),
          ),
        );
      },
    );
  }
}

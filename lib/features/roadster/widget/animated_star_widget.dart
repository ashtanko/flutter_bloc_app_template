import 'dart:math' as math;

import 'package:flutter/material.dart';

class AnimatedStarWidget extends StatelessWidget {
  const AnimatedStarWidget(
      {super.key, required this.index, required this.pulseController});

  final AnimationController pulseController;

  final int index;

  @override
  Widget build(BuildContext context) {
    final random = math.Random(index);
    final size = random.nextDouble() * 3 + 1;
    final top = random.nextDouble() * 500;
    final left = random.nextDouble() * 400;

    return Positioned(
      top: top,
      left: left,
      child: AnimatedBuilder(
        animation: pulseController,
        builder: (context, child) {
          return Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
              color: Colors.white.withValues(
                alpha: 0.3 + (pulseController.value * 0.5),
              ),
              shape: BoxShape.circle,
            ),
          );
        },
      ),
    );
  }
}

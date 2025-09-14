import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/animated_counter_widget.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart';

class DistanceCardWidget extends StatelessWidget {
  const DistanceCardWidget({
    super.key,
    required this.title,
    required this.distance,
    required this.color,
    required this.icon,
    required this.delay,
    required this.pulseController,
  });

  final String title;
  final double distance;
  final Color color;
  final IconData icon;
  final int delay;
  final AnimationController pulseController;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: 1),
      duration: Duration(milliseconds: 1000 + delay),
      curve: Curves.easeOutBack,
      builder: (context, animation, child) {
        return Transform.translate(
          offset: Offset(0, 20 * (1 - animation.clamp(0.0, 1.0))),
          child: Opacity(
            opacity: animation.clamp(0.0, 1.0),
            child: Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Theme.of(context).colorScheme.surface,
                      Theme.of(context)
                          .colorScheme
                          .surface
                          .withValues(alpha: 0.9),
                    ],
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: color.withValues(alpha: 0.2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(icon, color: color, size: 28),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style:
                                Theme.of(context).textTheme.bodySmall?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSurface
                                          .withValues(alpha: 0.7),
                                      fontSize: 14,
                                    ),
                          ),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              AnimatedCounterWidget(
                                value: distance / 1000000,
                                duration: Duration(milliseconds: 2000 + delay),
                                decimals: 1,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                S.of(context).millionKm,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      color: color,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    AnimatedBuilder(
                      animation: pulseController,
                      builder: (context, child) {
                        return Container(
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                            color: color.withValues(
                              alpha: 0.5 + (pulseController.value * 0.5),
                            ),
                            shape: BoxShape.circle,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

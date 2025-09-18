import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/features/roadster/model/mission.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart';

class DetailsCardWidget extends StatefulWidget {
  const DetailsCardWidget({
    super.key,
    required this.description1,
    required this.description2,
    required this.missions,
  });

  final String description1;
  final String description2;
  final List<Mission> missions;

  @override
  State<DetailsCardWidget> createState() => _DetailsCardWidgetState();
}

class _DetailsCardWidgetState extends State<DetailsCardWidget>
    with TickerProviderStateMixin {
  late AnimationController _rotationController;

  @override
  void initState() {
    super.initState();

    _rotationController = AnimationController(
      duration: const Duration(seconds: 20),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _rotationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Theme.of(context).colorScheme.surface,
              Theme.of(context).colorScheme.surface.withValues(alpha: 0.8),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                AnimatedBuilder(
                  animation: _rotationController,
                  builder: (context, child) {
                    return Transform.rotate(
                      angle: _rotationController.value * 2 * math.pi,
                      child: Icon(
                        Icons.satellite_alt,
                        color: Theme.of(context).colorScheme.primary,
                        size: 32,
                      ),
                    );
                  },
                ),
                const SizedBox(width: 12),
                Text(
                  S.of(context).missionDetails,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              widget.description1,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                    height: 1.5,
                  ),
            ),
            const SizedBox(height: 12),
            Text(
              widget.description2,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                    height: 1.4,
                  ),
            ),
            const SizedBox(height: 16),
            Wrap(
              spacing: 8,
              children: [
                ...widget.missions.map((mission) => Chip(
                      avatar: const Icon(Icons.tag, size: 18),
                      label: Text(mission.name),
                      backgroundColor: mission.isPrimary
                          ? Theme.of(context).colorScheme.primaryContainer
                          : Theme.of(context).colorScheme.secondaryContainer,
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}

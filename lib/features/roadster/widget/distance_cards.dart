import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/distance_card_widget.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart';
import 'package:flutter_bloc_app_template/models/roadster/roadster_resource.dart';

class DistanceCards extends StatelessWidget {
  const DistanceCards({
    super.key,
    required this.roadster,
    required this.pulseController,
  });

  final RoadsterResource roadster;
  final AnimationController pulseController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DistanceCardWidget(
          title: S.of(context).earthDistance,
          distance: roadster.earthDistanceKm ?? 0,
          color: Colors.blue,
          icon: Icons.public,
          delay: 600,
          pulseController: pulseController,
        ),
        const SizedBox(height: 16),
        DistanceCardWidget(
          title: S.of(context).marsDistance,
          distance: roadster.marsDistanceKm ?? 0,
          color: Colors.orange,
          icon: Icons.circle,
          delay: 800,
          pulseController: pulseController,
        ),
      ],
    );
  }
}

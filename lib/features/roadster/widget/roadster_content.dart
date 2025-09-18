import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/distance_cards.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/launch_details_section.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/links_section_widget.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/mission_details_card.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/orbital_parameters_section.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/speed_distance_cards.dart';
import 'package:flutter_bloc_app_template/models/roadster/roadster_resource.dart';

class RoadsterContent extends StatelessWidget {
  const RoadsterContent({
    super.key,
    required this.roadster,
    required this.slideController,
    required this.pulseController,
  });

  final RoadsterResource roadster;
  final AnimationController slideController;
  final AnimationController pulseController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView( // <--- added
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MissionDetailsCard(
              roadster: roadster,
              slideController: slideController,
            ),
            const SizedBox(height: 24),
            SpeedDistanceCards(roadster: roadster),
            const SizedBox(height: 16),
            DistanceCards(
              roadster: roadster,
              pulseController: pulseController,
            ),
            const SizedBox(height: 24),
            OrbitalParametersSection(roadster: roadster),
            const SizedBox(height: 24),
            LaunchDetailsSection(roadster: roadster),
            const SizedBox(height: 24),
            const LinksSectionWidget(),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}

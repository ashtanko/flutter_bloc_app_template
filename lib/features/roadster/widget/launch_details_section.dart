import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/launch_section_widget.dart';
import 'package:flutter_bloc_app_template/models/roadster/roadster_resource.dart';

class LaunchDetailsSection extends StatelessWidget {
  const LaunchDetailsSection({
    super.key,
    required this.roadster,
  });

  final RoadsterResource roadster;

  @override
  Widget build(BuildContext context) {
    return LaunchSectionWidget(
      massKg: '${roadster.launchMassKg}',
      vehicle: 'Falcon Heavy',
    );
  }
}

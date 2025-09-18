import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/features/roadster/utils/roadster_utils.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/animated_stat_card_widget.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart';
import 'package:flutter_bloc_app_template/models/roadster/roadster_resource.dart';

class SpeedDistanceCards extends StatelessWidget {
  const SpeedDistanceCards({
    super.key,
    required this.roadster,
  });

  final RoadsterResource roadster;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AnimatedStatCardWidget(
            icon: Icons.speed,
            title: S.of(context).currentSpeed,
            value: roadster.speedKph?.formatSpeed() ?? 'N/A',
            unit: S.of(context).unitKph,
            color: Colors.blue,
            delay: 200,
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: AnimatedStatCardWidget(
            icon: Icons.timer_outlined,
            title: S.of(context).orbitalPeriod,
            value: roadster.periodDays?.formatPeriod() ?? 'N/A',
            unit: S.of(context).unitDays,
            color: Colors.purple,
            delay: 400,
          ),
        ),
      ],
    );
  }
}

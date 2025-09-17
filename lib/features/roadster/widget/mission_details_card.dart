import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/features/roadster/model/mission.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/details_card_widget.dart';
import 'package:flutter_bloc_app_template/models/roadster/roadster_resource.dart';

class MissionDetailsCard extends StatelessWidget {
  const MissionDetailsCard({
    super.key,
    required this.roadster,
    required this.slideController,
  });

  final RoadsterResource roadster;
  final AnimationController slideController;

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(0, 0.3),
        end: Offset.zero,
      ).animate(CurvedAnimation(
        parent: slideController,
        curve: Curves.easeOutCubic,
      )),
      child: DetailsCardWidget(
        description1: roadster.details ?? '',
        description2: '',
        missions: [
          Mission(
            name: '${roadster.noradId}',
            isPrimary: true,
          ),
          Mission(
            name: '${roadster.orbitType}',
            isPrimary: false,
          ),
        ],
      ),
    );
  }
}

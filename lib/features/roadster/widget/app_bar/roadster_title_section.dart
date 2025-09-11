import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/features/roadster/utils/roadster_utils.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart';
import 'package:flutter_bloc_app_template/models/roadster/roadster_resource.dart';

class RoadsterTitleSection extends StatelessWidget {
  const RoadsterTitleSection({
    super.key,
    required this.roadster,
    required this.fadeController,
  });

  final RoadsterResource roadster;
  final AnimationController fadeController;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 40,
      left: 20,
      right: 20,
      child: FadeTransition(
        opacity: fadeController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...(roadster.name ?? 'Elon Musk\'s Tesla Roadster')
                .toSplitTextWidgets(),
            const SizedBox(height: 8),
            Row(
              children: [
                Icon(
                  Icons.rocket_launch,
                  color: Colors.orange[400],
                  size: 20,
                ),
                const SizedBox(width: 8),
                Text(
                  S.of(context).launched(
                        roadster.launchDateUtc?.toFormattedDate() ?? '',
                      ),
                  style: TextStyle(
                    color: Colors.orange[400],
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/features/launch/info_item.dart';
import 'package:flutter_bloc_app_template/features/launch/widget/feature_chip_widget.dart';
import 'package:flutter_bloc_app_template/features/launch/widget/info_grid_widget.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart';
import 'package:flutter_bloc_app_template/models/launch/rocket_resource.dart';

class RocketCardWidget extends StatelessWidget {
  const RocketCardWidget({super.key, required this.rocket});

  final RocketResource rocket;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final core = rocket.firstStage?.cores?.firstOrNull;
    final loc = S.of(context);

    return Card(
      clipBehavior: Clip.antiAlias,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              theme.colorScheme.tertiaryContainer.withValues(alpha: 0.5),
              theme.colorScheme.tertiaryContainer.withValues(alpha: 0.1),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            tilePadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            leading: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: theme.colorScheme.tertiary.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(Icons.rocket, color: theme.colorScheme.tertiary),
            ),
            title: Text(
              loc.rocketDetails,
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              '${rocket.rocketName} • ${rocket.rocketType}',
              style: theme.textTheme.bodySmall,
            ),
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InfoGridWidget(items: [
                      if (rocket.rocketName != null)
                        InfoItem(loc.rocketName, rocket.rocketName!),
                      if (rocket.rocketType != null)
                        InfoItem(loc.rocketType, rocket.rocketType!),
                      if (core?.block != null)
                        InfoItem(loc.rocketBlock,
                            '${loc.rocketBlock} ${core?.block!}'),
                    ]),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.surface.withValues(alpha: 0.5),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            loc.firstStage,
                            style: theme.textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 12),
                          InfoGridWidget(items: [
                            if (core?.coreSerial != null)
                              InfoItem(loc.coreSerial, core!.coreSerial!),
                            InfoItem(loc.flight, '#${core?.flight}'),
                            InfoItem(loc.landing,
                                core?.landingType ?? loc.notAvailable),
                            InfoItem(
                              loc.landingSuccess,
                              (core?.landSuccess ?? false) ? '✅' : '❌',
                            ),
                          ]),
                          const SizedBox(height: 12),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                if (core?.gridfins != null)
                                  FeatureChipWidget(
                                    label: loc.gridFins,
                                    active: core!.gridfins!,
                                  ),
                                const SizedBox(width: 8),
                                if (core?.legs != null)
                                  FeatureChipWidget(
                                    label: loc.landingLegs,
                                    active: core!.legs!,
                                  ),
                                const SizedBox(width: 8),
                                if (core?.reused != null)
                                  FeatureChipWidget(
                                    label: loc.reused,
                                    active: core!.reused!,
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

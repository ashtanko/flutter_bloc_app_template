import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/features/launch/info_item.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart';
import 'package:flutter_bloc_app_template/models/payload/payload_resource.dart';

import 'info_grid_widget.dart';

class PayloadCardWidget extends StatelessWidget {
  const PayloadCardWidget({super.key, required this.payload});

  final PayloadResource payload;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final loc = S.of(context);

    return Card(
      clipBehavior: Clip.antiAlias,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.indigo.withValues(alpha: 0.1),
              Colors.indigo.withValues(alpha: 0.05),
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
                color: Colors.indigo.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(Icons.satellite_alt, color: Colors.indigo),
            ),
            title: Text(
              loc.payloadTitle,
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              '${payload.payloadId} • ${payload.payloadType}',
              style: theme.textTheme.bodySmall,
            ),
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InfoGridWidget(items: [
                      if (payload.payloadId != null)
                        InfoItem(loc.id, payload.payloadId!),
                      if (payload.payloadType != null)
                        InfoItem(loc.type, payload.payloadType!),
                      if (payload.payloadMassKg != null)
                        InfoItem(loc.mass, '${payload.payloadMassKg} kg'),
                      if (payload.orbit != null)
                        InfoItem(loc.orbit, payload.orbit!),
                      if (payload.manufacturer != null)
                        InfoItem(loc.manufacturer, payload.manufacturer!),
                      if (payload.nationality != null)
                        InfoItem(loc.nationality, payload.nationality!),
                    ]),
                    const SizedBox(height: 16),
                    Text(
                      loc.customers,
                      style: theme.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    if (payload.customers != null)
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: payload.customers!
                            .map(
                              (customer) => Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 8),
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.indigo.withValues(alpha: 0.2),
                                      Colors.indigo.withValues(alpha: 0.1),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: Colors.indigo.withValues(alpha: 0.3),
                                  ),
                                ),
                                child: Text(
                                  customer,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.indigo,
                                  ),
                                ),
                              ),
                            )
                            .toList(),
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

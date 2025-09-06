import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart';
import 'package:flutter_bloc_app_template/models/launch/launch_site_resource.dart';

class LaunchSiteCardWidget extends StatelessWidget {
  const LaunchSiteCardWidget({super.key, required this.site});

  final LaunchSiteResource site;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final loc = S.of(context);

    return Card(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.teal.withValues(alpha: 0.1),
              Colors.teal.withValues(alpha: 0.05),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.teal.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(Icons.location_on, color: Colors.teal),
                  ),
                  const SizedBox(width: 12),
                  Text(
                    loc.launchSite,
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: theme.colorScheme.surface.withValues(alpha: 0.7),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.place, size: 16, color: Colors.teal),
                        const SizedBox(width: 8),
                        if (site.siteName != null)
                          Text(
                            site.siteName!,
                            style: theme.textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.teal,
                            ),
                          ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    if (site.siteNameLong != null)
                      Text(
                        site.siteNameLong!,
                        style: theme.textTheme.bodyMedium,
                      ),
                    const SizedBox(height: 4),
                    Text(
                      '${loc.siteIdLabel} ${site.siteId}',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
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

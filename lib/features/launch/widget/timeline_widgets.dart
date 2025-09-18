import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart' show S;

class TimelineCardWidget extends StatelessWidget {
  const TimelineCardWidget({
    super.key,
    required this.launchDate,
    required this.staticFireDate,
    required this.launchSuccess,
  });

  final String launchDate;
  final String staticFireDate;
  final bool launchSuccess;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final loc = S.of(context);

    return Card(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              theme.colorScheme.secondaryContainer.withValues(alpha: 0.5),
              theme.colorScheme.secondaryContainer.withValues(alpha: 0.1),
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
                      color: theme.colorScheme.secondary.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      Icons.timeline,
                      color: theme.colorScheme.secondary,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Text(
                    loc.missionTimeline,
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              TimelineItemWidget(
                title: loc.staticFireTest,
                subtitle: staticFireDate,
                icon: Icons.local_fire_department,
                completed: true,
              ),
              const TimelineConnector(),
              TimelineItemWidget(
                title: loc.launch,
                subtitle: launchDate,
                icon: Icons.rocket_launch,
                completed: true,
              ),
              if (launchSuccess) ...[
                const TimelineConnector(),
                TimelineItemWidget(
                  title: loc.missionSuccess,
                  subtitle: loc.objectivesCompleted,
                  icon: Icons.flag,
                  completed: true,
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

class TimelineItemWidget extends StatelessWidget {
  const TimelineItemWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.completed,
  });

  final String title;
  final String subtitle;
  final IconData icon;
  final bool completed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: completed
                ? theme.colorScheme.primary
                : theme.colorScheme.surfaceContainerHighest,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Icon(
            icon,
            color: completed
                ? theme.colorScheme.onPrimary
                : theme.colorScheme.onSurfaceVariant,
            size: 20,
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                subtitle,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class TimelineConnector extends StatelessWidget {
  const TimelineConnector({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      margin: const EdgeInsets.only(left: 19),
      width: 2,
      height: 30,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            theme.colorScheme.primary,
            theme.colorScheme.primary.withValues(alpha: 0.3),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
    );
  }
}

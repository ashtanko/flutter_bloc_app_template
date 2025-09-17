import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart';
import 'package:flutter_bloc_app_template/models/payload/payload_resource.dart';

class QuickStatsSectionWidget extends StatelessWidget {
  const QuickStatsSectionWidget({
    super.key,
    required this.payload,
    this.rocketName,
  });

  final String? rocketName;
  final PayloadResource payload;

  @override
  Widget build(BuildContext context) {
    final loc = S.of(context);

    return Row(
      children: [
        Expanded(
          child: StatCardWidget(
            icon: Icons.rocket_launch,
            label: loc.rocketTitle,
            value: rocketName ?? '-',
            color: Colors.orange,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: StatCardWidget(
            icon: Icons.satellite_alt,
            label: loc.payload,
            value: '${payload.payloadMassKg} kg', // todo fix localization
            color: Colors.blue,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: StatCardWidget(
            icon: Icons.public,
            label: loc.orbit,
            value: payload.orbit ?? '-',
            color: Colors.purple,
          ),
        ),
      ],
    );
  }
}

class StatCardWidget extends StatelessWidget {
  const StatCardWidget({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
    required this.color,
  });

  final IconData icon;
  final String label;
  final String value;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color.withValues(alpha: 0.1),
            color.withValues(alpha: 0.05),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: color.withValues(alpha: 0.3),
          width: 1,
        ),
      ),
      child: Column(
        children: [
          Icon(icon, color: color, size: 24),
          const SizedBox(height: 8),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: theme.textTheme.bodySmall?.color,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: color,
            ),
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}

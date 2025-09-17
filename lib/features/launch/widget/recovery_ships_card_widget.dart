import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart';

class RecoveryShipsCardWidget extends StatelessWidget {
  const RecoveryShipsCardWidget({super.key, required this.ships});

  final List<String> ships;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final loc = S.of(context);
    if (ships.isEmpty) return const SizedBox.shrink();

    return Card(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.cyan.withValues(alpha: 0.1),
              Colors.cyan.withValues(alpha: 0.05),
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
                      color: Colors.cyan.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child:
                        const Icon(Icons.directions_boat, color: Colors.cyan),
                  ),
                  const SizedBox(width: 12),
                  Text(
                    loc.recoveryShips,
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: ships
                    .map(
                      (ship) => Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 10),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.surface,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: Colors.cyan.withValues(alpha: 0.3),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(Icons.anchor,
                                size: 16, color: Colors.cyan),
                            const SizedBox(width: 6),
                            Text(
                              ship,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class PreferenceSwitch extends StatelessWidget {
  const PreferenceSwitch({
    super.key,
    required this.title,
    this.description,
    this.icon,
    this.enabled = true,
    this.isChecked = true,
    this.onClick = _defaultOnClick,
    required this.switchKey,
    this.onSwitchClick = _defaultOnSwitchClick,
  });

  final String title;
  final String? description;
  final Widget? icon;
  final bool enabled;
  final bool isChecked;
  final VoidCallback onClick;
  final Key switchKey;
  final void Function(bool) onSwitchClick;

  static void _defaultOnClick() {}

  static Future<void> _defaultOnSwitchClick(bool isChecked) async {}

  @override
  Widget build(BuildContext context) {
    final onSurfaceVariant = Theme.of(context).colorScheme.onSurfaceVariant;

    return InkWell(
      onTap: enabled ? onClick : null,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (icon != null)
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: icon,
              ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: enabled ? null : onSurfaceVariant,
                        ),
                  ),
                  if (description != null && description!.isNotEmpty)
                    Text(
                      description!,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: enabled ? null : onSurfaceVariant,
                          ),
                    ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 6.0),
              child: Switch(
                key: switchKey,
                value: isChecked,
                onChanged: enabled ? (_) => onSwitchClick(isChecked) : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

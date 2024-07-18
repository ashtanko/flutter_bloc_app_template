import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/index.dart';

class NameAvatar extends StatelessWidget {
  const NameAvatar({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) => Container(
        height: IconSizes.avatar,
        width: IconSizes.avatar,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary.withOpacity(0.65),
          shape: BoxShape.circle,
          border: Border.all(
            color: Theme.of(context).colorScheme.secondary,
            width: 3,
          ),
        ),
        child: Center(
          child: Text(
            name,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontSize: FontSizes.label,
                  color: Theme.of(context).textTheme.titleMedium?.color,
                ),
            overflow: TextOverflow.clip,
            maxLines: 1,
          ),
        ),
      );
}

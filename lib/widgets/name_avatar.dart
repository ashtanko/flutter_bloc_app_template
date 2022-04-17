import 'package:flutter/material.dart';

class NameAvatar extends StatelessWidget {
  const NameAvatar({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
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
          style: Theme.of(context).textTheme.headline6?.copyWith(
                fontSize: 18,
                color: Theme.of(context).textTheme.subtitle1?.color,
              ),
          overflow: TextOverflow.clip,
          maxLines: 1,
        ),
      ),
    );
  }
}

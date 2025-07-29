import 'package:flutter/material.dart';

class LoadingContent extends StatelessWidget {
  const LoadingContent({
    super.key,
    this.circularProgressSize = 32.0,
    this.padding = const EdgeInsets.symmetric(vertical: 8.0),
    this.margin = EdgeInsets.zero,
  });

  final double circularProgressSize;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      margin: margin,
      padding: padding,
      child: Center(
        child: SizedBox(
          width: circularProgressSize,
          height: circularProgressSize,
          child: CircularProgressIndicator(
            color: theme.colorScheme.secondary,
            strokeWidth: 4.0,
            backgroundColor: theme.colorScheme.surfaceContainerHighest,
          ),
        ),
      ),
    );
  }
}

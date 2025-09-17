import 'package:flutter/material.dart';

class EmptyContent extends StatelessWidget {
  const EmptyContent({
    super.key,
    required this.content,
    this.padding = const EdgeInsets.all(32.0),
    this.margin = EdgeInsets.zero,
  });

  final String content;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Center(
        child: Padding(
          padding: padding,
          child: Container(
            child: Text(
              content,
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

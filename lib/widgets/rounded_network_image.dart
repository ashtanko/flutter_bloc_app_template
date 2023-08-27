import 'package:flutter/material.dart';

class RoundedNetworkImage extends StatelessWidget {
  RoundedNetworkImage({
    required this.imageUrl,
    this.borderRadius = 10.0,
    this.fit = BoxFit.cover,
  });

  final String imageUrl;
  final double borderRadius;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}

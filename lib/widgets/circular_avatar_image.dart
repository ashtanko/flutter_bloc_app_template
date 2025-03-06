import 'package:flutter/material.dart';

class CircularAvatarImage extends StatelessWidget {
  const CircularAvatarImage({
    super.key,
    required this.imageUrl,
    this.placeholderIcon = Icons.rocket,
    this.errorIcon = Icons.rocket,
  });

  final String imageUrl;
  final IconData placeholderIcon;
  final IconData errorIcon;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(backgroundImage: NetworkImage(imageUrl));
  }
}

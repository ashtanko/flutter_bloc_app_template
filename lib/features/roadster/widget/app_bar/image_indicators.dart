import 'package:flutter/material.dart';

class ImageIndicators extends StatelessWidget {
  const ImageIndicators({
    super.key,
    required this.imageCount,
    required this.currentIndex,
  });

  final int imageCount;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      left: 0,
      right: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          imageCount,
          (index) => AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            margin: const EdgeInsets.symmetric(horizontal: 4),
            height: 8,
            width: currentIndex == index ? 24 : 8,
            decoration: BoxDecoration(
              color: currentIndex == index
                  ? Theme.of(context).colorScheme.primary
                  : Colors.white30,
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),
      ),
    );
  }
}

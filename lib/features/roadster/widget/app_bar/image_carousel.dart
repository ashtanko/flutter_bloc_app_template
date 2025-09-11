import 'package:flutter/material.dart';

class ImageCarousel extends StatelessWidget {
  const ImageCarousel({
    super.key,
    required this.images,
    required this.pageController,
    required this.scrollOffset,
    required this.onPageChanged,
  });

  final List<String> images;
  final PageController pageController;
  final double scrollOffset;
  final ValueChanged<int> onPageChanged;

  double? _calculateProgress(ImageChunkEvent? loadingProgress) {
    if (loadingProgress == null || loadingProgress.expectedTotalBytes == null) {
      return null;
    }
    return loadingProgress.cumulativeBytesLoaded /
        loadingProgress.expectedTotalBytes!;
  }

  Widget _buildAnimatedImageCard(double value, String imageUrl) {
    final transformedValue = Curves.easeInOut.transform(value);
    final cardHeight = transformedValue * 300;
    final cardWidth = transformedValue * 400;

    return SizedBox(
      height: cardHeight,
      width: cardWidth,
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return Center(
                child: CircularProgressIndicator(
                  value: _calculateProgress(loadingProgress),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      key: const Key('parallax_transform'),
      offset: Offset(0, scrollOffset * 0.5),
      child: SizedBox(
        height: 300,
        child: PageView.builder(
          controller: pageController,
          onPageChanged: onPageChanged,
          itemCount: images.length,
          itemBuilder: (context, index) {
            return AnimatedBuilder(
              animation: pageController,
              builder: (context, child) {
                var value = 1.0;
                if (pageController.position.haveDimensions) {
                  value = pageController.page! - index;
                  value = (1 - (value.abs() * 0.3)).clamp(0.0, 1.0);
                }
                return Center(
                  child: _buildAnimatedImageCard(value, images[index]),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
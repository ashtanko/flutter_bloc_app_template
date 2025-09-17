import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/app_bar/gradient_overlay.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/app_bar/image_carousel.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/app_bar/roadster_title_section.dart';
import 'package:flutter_bloc_app_template/models/roadster/roadster_resource.dart';

import 'image_indicators.dart';

class RoadsterAppBar extends StatefulWidget {
  const RoadsterAppBar({
    super.key,
    required this.roadster,
    required this.images,
    required this.scrollOffset,
    required this.fadeController,
  });

  final RoadsterResource roadster;
  final List<String> images;
  final double scrollOffset;
  final AnimationController fadeController;

  @override
  State<RoadsterAppBar> createState() => _RoadsterAppBarState();
}

class _RoadsterAppBarState extends State<RoadsterAppBar> {
  late PageController _pageController;
  int _currentImageIndex = 0;
  Timer? _autoScrollTimer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.85);
    _startAutoScroll();
  }

  void _startAutoScroll() {
    if (widget.images.length <= 1) return;
    _autoScrollTimer = Timer.periodic(const Duration(seconds: 4), (timer) {
      if (!mounted || !_pageController.hasClients) return;
      if (_currentImageIndex < widget.images.length - 1) {
        _currentImageIndex++;
      } else {
        _currentImageIndex = 0;
      }
      _pageController.animateToPage(
        _currentImageIndex,
        duration: const Duration(milliseconds: 800),
        curve: Curves.easeInOutCubic,
      );
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _autoScrollTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 380,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        title: AnimatedOpacity(
          opacity: widget.scrollOffset > 200 ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 300),
          child: const Text(
            'Tesla Roadster',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        background: Stack(
          fit: StackFit.expand,
          children: [
            ImageCarousel(
              images: widget.images,
              pageController: _pageController,
              scrollOffset: widget.scrollOffset,
              onPageChanged: (index) {
                setState(() {
                  _currentImageIndex = index;
                });
              },
            ),
            const GradientOverlay(),
            RoadsterTitleSection(
              roadster: widget.roadster,
              fadeController: widget.fadeController,
            ),
            ImageIndicators(
              imageCount: widget.images.length,
              currentIndex: _currentImageIndex,
            ),
          ],
        ),
      ),
    );
  }
}

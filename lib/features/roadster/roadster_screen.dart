import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_app_template/features/roadster/bloc/roadster_bloc.dart';
import 'package:flutter_bloc_app_template/features/roadster/model/mission.dart';
import 'package:flutter_bloc_app_template/features/roadster/utils/roadster_utils.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/animated_star_widget.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/animated_stat_card_widget.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/details_card_widget.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/distance_card_widget.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/launch_section_widget.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/links_section_widget.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/orbital_section_widget.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart';
import 'package:flutter_bloc_app_template/models/roadster/roadster_resource.dart';
import 'package:flutter_bloc_app_template/repository/roadster_repository.dart';
import 'package:flutter_bloc_app_template/widgets/empty_widget.dart';
import 'package:flutter_bloc_app_template/widgets/error_content.dart';
import 'package:flutter_bloc_app_template/widgets/loading_content.dart';

class RoadsterScreen extends StatelessWidget {
  const RoadsterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RoadsterBloc(
        RepositoryProvider.of<RoadsterRepository>(context),
      )..add(
          const RoadsterLoadEvent(),
        ),
      child: const RoadsterScreenBlocContent(),
    );
  }
}

class RoadsterScreenBlocContent extends StatelessWidget {
  const RoadsterScreenBlocContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RoadsterBloc, RoadsterState>(builder: (context, state) {
      switch (state) {
        case RoadsterLoadingState _:
          return Scaffold(
            appBar: AppBar(),
            body: const LoadingContent(),
          );
        case RoadsterSuccessState _:
          return RoadsterDetailScreen(
            roadster: state.roadster,
            images: state.roadster.flickrImages ?? [],
          );
        case RoadsterErrorState _:
          return Scaffold(
            appBar: AppBar(),
            body: ErrorContent(
              onTryAgainClick: () {
                context.read<RoadsterBloc>().add(
                      const RoadsterLoadEvent(),
                    );
              },
            ),
          );
      }
      return EmptyWidget();
    });
  }
}

class RoadsterDetailScreen extends StatefulWidget {
  const RoadsterDetailScreen({
    super.key,
    required this.roadster,
    required this.images,
  });

  final RoadsterResource roadster;
  final List<String> images;

  @override
  State<RoadsterDetailScreen> createState() => _RoadsterDetailScreenState();
}

class _RoadsterDetailScreenState extends State<RoadsterDetailScreen>
    with TickerProviderStateMixin {
  final ScrollController _scrollController = ScrollController();
  late AnimationController _fadeController;
  late AnimationController _slideController;
  late AnimationController _pulseController;
  late AnimationController _rotationController;
  late PageController _pageController;

  double _scrollOffset = 0.0;
  int _currentImageIndex = 0;
  Timer? _autoScrollTimer;

  @override
  void initState() {
    super.initState();
    _fadeController = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    )..forward();

    _slideController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    )..forward();

    _pulseController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    _rotationController = AnimationController(
      duration: const Duration(seconds: 20),
      vsync: this,
    )..repeat();

    _pageController = PageController(viewportFraction: 0.85);

    _scrollController.addListener(() {
      setState(() {
        _scrollOffset = _scrollController.offset;
      });
    });

    _startAutoScroll();
  }

  void _startAutoScroll() {
    _autoScrollTimer = Timer.periodic(const Duration(seconds: 4), (timer) {
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
    _fadeController.dispose();
    _slideController.dispose();
    _pulseController.dispose();
    _rotationController.dispose();
    _scrollController.dispose();
    _pageController.dispose();
    _autoScrollTimer?.cancel();
    super.dispose();
  }

  double? _calculateProgress(ImageChunkEvent? loadingProgress) {
    if (loadingProgress == null || loadingProgress.expectedTotalBytes == null) {
      return null; // indeterminate progress
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
    return Scaffold(
      body: Stack(
        children: [
          // Animated gradient background
          AnimatedBuilder(
            animation: _pulseController,
            builder: (context, child) {
              return Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.lerp(
                        const Color(0xFF0D0E1C),
                        const Color(0xFF1A1B3A),
                        _pulseController.value,
                      )!,
                      Color.lerp(
                        const Color(0xFF1A1B3A),
                        const Color(0xFF2D1B3D),
                        _pulseController.value,
                      )!,
                    ],
                  ),
                ),
              );
            },
          ),

          // Stars animation
          ...List.generate(
              50,
              (index) => AnimatedStarWidget(
                    index: index,
                    pulseController: _pulseController,
                  )),

          CustomScrollView(
            controller: _scrollController,
            slivers: [
              // Collapsing app bar with parallax effect
              SliverAppBar(
                expandedHeight: 380,
                floating: false,
                pinned: true,
                backgroundColor: Colors.transparent,
                flexibleSpace: FlexibleSpaceBar(
                  title: AnimatedOpacity(
                    opacity: _scrollOffset > 200 ? 1.0 : 0.0,
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
                      // Image carousel
                      Transform.translate(
                        offset: Offset(0, _scrollOffset * 0.5),
                        child: SizedBox(
                          height: 300,
                          child: PageView.builder(
                            controller: _pageController,
                            onPageChanged: (index) {
                              setState(() {
                                _currentImageIndex = index;
                              });
                            },
                            itemCount: widget.images.length,
                            itemBuilder: (context, index) {
                              return AnimatedBuilder(
                                animation: _pageController,
                                builder: (context, child) {
                                  var value = 1.0;
                                  if (_pageController.position.haveDimensions) {
                                    value = _pageController.page! - index;
                                    value = (1 - (value.abs() * 0.3))
                                        .clamp(0.0, 1.0);
                                  }
                                  return Center(
                                    child: _buildAnimatedImageCard(
                                        value, widget.images[index]),
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ),

                      // Gradient overlay
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.transparent,
                                Colors.black.withValues(alpha: 0.7),
                              ],
                            ),
                          ),
                        ),
                      ),

                      // Title and subtitle
                      Positioned(
                        bottom: 40,
                        left: 20,
                        right: 20,
                        child: FadeTransition(
                          opacity: _fadeController,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ...(widget.roadster.name ??
                                      'Elon Musk\'s Tesla Roadster')
                                  .toSplitTextWidgets(),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  Icon(
                                    Icons.rocket_launch,
                                    color: Colors.orange[400],
                                    size: 20,
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                    //'Launched: Feb 6, 2018',
                                    S.of(context).launched(widget
                                            .roadster.launchDateUtc
                                            ?.toFormattedDate() ??
                                        ''),
                                    style: TextStyle(
                                      color: Colors.orange[400],
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Image indicators
                      Positioned(
                        bottom: 10,
                        left: 0,
                        right: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            widget.images.length,
                            (index) => AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              margin: const EdgeInsets.symmetric(horizontal: 4),
                              height: 8,
                              width: _currentImageIndex == index ? 24 : 8,
                              decoration: BoxDecoration(
                                color: _currentImageIndex == index
                                    ? Theme.of(context).colorScheme.primary
                                    : Colors.white30,
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Content
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Mission details card
                      SlideTransition(
                        position: Tween<Offset>(
                          begin: const Offset(0, 0.3),
                          end: Offset.zero,
                        ).animate(CurvedAnimation(
                          parent: _slideController,
                          curve: Curves.easeOutCubic,
                        )),
                        child: DetailsCardWidget(
                          description1: widget.roadster.details ?? '',
                          description2: '',
                          missions: [
                            Mission(
                              name: '${widget.roadster.noradId}',
                              isPrimary: true,
                            ),
                            Mission(
                              name: '${widget.roadster.orbitType}',
                              isPrimary: false,
                            ),
                          ],
                        ), // todo
                      ),

                      const SizedBox(height: 24),

                      // Speed and distance cards
                      Row(
                        children: [
                          Expanded(
                            child: AnimatedStatCardWidget(
                              icon: Icons.speed,
                              title: S.of(context).currentSpeed,
                              value: widget.roadster.speedKph?.formatSpeed() ??
                                  'N/A',
                              unit: S.of(context).unitKph,
                              color: Colors.blue,
                              delay: 200,
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: AnimatedStatCardWidget(
                              icon: Icons.timer_outlined,
                              title: S.of(context).orbitalPeriod,
                              value:
                                  widget.roadster.periodDays?.formatPeriod() ??
                                      'N/A',
                              unit: S.of(context).unitDays,
                              color: Colors.purple,
                              delay: 400,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 16),

                      // Distance cards
                      DistanceCardWidget(
                        title: S.of(context).earthDistance,
                        distance: widget.roadster.earthDistanceKm ?? 0,
                        color: Colors.blue,
                        icon: Icons.public,
                        delay: 600,
                        pulseController: _pulseController,
                      ),
                      const SizedBox(height: 16),
                      DistanceCardWidget(
                        title: S.of(context).marsDistance,
                        distance: widget.roadster.marsDistanceKm ?? 0,
                        color: Colors.orange,
                        icon: Icons.circle,
                        delay: 800,
                        pulseController: _pulseController,
                      ),

                      const SizedBox(height: 24),

                      // Orbital parameters
                      const OrbitalSectionWidget(orbitalData: []),

                      const SizedBox(height: 24),

                      // Launch details
                      LaunchSectionWidget(
                        massKg: '${widget.roadster.launchMassKg}',
                        vehicle: 'Falcon Heavy',
                      ),

                      const SizedBox(height: 24),

                      // Links section
                      const LinksSectionWidget(),

                      const SizedBox(height: 100),
                    ],
                  ),
                ),
              ),
            ],
          ),

          // Floating action button
          Positioned(
            bottom: 20,
            right: 20,
            child: ScaleTransition(
              scale: CurvedAnimation(
                parent: _fadeController,
                curve: Curves.elasticOut,
              ),
              child: FloatingActionButton.extended(
                onPressed: () {
                  _scrollController.animateTo(
                    0,
                    duration: const Duration(milliseconds: 800),
                    curve: Curves.easeInOutCubic,
                  );
                },
                icon: const Icon(Icons.rocket_launch),
                label: Text(S.of(context).trackLive),
                backgroundColor: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

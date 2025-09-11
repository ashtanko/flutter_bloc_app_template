import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_app_template/features/roadster/bloc/roadster_bloc.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/app_bar/roadster_app_bar.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/background/animated_gradient_background.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/background/animated_stars_field.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/buttons/track_live_button.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/roadster_content.dart';
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

  double _scrollOffset = 0.0;

  @override
  void initState() {
    super.initState();
    _initializeAnimations();
    _setupScrollListener();
  }

  void _initializeAnimations() {
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
  }

  void _setupScrollListener() {
    _scrollController.addListener(() {
      setState(() {
        _scrollOffset = _scrollController.offset;
      });
    });
  }

  @override
  void dispose() {
    _fadeController.dispose();
    _slideController.dispose();
    _pulseController.dispose();
    _rotationController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToTop() {
    _scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 800),
      curve: Curves.easeInOutCubic,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Animated background and stars
          AnimatedGradientBackground(pulseController: _pulseController),
          AnimatedStarsField(pulseController: _pulseController),

          // Main content
          CustomScrollView(
            controller: _scrollController,
            slivers: [
              RoadsterAppBar(
                roadster: widget.roadster,
                images: widget.images,
                scrollOffset: _scrollOffset,
                fadeController: _fadeController,
              ),
              SliverToBoxAdapter(
                child: RoadsterContent(
                  roadster: widget.roadster,
                  slideController: _slideController,
                  pulseController: _pulseController,
                ),
              ),
            ],
          ),

          // Floating action button
          TrackLiveButton(
            fadeController: _fadeController,
            onPressed: _scrollToTop,
          ),
        ],
      ),
    );
  }
}

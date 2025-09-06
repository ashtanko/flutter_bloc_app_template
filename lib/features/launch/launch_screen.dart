import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_app_template/features/launch/bloc/launch_bloc.dart';
import 'package:flutter_bloc_app_template/features/launch/widget/launch_site_card_widget.dart';
import 'package:flutter_bloc_app_template/features/launch/widget/links_card_widget.dart';
import 'package:flutter_bloc_app_template/features/launch/widget/mission_overview_card_widget.dart';
import 'package:flutter_bloc_app_template/features/launch/widget/payload_card_widget.dart';
import 'package:flutter_bloc_app_template/features/launch/widget/recovery_ships_card_widget.dart';
import 'package:flutter_bloc_app_template/features/launch/widget/rocket_card_widget.dart';
import 'package:flutter_bloc_app_template/features/launch/widget/stat_card_widget.dart';
import 'package:flutter_bloc_app_template/features/launch/widget/status_section_widget.dart';
import 'package:flutter_bloc_app_template/features/launch/widget/timeline_widgets.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart';
import 'package:flutter_bloc_app_template/index.dart';

class LaunchScreen extends StatelessWidget {
  const LaunchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final launch = ModalRoute.of(context)?.settings.arguments as LaunchResource;

    return BlocProvider(
      create: (context) => LaunchBloc(
        RepositoryProvider.of<LaunchesRepository>(context),
      )..add(
          LaunchLoadEvent(
            flightNumber: launch.flightNumber,
          ),
        ),
      child: LaunchScreenBlocContent(flightNumber: launch.flightNumber),
    );
  }
}

class LaunchScreenBlocContent extends StatelessWidget {
  const LaunchScreenBlocContent({
    super.key,
    required this.flightNumber,
  });

  final int flightNumber;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LaunchBloc, LaunchState>(builder: (context, state) {
      switch (state) {
        case LaunchLoadingState _:
          return Scaffold(
            appBar: AppBar(),
            body: const LoadingContent(),
          );
        case LaunchSuccessState _:
          return LaunchScreenContent(
            resource: state.launch,
          );
        case LaunchErrorState _:
          return Scaffold(
            appBar: AppBar(),
            body: ErrorContent(
              onTryAgainClick: () {
                context.read<LaunchBloc>().add(
                      LaunchLoadEvent(flightNumber: flightNumber),
                    );
              },
            ),
          );
      }
      return EmptyWidget();
    });
  }
}

class LaunchScreenContent extends StatefulWidget {
  const LaunchScreenContent({super.key, required this.resource});

  final LaunchFullResource resource;

  @override
  State<LaunchScreenContent> createState() => _LaunchScreenContentState();
}

class _LaunchScreenContentState extends State<LaunchScreenContent>
    with TickerProviderStateMixin {
  late PageController _pageController;
  int _currentImageIndex = 0;
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );
    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeIn,
    ));
    _animationController.forward();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final images = <String>[];

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
              expandedHeight: 420,
              floating: false,
              pinned: true,
              stretch: true,
              backgroundColor: colorScheme.surface,
              flexibleSpace: FlexibleSpaceBar(
                title: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.black.withValues(alpha: 0.6),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    widget.resource.missionName ?? '',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18,
                      shadows: [
                        Shadow(
                          offset: const Offset(0, 2),
                          blurRadius: 4,
                          color: Colors.black.withValues(alpha: 0.5),
                        ),
                      ],
                    ),
                  ),
                ),
                centerTitle: true,
                stretchModes: [
                  StretchMode.zoomBackground,
                  StretchMode.blurBackground,
                  StretchMode.fadeTitle,
                ],
                background: Stack(
                  fit: StackFit.expand,
                  children: [
                    // Image Carousel or fallback
                    if (images.isEmpty)
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              colorScheme.primary,
                              colorScheme.secondary,
                            ],
                          ),
                        ),
                        child: Icon(
                          Icons.rocket_launch,
                          size: 100,
                          color: colorScheme.onPrimary,
                        ),
                      )
                    else
                      PageView.builder(
                        controller: _pageController,
                        onPageChanged: (index) {
                          setState(() => _currentImageIndex = index);
                        },
                        itemCount: images.length,
                        itemBuilder: (context, index) {
                          return Stack(
                            fit: StackFit.expand,
                            children: [
                              Image.network(
                                images[index],
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) =>
                                    const SizedBox.shrink(),
                              ),
                              // Gradient Overlay
                              Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.black.withValues(alpha: 0.20),
                                      Colors.black.withValues(alpha: 0.70),
                                    ],
                                    stops: [0.0, 0.9],
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    Positioned(
                      top: 100,
                      right: 20,
                      child: Hero(
                        tag: 'mission_patch_${widget.resource.flightNumber}',
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withValues(alpha: 0.3),
                                blurRadius: 10,
                                offset: const Offset(0, 5),
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Colors.white.withValues(alpha: 0.1),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: (widget.resource.links?.missionPatchSmall
                                            ?.isNotEmpty ??
                                        false)
                                    ? Image.network(
                                        widget
                                            .resource.links!.missionPatchSmall!,
                                        height: 80,
                                        errorBuilder:
                                            (context, error, stackTrace) =>
                                                const Icon(
                                          Icons.rocket_launch,
                                          size: 60,
                                          color: Colors.white,
                                        ),
                                      )
                                    : const Icon(
                                        Icons.rocket_launch,
                                        size: 60,
                                        color: Colors.white,
                                      ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Page Indicators
                    Positioned(
                      bottom: 100,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: images.asMap().entries.map((entry) {
                          return AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            width: _currentImageIndex == entry.key ? 24 : 8,
                            height: 8,
                            margin: const EdgeInsets.symmetric(horizontal: 4),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: _currentImageIndex == entry.key
                                  ? Colors.white
                                  : Colors.white.withValues(alpha: 0.4),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    // Flight Number Badge
                    Positioned(
                      top: 130,
                      left: 20,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: colorScheme.primaryContainer
                              .withValues(alpha: 0.9),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.2),
                              blurRadius: 8,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.tag,
                              color: colorScheme.onPrimaryContainer,
                              size: 16,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              S
                                  .of(context)
                                  .flightNumber(widget.resource.flightNumber),
                              style: TextStyle(
                                color: colorScheme.onPrimaryContainer,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: FadeTransition(
                opacity: _fadeAnimation,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      StatusSectionWidget(
                        success: widget.resource.launchSuccess ?? false,
                      ),
                      if (widget.resource.rocket != null) ...[
                        const SizedBox(height: 20),
                        RocketCardWidget(rocket: widget.resource.rocket!),
                      ],
                      if (widget.resource.rocket?.secondStage?.payloads
                              ?.firstOrNull !=
                          null) ...[
                        const SizedBox(height: 20),
                        QuickStatsSectionWidget(
                          payload: widget
                              .resource.rocket!.secondStage!.payloads!.first,
                          rocketName: widget.resource.rocket?.rocketName,
                        ),
                        const SizedBox(height: 20),
                        PayloadCardWidget(
                          payload: widget
                              .resource.rocket!.secondStage!.payloads!.first,
                        ),
                      ],
                      const SizedBox(height: 20),
                      MissionOverviewCardWidget(
                        details: widget.resource.details,
                      ),
                      if (widget.resource.launchDate != null &&
                          widget.resource.staticFireDate != null) ...[
                        const SizedBox(height: 20),
                        TimelineCardWidget(
                          launchDate: widget.resource.launchDate!,
                          staticFireDate: widget.resource.staticFireDate!,
                          launchSuccess: widget.resource.launchSuccess ?? false,
                        ),
                      ],
                      if (widget.resource.launchSite != null) ...[
                        const SizedBox(height: 20),
                        LaunchSiteCardWidget(site: widget.resource.launchSite!),
                      ],
                      if (widget.resource.ships.isNotEmpty) ...[
                        const SizedBox(height: 20),
                        RecoveryShipsCardWidget(ships: widget.resource.ships),
                      ],
                      if (widget.resource.links != null) ...[
                        const SizedBox(height: 20),
                        LinksCardWidget(links: widget.resource.links!),
                      ],
                      const SizedBox(height: 32),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

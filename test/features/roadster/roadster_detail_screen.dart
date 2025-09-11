import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/app/localization.dart';
import 'package:flutter_bloc_app_template/features/roadster/roadster_screen.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/app_bar/roadster_app_bar.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/background/animated_gradient_background.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/background/animated_stars_field.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/buttons/track_live_button.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/roadster_content.dart';
import 'package:flutter_bloc_app_template/models/roadster/roadster_resource.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:network_image_mock/network_image_mock.dart';

import '../../repository/roadster_repository_test.dart';

void main() {
  late RoadsterResource mockRoadster;
  late List<String> mockImages;

  setUpAll(() => HttpOverrides.global = null);

  setUp(() {
    mockRoadster = mockRoadsterResource;
    mockImages = ['image1.jpg', 'image2.jpg'];
  });

  testWidgets('renders main sections and background', (tester) async {
    await mockNetworkImagesFor(
      () => tester.pumpWidget(
        MaterialApp(
          supportedLocales: appSupportedLocales,
          localizationsDelegates: appLocalizationsDelegates,
          home: RoadsterDetailScreen(
            roadster: mockRoadster,
            images: mockImages,
          ),
        ),
      ),
    );
    // Animated background
    expect(find.byType(AnimatedGradientBackground), findsOneWidget);
    expect(find.byType(AnimatedStarsField), findsOneWidget);

    // Roadster content
    expect(find.byType(RoadsterAppBar), findsOneWidget);
    expect(find.byType(RoadsterContent), findsOneWidget);

    // Floating button
    expect(find.byType(TrackLiveButton), findsOneWidget);
  });
}

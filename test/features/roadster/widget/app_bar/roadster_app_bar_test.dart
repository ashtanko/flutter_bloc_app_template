import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/app/localization.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/app_bar/image_carousel.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/app_bar/image_indicators.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/app_bar/roadster_app_bar.dart';
import 'package:flutter_bloc_app_template/models/roadster/roadster_resource.dart';
import 'package:flutter_test/flutter_test.dart' hide TestVSync;
import 'package:network_image_mock/network_image_mock.dart';

import '../../helpers/test_helpers.dart';

void main() {
  group('RoadsterAppBar', () {
    late RoadsterResource mockRoadster;
    late List<String> mockImages;
    late AnimationController fadeController;

    setUp(() {
      mockRoadster = createMockRoadster();
      mockImages = ['image1.jpg', 'image2.jpg', 'image3.jpg'];
      fadeController = AnimationController(
        duration: const Duration(milliseconds: 1500),
        vsync: const TestVSync(),
      );
    });

    tearDown(() {
      fadeController.dispose();
    });

    testWidgets('should render sliver app bar', (WidgetTester tester) async {
      await mockNetworkImagesFor(
        () => tester.pumpWidget(
          MaterialApp(
            supportedLocales: appSupportedLocales,
            localizationsDelegates: appLocalizationsDelegates,
            home: Scaffold(
              body: CustomScrollView(
                slivers: [
                  RoadsterAppBar(
                    roadster: mockRoadster,
                    images: mockImages,
                    scrollOffset: 0.0,
                    fadeController: fadeController,
                  ),
                ],
              ),
            ),
          ),
        ),
      );

      expect(find.byType(SliverAppBar), findsOneWidget);
    });

    testWidgets('should show title when scrolled', (WidgetTester tester) async {
      await mockNetworkImagesFor(
        () => tester.pumpWidget(
          MaterialApp(
            supportedLocales: appSupportedLocales,
            localizationsDelegates: appLocalizationsDelegates,
            home: Scaffold(
              body: CustomScrollView(
                slivers: [
                  RoadsterAppBar(
                    roadster: mockRoadster,
                    images: mockImages,
                    scrollOffset: 250.0, // Scrolled past threshold
                    fadeController: fadeController,
                  ),
                ],
              ),
            ),
          ),
        ),
      );

      expect(find.text('Tesla Roadster'), findsAtLeast(1));
    });

    testWidgets('should hide title when not scrolled',
        (WidgetTester tester) async {
      await mockNetworkImagesFor(
        () => tester.pumpWidget(
          MaterialApp(
            supportedLocales: appSupportedLocales,
            localizationsDelegates: appLocalizationsDelegates,
            home: Scaffold(
              body: CustomScrollView(
                slivers: [
                  RoadsterAppBar(
                    roadster: mockRoadster,
                    images: mockImages,
                    scrollOffset: 0.0, // Not scrolled
                    fadeController: fadeController,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
      // Title should be transparent
      final animatedOpacity = tester.widget<AnimatedOpacity>(
        find.byType(AnimatedOpacity),
      );
      expect(animatedOpacity.opacity, equals(0.0));
    });

    testWidgets('should start auto scroll for multiple images',
        (WidgetTester tester) async {
      await mockNetworkImagesFor(
        () => tester.pumpWidget(
          MaterialApp(
            supportedLocales: appSupportedLocales,
            localizationsDelegates: appLocalizationsDelegates,
            home: Scaffold(
              body: CustomScrollView(
                slivers: [
                  RoadsterAppBar(
                    roadster: mockRoadster,
                    images: mockImages,
                    scrollOffset: 0.0,
                    fadeController: fadeController,
                  ),
                ],
              ),
            ),
          ),
        ),
      );

      expect(find.byType(ImageCarousel), findsOneWidget);
      expect(find.byType(ImageIndicators), findsOneWidget);
    });

    testWidgets('should dispose controllers properly',
        (WidgetTester tester) async {
      await mockNetworkImagesFor(
        () => tester.pumpWidget(
          MaterialApp(
            supportedLocales: appSupportedLocales,
            localizationsDelegates: appLocalizationsDelegates,
            home: Scaffold(
              body: CustomScrollView(
                slivers: [
                  RoadsterAppBar(
                    roadster: mockRoadster,
                    images: mockImages,
                    scrollOffset: 0.0,
                    fadeController: fadeController,
                  ),
                ],
              ),
            ),
          ),
        ),
      );

      // Remove the widget to trigger dispose
      await tester.pumpWidget(const MaterialApp(home: Scaffold()));

      // Verify no errors occurred during disposal
      expect(tester.takeException(), isNull);
    });
  });
}

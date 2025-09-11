import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/app/localization.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/buttons/track_live_button.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('TrackLiveButton', () {
    late AnimationController fadeController;
    var pressedCount = 0;

    setUp(() {
      fadeController = AnimationController(
        duration: const Duration(milliseconds: 1500),
        vsync: const TestVSync(),
      );
      pressedCount = 0;
    });

    tearDown(() {
      fadeController.dispose();
    });

    testWidgets('should render floating action button',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: appLocalizationsDelegates,
          supportedLocales: appSupportedLocales,
          home: Scaffold(
            body: Stack(
              children: [
                TrackLiveButton(
                  fadeController: fadeController,
                  onPressed: () => pressedCount++,
                ),
              ],
            ),
          ),
        ),
      );

      expect(find.byType(FloatingActionButton), findsOneWidget);
      expect(find.byType(ScaleTransition), findsAtLeast(1));
    });

    testWidgets('should display rocket icon and track live text',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: appLocalizationsDelegates,
          supportedLocales: appSupportedLocales,
          home: Scaffold(
            body: Stack(
              children: [
                TrackLiveButton(
                  fadeController: fadeController,
                  onPressed: () => pressedCount++,
                ),
              ],
            ),
          ),
        ),
      );

      expect(find.byIcon(Icons.rocket_launch), findsOneWidget);
      expect(find.byType(Text), findsOneWidget);
    });

    testWidgets('should be positioned at bottom right',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: appLocalizationsDelegates,
          supportedLocales: appSupportedLocales,
          home: Scaffold(
            body: Stack(
              children: [
                TrackLiveButton(
                  fadeController: fadeController,
                  onPressed: () => pressedCount++,
                ),
              ],
            ),
          ),
        ),
      );

      final positioned = tester.widget<Positioned>(find.byType(Positioned));
      expect(positioned.bottom, equals(20));
      expect(positioned.right, equals(20));
    });

    testWidgets('should call onPressed when tapped',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: appLocalizationsDelegates,
          supportedLocales: appSupportedLocales,
          home: Scaffold(
            body: Stack(
              children: [
                TrackLiveButton(
                  fadeController: fadeController,
                  onPressed: () => pressedCount++,
                ),
              ],
            ),
          ),
        ),
      );
      fadeController.value = 1.0;
      await tester.pump();

      final fabFinder = find.byType(FloatingActionButton);
      await tester.tapAt(tester.getCenter(fabFinder));
      await tester.pumpAndSettle();
      expect(pressedCount, equals(1));
    });

    testWidgets('should animate scale transition', (WidgetTester tester) async {
      // Create a controller for this test
      final fadeController = AnimationController(
        vsync: tester,
        duration: const Duration(milliseconds: 500),
      );

      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: appLocalizationsDelegates,
          supportedLocales: appSupportedLocales,
          home: Scaffold(
            body: Stack(
              children: [
                TrackLiveButton(
                  fadeController: fadeController,
                  onPressed: () => pressedCount++,
                ),
              ],
            ),
          ),
        ),
      );

      // Start animation
      unawaited(fadeController.forward());
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 500));

      // Verify animation runs without errors
      expect(tester.takeException(), isNull);

      // Dispose controller at the end
      fadeController.dispose();
    });

    testWidgets('should use primary color from theme',
        (WidgetTester tester) async {
      const primaryColor = Colors.red;

      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: appLocalizationsDelegates,
          supportedLocales: appSupportedLocales,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
          ),
          home: Scaffold(
            body: Stack(
              children: [
                TrackLiveButton(
                  fadeController: fadeController,
                  onPressed: () => pressedCount++,
                ),
              ],
            ),
          ),
        ),
      );

      final fab = tester.widget<FloatingActionButton>(
        find.byType(FloatingActionButton),
      );
      expect(fab.backgroundColor, isNotNull);
    });
  });
}

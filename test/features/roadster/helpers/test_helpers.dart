import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc_app_template/models/roadster/roadster_resource.dart';
import 'package:flutter_test/flutter_test.dart';

import 'simple_image_test_helpers.dart';

/// Test VSyncProvider for animation controllers in tests
class TestVSync implements TickerProvider {
  const TestVSync();

  @override
  Ticker createTicker(TickerCallback onTick) => Ticker(onTick);
}

/// Creates a mock RoadsterResource for testing
RoadsterResource createMockRoadster() {
  return const RoadsterResource(
    name: "Elon Musk's Tesla Roadster",
    launchDateUtc: '2018-02-06T20:45:00.000Z',
    launchDateUnix: 1517949900,
    launchMassKg: 1350,
    launchMassLbs: 2976,
    noradId: 43205,
    epochJd: 2459914.263888889,
    orbitType: 'heliocentric',
    apoapsisAu: 1.664332332453025,
    periapsisAu: 0.986015924224046,
    semiMajorAxisAu: 57.70686413577451,
    eccentricity: 0.2559348215918733,
    inclination: 1.075052357364693,
    longitude: 316.9112133411523,
    periapsisArg: 177.75981116285,
    periodDays: 557.1958197697352,
    speedKph: 9520.88362029108,
    speedMph: 5916.000976023889,
    earthDistanceKm: 320593735.82924163,
    earthDistanceMi: 199207650.2259517,
    marsDistanceKm: 395640511.90355814,
    marsDistanceMi: 245839540.52202582,
    flickrImages: [
      'url1',
      'url2',
    ],
    wikipedia: 'https://en.wikipedia.org/wiki/Elon_Musk%27s_Tesla_Roadster',
    video: 'https://youtu.be/wbSwFU6tY1c',
    details: 'Some details about Roadster',
    id: '5eb75f0842fea42237d7f3f4',
  );
}

/// Creates mock image URLs for testing
List<String> createMockImages([int count = 3]) {
  return List.generate(
    count,
    (index) => 'https://example.com/image$index.jpg',
  );
}

/// Wrapper widget for testing widgets that need MaterialApp context
Widget wrapWithMaterialApp(Widget child) {
  return MaterialApp(
    home: Scaffold(body: child),
  );
}

/// Wrapper widget for testing widgets that need Scaffold context
Widget wrapWithScaffold(Widget child) {
  return MaterialApp(
    home: Scaffold(body: child),
  );
}

/// Helper for testing widgets that need Stack context
Widget wrapWithStack(Widget child) {
  return MaterialApp(
    home: Scaffold(
      body: Stack(children: [child]),
    ),
  );
}

/// Helper for testing sliver widgets
Widget wrapWithCustomScrollView(Widget sliver) {
  return MaterialApp(
    home: Scaffold(
      body: CustomScrollView(
        slivers: [sliver],
      ),
    ),
  );
}

/// Creates an animation controller for testing
AnimationController createTestAnimationController({
  Duration duration = const Duration(milliseconds: 300),
}) {
  return AnimationController(
    duration: duration,
    vsync: const TestVSync(),
  );
}

/// Pump animation frames for testing
Future<void> pumpAnimationFrames(
  WidgetTester tester,
  AnimationController controller, {
  int frames = 10,
  Duration frameDuration = const Duration(milliseconds: 16),
}) async {
  unawaited(controller.forward());
  for (var i = 0; i < frames; i++) {
    await tester.pump(frameDuration);
  }
}

/// Mock gesture helper
Future<void> simulateSwipe(
  WidgetTester tester,
  Finder finder,
  Offset offset,
) async {
  await tester.drag(finder, offset);
  await tester.pumpAndSettle();
}

/// Verify no exceptions occurred during test
void verifyNoExceptions(WidgetTester tester) {
  expect(tester.takeException(), isNull);
}

Widget createTestImageCarousel({
  required List<String> images,
  required PageController pageController,
  required ValueChanged<int> onPageChanged,
  double scrollOffset = 0.0,
}) {
  return Transform.translate(
    offset: Offset(0, scrollOffset * 0.5),
    child: SizedBox(
      height: 300,
      child: PageView.builder(
        controller: pageController,
        onPageChanged: onPageChanged,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Center(
            child: TestImageWidget(
              imageUrl: images[index],
              width: 350,
              height: 250,
            ),
          );
        },
      ),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/app/localization.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/distance_card_widget.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Widget buildTestableWidget(Widget child) {
    return MaterialApp(
      localizationsDelegates: appLocalizationsDelegates,
      supportedLocales: appSupportedLocales,
      home: Scaffold(body: child),
    );
  }

  late AnimationController controller;

  setUp(() {
    // AnimationController needs a TickerProvider, we’ll fake it in tests.
  });

  testWidgets('renders title and millionKm text', (tester) async {
    controller = AnimationController(
      vsync: tester,
      duration: const Duration(seconds: 1),
    );

    await tester.pumpWidget(
      buildTestableWidget(
        DistanceCardWidget(
          title: 'Earth',
          distance: 150000000.0,
          // 150 million km
          color: Colors.blue,
          icon: Icons.public,
          delay: 0,
          pulseController: controller,
        ),
      ),
    );

    expect(find.text('Earth'), findsOneWidget);
    expect(find.text(S.current.millionKm), findsOneWidget);
    expect(find.byIcon(Icons.public), findsOneWidget);
  });

  testWidgets('pulse animation reacts to controller', (tester) async {
    controller = AnimationController(
      vsync: tester,
      duration: const Duration(seconds: 1),
    );

    await tester.pumpWidget(
      buildTestableWidget(
        DistanceCardWidget(
          title: 'Venus',
          distance: 108000000,
          color: Colors.orange,
          icon: Icons.star,
          delay: 0,
          pulseController: controller,
        ),
      ),
    );

    // Initial pulse value
    controller.value = 0.0;
    await tester.pump();
    final initialContainer = tester.widget<Container>(
      find
          .byWidgetPredicate(
              (w) => w is Container && w.decoration is BoxDecoration)
          .last,
    );
    final initialColor = (initialContainer.decoration as BoxDecoration).color;

    // Update pulse controller
    controller.value = 1.0;
    await tester.pump();

    final updatedContainer = tester.widget<Container>(
      find
          .byWidgetPredicate(
              (w) => w is Container && w.decoration is BoxDecoration)
          .last,
    );
    final updatedColor = (updatedContainer.decoration as BoxDecoration).color;

    expect(updatedColor != initialColor, true);
  });

  testWidgets('animates entry with opacity', (tester) async {
    controller = AnimationController(
      vsync: tester,
      duration: const Duration(seconds: 1),
    );

    await tester.pumpWidget(
      buildTestableWidget(
        DistanceCardWidget(
          title: 'Jupiter',
          distance: 778000000,
          color: Colors.brown,
          icon: Icons.circle,
          delay: 0,
          pulseController: controller,
        ),
      ),
    );

    // Initially opacity may be < 1
    final initialOpacity = tester.widget<Opacity>(find.byType(Opacity)).opacity;

    // Advance animation
    await tester.pump(const Duration(milliseconds: 1500));
    final finalOpacity = tester.widget<Opacity>(find.byType(Opacity)).opacity;

    expect(initialOpacity < finalOpacity, true);
    expect(finalOpacity, equals(1));
  });
}

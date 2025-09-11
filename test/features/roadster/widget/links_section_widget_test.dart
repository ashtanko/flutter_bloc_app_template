import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/app/localization.dart';
import 'package:flutter_bloc_app_template/features/roadster/widget/links_section_widget.dart';
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

  testWidgets('renders learnMore text', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(const LinksSectionWidget()));

    expect(find.text(S.current.learnMore), findsOneWidget);
  });

  testWidgets('renders wikipedia button with icon',
      (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(const LinksSectionWidget()));

    expect(find.text(S.current.wikipedia), findsOneWidget);
    expect(find.byIcon(Icons.article), findsOneWidget);
  });

  testWidgets('renders watchVideo button with icon',
      (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(const LinksSectionWidget()));

    expect(find.text(S.current.watchVideo), findsOneWidget);
    expect(find.byIcon(Icons.play_arrow), findsOneWidget);
  });

  testWidgets('buttons are tappable', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(const LinksSectionWidget()));

    final wikipediaButton = find.text(S.current.wikipedia);
    final watchVideoButton = find.text(S.current.watchVideo);

    await tester.tap(wikipediaButton);
    await tester.pump();

    await tester.tap(watchVideoButton);
    await tester.pump();

    // Since your onPressed handlers are empty, we just ensure taps don’t throw.
  });
}

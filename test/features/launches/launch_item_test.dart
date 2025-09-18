import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/features/launches/widget/launch_item.dart';
import 'package:flutter_bloc_app_template/index.dart';
import 'package:flutter_bloc_app_template/models/launch/launch_rocket_resource.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../bloc/utils.dart';

void main() {
  final launch = const LaunchResource(
    missionName: 'Starlink',
    rocket: LaunchRocketResource(rocketName: 'Falcon 9', rocketType: 'FT'),
    launchTime: '12:00',
    launchSuccess: true,
    launchDays: Since('5'),
    links: LinksResource(missionPatchSmall: null),
    id: '',
    flightNumber: 1,
  );

  testWidgets('renders LaunchItem with success icon and texts', (tester) async {
    await tester.pumpLocalizedWidget(child: LaunchItem(launch: launch));

    await tester.pumpAndSettle();

    expect(find.byIcon(Icons.rocket_launch_rounded), findsOneWidget);
    expect(find.textContaining('Starlink'), findsOneWidget);
    expect(find.textContaining('Falcon 9'), findsOneWidget);
    expect(find.textContaining('FT'), findsOneWidget);
    expect(find.textContaining('Launched at: 12:00'), findsOneWidget);
    expect(find.textContaining('5 days ago'), findsOneWidget);
  });

  testWidgets('renders LaunchItem with failure icon', (tester) async {
    final failedLaunch = launch.copyWith(launchSuccess: false);
    await tester.pumpLocalizedWidget(child: LaunchItem(launch: failedLaunch));
    await tester.pumpAndSettle();

    final icon = tester.widget<Icon>(find.byIcon(Icons.rocket_launch_rounded));
    expect(icon.color, Colors.redAccent);
  });

  testWidgets('calls onClick when tapped', (tester) async {
    var tapped = false;

    await tester.pumpLocalizedWidget(
      child: LaunchItem(
        launch: launch,
        onClick: (_) => tapped = true,
      ),
    );
    await tester.pumpAndSettle();

    await tester.tap(find.byType(InkWell));
    expect(tapped, isTrue);
  });

  testWidgets('renders localized text for pt locale', (tester) async {
    await tester.pumpLocalizedWidget(
      child: LaunchItem(launch: launch),
      locale: const Locale('pt'),
    );
    await tester.pumpAndSettle();

    expect(find.textContaining('Há 5 dias'), findsOneWidget); // in Portuguese
  });

  testWidgets('renders Unknown if launchDays is null', (tester) async {
    final unknownLaunch = launch.copyWith(launchDays: const Unknown());
    await tester.pumpLocalizedWidget(
      child: LaunchItem(launch: unknownLaunch),
    );
    await tester.pumpAndSettle();

    expect(find.text('Unknown'), findsOneWidget);
  });
}

import 'dart:ui';

import 'package:flutter_bloc_app_template/features/launch/widget/launch_site_card_widget.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart';
import 'package:flutter_bloc_app_template/models/launch/launch_site_resource.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../bloc/utils.dart';

void main() {
  late LaunchSiteResource site;

  setUp(() {
    site = const LaunchSiteResource(
      siteId: 'LS123',
      siteName: 'Cape Canaveral',
      siteNameLong: 'Cape Canaveral Space Launch Complex 40',
    );
  });

  testWidgets('renders launch site title correctly', (tester) async {
    await tester.pumpLocalizedWidget(
      child: LaunchSiteCardWidget(site: site),
      locale: const Locale('en'),
    );
    await tester.pump();

    expect(find.text(S.current.launchSite), findsOneWidget);
  });

  testWidgets('renders site name, long name, and id', (tester) async {
    await tester.pumpLocalizedWidget(
      child: LaunchSiteCardWidget(site: site),
      locale: const Locale('en'),
    );
    await tester.pump();

    expect(find.text(site.siteName!), findsOneWidget);
    expect(find.text(site.siteNameLong!), findsOneWidget);
    expect(
        find.text('${S.current.siteIdLabel} ${site.siteId}'), findsOneWidget);
  });

  testWidgets('renders correctly with only siteId', (tester) async {
    final minimalSite = const LaunchSiteResource(siteId: 'LS456');

    await tester.pumpLocalizedWidget(
      child: LaunchSiteCardWidget(site: minimalSite),
      locale: const Locale('en'),
    );
    await tester.pump();

    expect(find.text('${S.current.siteIdLabel} ${minimalSite.siteId}'),
        findsOneWidget);
    expect(find.text(minimalSite.siteName ?? ''), findsNothing);
    expect(find.text(minimalSite.siteNameLong ?? ''), findsNothing);
  });
}

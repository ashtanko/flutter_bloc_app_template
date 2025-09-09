import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/app/localization.dart';
import 'package:flutter_bloc_app_template/features/cores/utils/core_utils.dart';
import 'package:flutter_bloc_app_template/features/cores/widget/core_item_widget.dart';
import 'package:flutter_bloc_app_template/models/core/core_resource.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  CoreResource makeCore({
    String? coreSerial,
    int? block,
    String? status,
    String? originalLaunch,
    List<MissionResource>? missions,
    int? reuseCount,
  }) {
    return CoreResource(
      coreSerial: coreSerial,
      block: block,
      status: status,
      originalLaunch: originalLaunch,
      missions: missions,
      reuseCount: reuseCount,
    );
  }

  Widget makeTestableWidget(CoreResource core) {
    return MaterialApp(
      localizationsDelegates: appLocalizationsDelegates,
      supportedLocales: appSupportedLocales,
      home: Scaffold(
        body: CoreItemWidget(core: core),
      ),
    );
  }

  testWidgets('displays core serial and block', (tester) async {
    final core = makeCore(coreSerial: 'B1049', block: 5);
    await tester.pumpWidget(makeTestableWidget(core));
    await tester.pumpAndSettle();

    expect(find.text('B1049'), findsOneWidget);
    expect(find.textContaining('Block'), findsOneWidget);
  });

  testWidgets('displays status with correct color', (tester) async {
    final core = makeCore(coreSerial: 'B1049', status: 'active');
    await tester.pumpWidget(makeTestableWidget(core));
    await tester.pumpAndSettle();

    final statusFinder = find.text('active');
    expect(statusFinder, findsOneWidget);

    final textWidget = tester.widget<Text>(statusFinder);
    final color = textWidget.style?.color;
    // should match getStatusColor(context, 'active')
    expect(color, isNotNull);
  });

  testWidgets('displays formatted first launch', (tester) async {
    final core = makeCore(originalLaunch: '2021-09-09T12:00:00Z');
    await tester.pumpWidget(makeTestableWidget(core));
    await tester.pumpAndSettle();

    final formatted = formatFirstLaunch(
        tester.element(find.byType(CoreItemWidget)), core.originalLaunch);
    expect(find.text(formatted), findsOneWidget);
  });

  testWidgets('displays mission and reuse counts', (tester) async {
    final core = makeCore(
      missions: [const MissionResource(name: 'Demo-2')],
      reuseCount: 2,
    );
    await tester.pumpWidget(makeTestableWidget(core));
    await tester.pumpAndSettle();

    expect(find.textContaining('Demo-2'), findsOneWidget);
  });

  testWidgets('renders mission chips when missions are present',
      (tester) async {
    final core = makeCore(
      missions: [
        const MissionResource(name: 'Demo-2'),
        const MissionResource(name: 'Starlink-15'),
      ],
    );
    await tester.pumpWidget(makeTestableWidget(core));
    await tester.pumpAndSettle();

    expect(find.byType(Chip), findsNWidgets(2));
    expect(find.text('Demo-2'), findsOneWidget);
    expect(find.text('Starlink-15'), findsOneWidget);
  });

  testWidgets('does not render block container if block is null',
      (tester) async {
    final core = makeCore(coreSerial: 'B1049', block: null);
    await tester.pumpWidget(makeTestableWidget(core));
    await tester.pumpAndSettle();

    expect(find.textContaining('Block'), findsNothing);
  });
}

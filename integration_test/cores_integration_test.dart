import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/main.dart' as app;
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {});

  testWidgets('cores test', (
    WidgetTester tester,
  ) async {
    app.main([]);
    await tester.pumpAndSettle();

    expect(find.byKey(const Key('cores_screen')), findsOneWidget);

    final coresTab = find.byKey(const Key('cores_screen'));
    await tester.ensureVisible(coresTab);
    await tester.tap(coresTab);
    await tester.pumpAndSettle();

    final firstItem = find.byKey(const Key('Merlin1A0'));

    expect(firstItem, findsOneWidget);
    await tester.ensureVisible(firstItem);

    final allFilterChip = find.byKey(const Key('core_status_filter_all'));
    await tester.ensureVisible(allFilterChip);

    await tester.tap(allFilterChip);
    await tester.pumpAndSettle();

    expect(find.text('Merlin1A'), findsOneWidget);

    final activeFilterChip = find.byKey(const Key('core_status_filter_active'));
    await tester.ensureVisible(activeFilterChip);

    await tester.tap(activeFilterChip);
    await tester.pumpAndSettle();

    expect(find.text('active'), findsAtLeast(1));

    final lostFilterChip = find.byKey(const Key('core_status_filter_lost'));
    await tester.ensureVisible(lostFilterChip);

    await tester.tap(lostFilterChip);
    await tester.pumpAndSettle();

    expect(find.text('lost'), findsAtLeast(1));

    final inactiveFilterChip = find.byKey(
      const Key('core_status_filter_inactive'),
    );
    await tester.ensureVisible(inactiveFilterChip);

    await tester.tap(inactiveFilterChip);
    await tester.pumpAndSettle();

    expect(find.text('inactive'), findsAtLeast(1));

    final unknownFilterChip = find.byKey(
      const Key('core_status_filter_unknown'),
    );
    await tester.ensureVisible(unknownFilterChip);

    await tester.tap(unknownFilterChip);
    await tester.pumpAndSettle();

    expect(find.text('unknown'), findsAtLeast(1));

    final searchField = find.byType(TextField);
    expect(searchField, findsOneWidget);

    await tester.enterText(searchField, 'flutter');
    await tester.pumpAndSettle();

    expect(find.text('No cores found for "flutter"'), findsOneWidget);

    await tester.tap(allFilterChip);
    await tester.pumpAndSettle();

    await tester.enterText(searchField, 'Merlin');
    await tester.pumpAndSettle();

    expect(find.text('Merlin'), findsAtLeast(1));

    // await tester.tap(find.byType(CoreItemWidget).first);
    // await tester.pumpAndSettle();
    // todo replace with details screen text
    // expect(find.text('Merlin1A'), findsOneWidget);
  });
}

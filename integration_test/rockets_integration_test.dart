import 'package:flutter/foundation.dart';
import 'package:flutter_bloc_app_template/features/rockets/widget/rocket_item/rocket_item.dart';
import 'package:flutter_bloc_app_template/main.dart' as app;
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {});

  testWidgets('rockets navigation test', (
    WidgetTester tester,
  ) async {
    app.main([]);
    await tester.pumpAndSettle();

    expect(find.byKey(const Key('rockets_screen')), findsOneWidget);

    final rocketsTab = find.byKey(const Key('rockets_screen'));
    await tester.ensureVisible(rocketsTab);
    await tester.tap(rocketsTab);
    await tester.pumpAndSettle();

    final firstItem = find.byKey(const Key('Falcon 1rocket'));

    expect(firstItem, findsOneWidget);
    await tester.ensureVisible(firstItem);
    await tester.tap(find.byType(RocketItemWidget).first);
    await tester.pumpAndSettle();
    expect(find.text('Falcon 1'), findsOneWidget);
    expect(find.text('Overview'), findsOneWidget);
  });
}

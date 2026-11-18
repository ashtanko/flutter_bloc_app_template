import 'package:flutter_bloc_app_template/main.dart' as app;
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:material_ui/material_ui.dart';

import 'pump_until.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {});

  testWidgets('load launches test', (
    WidgetTester tester,
  ) async {
    app.main([]);
    await tester.pumpAndSettle();
    await pumpUntilFound(tester, find.textContaining('Mission'));

    expect(find.text('Launches'), findsAtLeast(1));
    expect(find.text('Rockets'), findsOneWidget);
    expect(find.text('Settings'), findsOneWidget);

    expect(find.textContaining('Mission'), findsAtLeast(1));

    await tester.fling(find.byType(ListView), const Offset(0, -300), 1000);
    await tester.pumpAndSettle();

    expect(find.textContaining('Mission'), findsAtLeast(1));
  }, timeout: Timeout.none);
}

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc_app_template/main.dart' as app;
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {});

  testWidgets('launch test', (
    WidgetTester tester,
  ) async {
    app.main([]);
    await tester.pumpAndSettle();

    final firstItem = find.byKey(const Key('FalconSat1'));

    expect(firstItem, findsOneWidget);
    await tester.ensureVisible(firstItem);
    await tester.tap(firstItem);

    await tester.pumpAndSettle();
    expect(find.text('FalconSat'), findsOneWidget);
  });
}

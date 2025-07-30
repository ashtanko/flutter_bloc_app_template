import 'package:flutter/foundation.dart';
import 'package:flutter_bloc_app_template/features/launches/widget/launch_item.dart';
import 'package:flutter_bloc_app_template/main.dart' as app;
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {});

  testWidgets('launches test', (
    WidgetTester tester,
  ) async {
    app.main([]);
    await tester.pumpAndSettle();

    final firstItem = find.byKey(const Key('FalconSat1'));

    expect(firstItem, findsOneWidget);
    await tester.ensureVisible(firstItem);
    await tester.tap(find.byType(LaunchItem).first);

    await tester.pumpAndSettle();
    expect(find.text('FalconSat'), findsOneWidget);
  });
}

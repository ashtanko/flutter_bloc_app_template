import 'package:flutter_test/flutter_test.dart';

/// Pumps frames until [finder] matches at least one widget, then settles.
///
/// `app.main` initialises dependencies and loads data asynchronously, so a
/// single `pumpAndSettle` can return before the main screen (or the first
/// network results) is on screen, which made the full-app integration tests
/// flaky.
Future<void> pumpUntilFound(
  WidgetTester tester,
  Finder finder, {
  Duration timeout = const Duration(seconds: 30),
}) async {
  final deadline = DateTime.now().add(timeout);
  while (finder.evaluate().isEmpty) {
    if (DateTime.now().isAfter(deadline)) {
      throw TestFailure('Timed out after $timeout waiting for $finder');
    }
    await tester.pump(const Duration(milliseconds: 100));
  }
  await tester.pumpAndSettle();
}

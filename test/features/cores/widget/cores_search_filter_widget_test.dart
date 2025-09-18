import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/app/localization.dart';
import 'package:flutter_bloc_app_template/features/cores/model/core_filter_status.dart';
import 'package:flutter_bloc_app_template/features/cores/widget/cores_search_filter_widget.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockOnChanged extends Mock {
  void call(String value, CoreFilterStatus? status);
}

class MockOnClear extends Mock {
  void call(CoreFilterStatus? status);
}

void main() {
  late MockOnChanged mockOnChanged;
  late MockOnClear mockOnClear;

  setUp(() {
    mockOnChanged = MockOnChanged();
    mockOnClear = MockOnClear();
  });

  Future<void> pumpWidget(
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      MaterialApp(
        localizationsDelegates: appLocalizationsDelegates,
        supportedLocales: appSupportedLocales,
        home: Scaffold(
          body: CustomScrollView(
            slivers: [
              CoresSearchFilterWidget(
                onClear: mockOnClear.call,
                onChanged: mockOnChanged.call,
              ),
            ],
          ),
        ),
      ),
    );
  }

  testWidgets('renders search bar and filter chips', (tester) async {
    await pumpWidget(tester);

    expect(find.byType(TextField), findsOneWidget);
    for (final status in CoreFilterStatus.values) {
      expect(
        find.byKey(Key('core_status_filter_${status.name.toLowerCase()}')),
        findsOneWidget,
      );
    }
  });

  testWidgets('typing in search triggers onChanged', (tester) async {
    await pumpWidget(tester);

    final searchField = find.byType(TextField);
    await tester.enterText(searchField, 'merlin');
    await tester.pumpAndSettle();

    verify(() => mockOnChanged.call('merlin', null)).called(1);
  });

  testWidgets('tapping clear button triggers onClear', (tester) async {
    await pumpWidget(tester);

    final searchField = find.byType(TextField);
    await tester.enterText(searchField, 'merlin');
    await tester.pumpAndSettle();

    final clearButton = find.byIcon(Icons.clear);
    expect(clearButton, findsOneWidget);

    await tester.tap(clearButton);
    await tester.pumpAndSettle();

    verify(() => mockOnClear.call(null)).called(1);
    expect(find.text(''), findsOneWidget);
  });

  testWidgets('tapping filter chip updates selection and triggers onChanged',
      (tester) async {
    await pumpWidget(tester);

    final activeChip = find.byKey(const Key('core_status_filter_active'));
    await tester.tap(activeChip);
    await tester.pumpAndSettle();

    verify(() => mockOnChanged.call('', CoreFilterStatus.active)).called(1);

    // Tapping "all" resets status to null
    final allChip = find.byKey(const Key('core_status_filter_all'));
    await tester.tap(allChip);
    await tester.pumpAndSettle();

    verify(() => mockOnChanged.call('', null)).called(1);
  });
}

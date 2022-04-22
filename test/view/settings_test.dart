import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart';
import 'package:flutter_bloc_app_template/index.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockThemeCubit extends MockCubit<ThemeState> implements ThemeCubit {}

extension on WidgetTester {
  Future<void> pumpSettings(ThemeCubit themeCubit) {
    return pumpWidget(
      MaterialApp(
        localizationsDelegates: [
          const AppLocalizationDelegate(),
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate
        ],
        locale: const Locale('en'),
        home: BlocProvider.value(
          value: themeCubit,
          child: const Settings(),
        ),
      ),
    );
  }
}

void main() {
  late ThemeCubit themeCubit;

  setUp(() {
    themeCubit = MockThemeCubit();
  });

  void assertThemeDialogCell(
    WidgetTester tester,
    String title,
    ThemeState themeState,
    ThemeMode themeMode,
  ) async {
    when(() => themeCubit.state).thenReturn(themeState);
    when(() => themeCubit.themeMode).thenReturn(themeMode);

    await tester.pumpSettings(themeCubit);
    await tester.pump();
    await tester.tap(find.byType(SettingCell));
    await tester.pump();

    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is ThemeDialogCell<ThemeState> &&
            widget.title == title &&
            widget.value == themeState,
      ),
      findsOneWidget,
    );

    expect(find.widgetWithIcon(ThemeDialogCell<ThemeState>, Icons.check),
        findsOneWidget);
  }

  void verifyThemeChange({
    required WidgetTester tester,
    required String widgetTitle,
    required ThemeState prevThemeState,
    required ThemeMode themeMode,
    required ThemeState newThemeState,
  }) async {
    when(() => themeCubit.state).thenReturn(prevThemeState);
    when(() => themeCubit.themeMode).thenReturn(themeMode);

    await tester.pumpSettings(themeCubit);
    await tester.pump();
    await tester.tap(find.byType(SettingCell));
    await tester.pumpAndSettle();
    await tester.tap(
      find.widgetWithText(ThemeDialogCell<ThemeState>, widgetTitle),
      warnIfMissed: true,
    );

    verify(() => themeCubit.updateTheme(newThemeState)).called(1);
  }

  group('Settings Screen Tests', () {
    testWidgets('renders settings title', (tester) async {
      when(() => themeCubit.state).thenReturn(ThemeState.dark);
      when(() => themeCubit.themeMode).thenReturn(ThemeMode.dark);

      await tester.pumpSettings(themeCubit);
      await tester.pump();

      expect(find.text('Settings'), findsOneWidget);
    });

    testWidgets('render setting list', (tester) async {
      when(() => themeCubit.state).thenReturn(ThemeState.dark);
      when(() => themeCubit.themeMode).thenReturn(ThemeMode.dark);

      await tester.pumpSettings(themeCubit);
      await tester.pump();

      expect(find.byType(ListView), findsOneWidget);
    });

    testWidgets('render setting list items', (tester) async {
      when(() => themeCubit.state).thenReturn(ThemeState.dark);
      when(() => themeCubit.themeMode).thenReturn(ThemeMode.dark);

      await tester.pumpSettings(themeCubit);
      await tester.pump();

      expect(find.text('Theme'), findsOneWidget);
      expect(find.byIcon(Icons.palette), findsOneWidget);
      expect(find.byIcon(Icons.chevron_right), findsOneWidget);
      expect(find.byType(SettingCell), findsOneWidget);
    });

    testWidgets('render bottom sheet dialog items', (tester) async {
      when(() => themeCubit.state).thenReturn(ThemeState.dark);
      when(() => themeCubit.themeMode).thenReturn(ThemeMode.dark);

      await tester.pumpSettings(themeCubit);
      await tester.pump();
      await tester.tap(find.byType(SettingCell));
      await tester.pumpAndSettle();

      expect(find.byType(ThemeDialogCell<ThemeState>), findsNWidgets(4));
    });

    testWidgets('render bottom sheet dialog item for system theme',
        (tester) async {
      assertThemeDialogCell(
        tester,
        'System Theme',
        ThemeState.system,
        ThemeMode.system,
      );
    });

    testWidgets('render bottom sheet dialog item for light theme',
        (tester) async {
      assertThemeDialogCell(
        tester,
        'Light Theme',
        ThemeState.light,
        ThemeMode.light,
      );
    });

    testWidgets('render bottom sheet dialog item for dark theme',
        (tester) async {
      assertThemeDialogCell(
        tester,
        'Dark Theme',
        ThemeState.dark,
        ThemeMode.dark,
      );
    });

    testWidgets('render bottom sheet dialog item for yellow theme',
        (tester) async {
      assertThemeDialogCell(
        tester,
        'Yellow Theme',
        ThemeState.yellow,
        ThemeMode.light,
      );
    });

    testWidgets('change to system theme', (tester) async {
      verifyThemeChange(
        tester: tester,
        widgetTitle: 'System Theme',
        prevThemeState: ThemeState.dark,
        themeMode: ThemeMode.dark,
        newThemeState: ThemeState.system,
      );
    });

    testWidgets('change to light theme theme', (tester) async {
      verifyThemeChange(
        tester: tester,
        widgetTitle: 'Light Theme',
        prevThemeState: ThemeState.dark,
        themeMode: ThemeMode.dark,
        newThemeState: ThemeState.light,
      );
    });

    testWidgets('change to dark theme theme', (tester) async {
      verifyThemeChange(
        tester: tester,
        widgetTitle: 'Dark Theme',
        prevThemeState: ThemeState.light,
        themeMode: ThemeMode.dark,
        newThemeState: ThemeState.dark,
      );
    });

    testWidgets('change to yellow theme theme', (tester) async {
      verifyThemeChange(
        tester: tester,
        widgetTitle: 'Yellow Theme',
        prevThemeState: ThemeState.light,
        themeMode: ThemeMode.dark,
        newThemeState: ThemeState.yellow,
      );
    });
  });
}

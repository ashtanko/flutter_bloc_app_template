import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/bloc/theme/app_theme.dart';
import 'package:flutter_bloc_app_template/features/settings/settings.dart';
import 'package:flutter_bloc_app_template/index.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../bloc/utils.dart';

class MockThemeCubit extends MockCubit<AppTheme> implements ThemeCubit {}

extension on WidgetTester {
  Future<void> pumpSettings(ThemeCubit themeCubit) async {
    await pumpLocalizedWidgetWithBloc<ThemeCubit>(
      bloc: themeCubit,
      child: const SettingsScreen(),
      locale: const Locale('en'),
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
    AppTheme themeState,
    ThemeMode themeMode,
  ) async {
    when(() => themeCubit.state).thenReturn(themeState);
    when(() => themeCubit.themeMode).thenReturn(themeMode);

    await tester.pumpSettings(themeCubit);
    await tester.pump();
    await tester.tap(find.byIcon(Icons.palette));
    await tester.pump();

    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is ThemeDialogCell<AppTheme> &&
            widget.title == title &&
            widget.value == themeState,
      ),
      findsOneWidget,
    );

    expect(find.widgetWithIcon(ThemeDialogCell<AppTheme>, Icons.check),
        findsOneWidget);
  }

  void verifyThemeChange({
    required WidgetTester tester,
    required String widgetTitle,
    required AppTheme prevThemeState,
    required ThemeMode themeMode,
    required AppTheme newThemeState,
  }) async {
    when(() => themeCubit.state).thenReturn(prevThemeState);
    when(() => themeCubit.themeMode).thenReturn(themeMode);

    await tester.pumpSettings(themeCubit);
    await tester.pump();
    await tester.tap(find.byIcon(Icons.palette));
    await tester.pumpAndSettle();
    await tester.tap(
      find.widgetWithText(ThemeDialogCell<AppTheme>, widgetTitle),
      warnIfMissed: true,
    );

    verify(() => themeCubit.updateTheme(newThemeState)).called(1);
  }

  Future<void> expectWithLocale(
    WidgetTester tester, {
    required String expectedText,
    String locale = 'en',
  }) async {
    when(() => themeCubit.state).thenReturn(AppTheme.dark);
    when(() => themeCubit.themeMode).thenReturn(ThemeMode.dark);

    await tester.pumpLocalizedWidgetWithBloc<ThemeCubit>(
      bloc: themeCubit,
      child: const SettingsScreen(),
      locale: Locale(locale),
    );

    await tester.pump();
    expect(find.text(expectedText), findsOneWidget);
  }

  group('Settings Screen Tests', () {
    <String, String>{
      'en': 'Settings',
      'pt': 'Configurações',
      'de': 'Einstellungen',
    }.forEach((locale, expectedTitle) async {
      testWidgets('renders "$expectedTitle" for locale "$locale"',
          (tester) async {
        await expectWithLocale(tester,
            locale: locale, expectedText: expectedTitle);
      });
    });

    testWidgets('render setting list', (tester) async {
      when(() => themeCubit.state).thenReturn(AppTheme.dark);
      when(() => themeCubit.themeMode).thenReturn(ThemeMode.dark);

      await tester.pumpSettings(themeCubit);
      await tester.pump();

      expect(find.byType(ListView), findsOneWidget);
    });

    testWidgets('render setting list items', (tester) async {
      when(() => themeCubit.state).thenReturn(AppTheme.dark);
      when(() => themeCubit.themeMode).thenReturn(ThemeMode.dark);

      await tester.pumpSettings(themeCubit);
      await tester.pump();

      expect(find.text('Theme'), findsOneWidget);
      expect(find.byIcon(Icons.palette), findsOneWidget);
      expect(find.byIcon(Icons.chevron_right), findsNWidgets(1));
      expect(find.byType(SettingCell), findsNWidgets(1));
    });

    testWidgets('render bottom sheet dialog items', (tester) async {
      when(() => themeCubit.state).thenReturn(AppTheme.dark);
      when(() => themeCubit.themeMode).thenReturn(ThemeMode.dark);

      await tester.pumpSettings(themeCubit);
      await tester.pump();
      await tester.tap(find.byIcon(Icons.palette));
      await tester.pumpAndSettle();

      expect(find.byType(ThemeDialogCell<AppTheme>), findsNWidgets(8));
    });

    testWidgets('render bottom sheet dialog item for system theme',
        (tester) async {
      assertThemeDialogCell(
        tester,
        'System Theme',
        AppTheme.system,
        ThemeMode.system,
      );
    });

    testWidgets('render bottom sheet dialog item for light theme',
        (tester) async {
      assertThemeDialogCell(
        tester,
        'Light Theme',
        AppTheme.light,
        ThemeMode.light,
      );
    });

    testWidgets('render bottom sheet dialog item for dark theme',
        (tester) async {
      assertThemeDialogCell(
        tester,
        'Dark Theme',
        AppTheme.dark,
        ThemeMode.dark,
      );
    });

    testWidgets('render bottom sheet dialog item for yellow theme',
        (tester) async {
      assertThemeDialogCell(
        tester,
        'Light Gold',
        AppTheme.lightGold,
        ThemeMode.light,
      );
    });

    testWidgets('change to light theme theme', (tester) async {
      verifyThemeChange(
        tester: tester,
        widgetTitle: 'Light Theme',
        prevThemeState: AppTheme.dark,
        themeMode: ThemeMode.dark,
        newThemeState: AppTheme.light,
      );
    });

    testWidgets('change to dark theme theme', (tester) async {
      verifyThemeChange(
        tester: tester,
        widgetTitle: 'Dark Theme',
        prevThemeState: AppTheme.light,
        themeMode: ThemeMode.dark,
        newThemeState: AppTheme.dark,
      );
    });

    testWidgets('change to Light Gold theme theme', (tester) async {
      verifyThemeChange(
        tester: tester,
        widgetTitle: 'Light Gold',
        prevThemeState: AppTheme.light,
        themeMode: ThemeMode.dark,
        newThemeState: AppTheme.lightGold,
      );
    });

    testWidgets('change to Light Mint theme theme', (tester) async {
      verifyThemeChange(
        tester: tester,
        widgetTitle: 'Light Mint',
        prevThemeState: AppTheme.light,
        themeMode: ThemeMode.dark,
        newThemeState: AppTheme.lightMint,
      );
    });
  });
}

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_app_template/bloc/theme/app_theme.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart';
import 'package:flutter_bloc_app_template/index.dart';
import 'package:flutter_bloc_app_template/view/settings/settings.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockThemeCubit extends MockCubit<AppTheme> implements ThemeCubit {}

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
          child: const SettingsScreen(),
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

  group('Settings Screen Tests', () {
    testWidgets('renders settings title', (tester) async {
      when(() => themeCubit.state).thenReturn(AppTheme.dark);
      when(() => themeCubit.themeMode).thenReturn(ThemeMode.dark);

      await tester.pumpSettings(themeCubit);
      await tester.pump();

      expect(find.text('Settings'), findsOneWidget);
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

      expect(find.byType(ThemeDialogCell<AppTheme>), findsNWidgets(5));
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
        'Yellow Theme',
        AppTheme.yellow,
        ThemeMode.light,
      );
    });

    testWidgets('change to system theme', (tester) async {
      verifyThemeChange(
        tester: tester,
        widgetTitle: 'System Theme',
        prevThemeState: AppTheme.dark,
        themeMode: ThemeMode.dark,
        newThemeState: AppTheme.system,
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

    testWidgets('change to yellow theme theme', (tester) async {
      verifyThemeChange(
        tester: tester,
        widgetTitle: 'Yellow Theme',
        prevThemeState: AppTheme.light,
        themeMode: ThemeMode.dark,
        newThemeState: AppTheme.yellow,
      );
    });

    testWidgets('change to experimental theme theme', (tester) async {
      verifyThemeChange(
        tester: tester,
        widgetTitle: 'Experimental Theme',
        prevThemeState: AppTheme.light,
        themeMode: ThemeMode.light,
        newThemeState: AppTheme.experimental,
      );
    });
  });
}

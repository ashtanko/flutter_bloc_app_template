import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/bloc/theme/app_theme.dart';
import 'package:flutter_bloc_app_template/bloc/theme/theme_cubit.dart';
import 'package:flutter_bloc_app_template/features/appearance/dark_theme_screen.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../bloc/utils.dart';

class MockThemeCubit extends Mock implements ThemeCubit {}

class MockAppThemeSettings extends Mock implements AppThemeSettings {}

class MockDarkTheme extends Mock implements DarkThemePreference {}

class MockBuildContext extends Mock implements BuildContext {}

void main() {
  late MockThemeCubit mockThemeCubit;
  late MockAppThemeSettings mockThemeSettings;
  late MockDarkTheme mockDarkTheme;

  setUpAll(() {
    registerFallbackValue(AppThemeSettings(
        darkTheme: DarkThemePreference(), appTheme: AppTheme.system));
  });

  setUp(() {
    mockThemeCubit = MockThemeCubit();
    mockThemeSettings = MockAppThemeSettings();
    mockDarkTheme = MockDarkTheme();

    // Setup default mock behaviors
    when(() => mockThemeSettings.darkTheme).thenReturn(mockDarkTheme);
    when(() => mockDarkTheme.darkThemeValue)
        .thenReturn(DarkThemePreference.followSystem);
    when(() => mockDarkTheme.copyWith(
            darkThemeValue: any(named: 'darkThemeValue')))
        .thenReturn(mockDarkTheme);
    when(() => mockThemeSettings.copyWith(darkTheme: any(named: 'darkTheme')))
        .thenReturn(mockThemeSettings);
    when(() => mockThemeCubit.state).thenReturn(mockThemeSettings);
    when(() => mockThemeCubit.stream)
        .thenAnswer((_) => Stream.value(mockThemeSettings));
    when(() => mockThemeCubit.updateTheme(any())).thenReturn(null);
  });

  group('DarkThemeScreen', () {
    testWidgets('renders correctly with all theme options', (tester) async {
      await tester.pumpLocalizedWidgetWithBloc<ThemeCubit>(
        bloc: mockThemeCubit,
        child: const DarkThemeScreen(),
        locale: const Locale('en'),
      );

      await tester.pump();

      // Verify app bar
      expect(find.text('Dark Theme'), findsOneWidget);

      // Verify all radio options are present
      expect(find.text('Dark'), findsOneWidget);
      expect(find.text('Light'), findsOneWidget);
      expect(find.text('System default'), findsOneWidget);

      // Verify radio tiles
      expect(find.byType(RadioListTile<int>), findsNWidgets(3));
    });

    testWidgets('displays correct icons for each theme option', (tester) async {
      await tester.pumpLocalizedWidgetWithBloc<ThemeCubit>(
        bloc: mockThemeCubit,
        child: const DarkThemeScreen(),
        locale: const Locale('en'),
      );

      await tester.pump();

      // Verify icons are present
      expect(find.byIcon(Icons.dark_mode_outlined), findsOneWidget);
      expect(find.byIcon(Icons.light_mode_outlined), findsOneWidget);
      expect(find.byIcon(Icons.settings_outlined), findsOneWidget);
    });

    testWidgets('shows correct selected state for "Light" preference',
        (tester) async {
      await tester.pumpLocalizedWidgetWithBloc<ThemeCubit>(
        bloc: mockThemeCubit,
        child: const DarkThemeScreen(),
        locale: const Locale('en'),
      );

      await tester.pump();

      when(() => mockDarkTheme.darkThemeValue)
          .thenReturn(DarkThemePreference.on);

      // Find the RadioListTile with "On" value
      final radioListTile = tester.widget<RadioListTile<int>>(
        find.byKey(const Key('Light')),
      );

      expect(radioListTile.value, DarkThemePreference.off);
    });

    testWidgets('shows correct selected state for "Off" preference',
        (tester) async {
      await tester.pumpLocalizedWidgetWithBloc<ThemeCubit>(
        bloc: mockThemeCubit,
        child: const DarkThemeScreen(),
        locale: const Locale('en'),
      );

      await tester.pump();

      when(() => mockDarkTheme.darkThemeValue)
          .thenReturn(DarkThemePreference.off);

      final radioListTile = tester.widget<RadioListTile<int>>(
        find.byKey(const Key('Dark')),
      );

      expect(radioListTile.value, DarkThemePreference.on);
    });

    testWidgets('shows correct selected state for "System default" preference',
        (tester) async {
      await tester.pumpLocalizedWidgetWithBloc<ThemeCubit>(
        bloc: mockThemeCubit,
        child: const DarkThemeScreen(),
        locale: const Locale('en'),
      );

      await tester.pump();

      when(() => mockDarkTheme.darkThemeValue)
          .thenReturn(DarkThemePreference.followSystem);

      final radioListTile = tester.widget<RadioListTile<int>>(
        find.byKey(const Key('System default')),
      );

      expect(radioListTile.value, DarkThemePreference.followSystem);
    });

    testWidgets('calls updateTheme when "Light" is selected', (tester) async {
      await tester.pumpLocalizedWidgetWithBloc<ThemeCubit>(
        bloc: mockThemeCubit,
        child: const DarkThemeScreen(),
        locale: const Locale('en'),
      );

      await tester.pump();

      await tester.tap(find.text('Light'));
      await tester.pump();

      verify(() => mockThemeCubit.updateTheme(any())).called(1);
    });

    testWidgets('calls updateTheme when "Off" is selected', (tester) async {
      await tester.pumpLocalizedWidgetWithBloc<ThemeCubit>(
        bloc: mockThemeCubit,
        child: const DarkThemeScreen(),
        locale: const Locale('en'),
      );

      await tester.pump();

      await tester.tap(find.text('Dark'));
      await tester.pump();

      verify(() => mockThemeCubit.updateTheme(any())).called(1);
    });
  });

  group('ThemeIcon', () {
    testWidgets('renders with provided icon', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: ThemeIcon(
              icon: Icons.dark_mode_outlined,
              isSelected: false,
            ),
          ),
        ),
      );

      expect(find.byIcon(Icons.dark_mode_outlined), findsOneWidget);
    });

    testWidgets('animates rotation when selected changes to true',
        (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: ThemeIcon(
              icon: Icons.dark_mode_outlined,
              isSelected: false,
            ),
          ),
        ),
      );

      // Find the AnimatedRotation widget
      var animatedRotation = tester.widget<AnimatedRotation>(
        find.byType(AnimatedRotation),
      );
      expect(animatedRotation.turns, 0);

      // Update to selected
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: ThemeIcon(
              icon: Icons.dark_mode_outlined,
              isSelected: true,
            ),
          ),
        ),
      );

      // Animation should start
      animatedRotation = tester.widget<AnimatedRotation>(
        find.byType(AnimatedRotation),
      );
      expect(animatedRotation.turns, 1);

      // Pump to complete animation
      await tester.pumpAndSettle();
    });

    testWidgets('does not animate when isSelected is false', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: ThemeIcon(
              icon: Icons.dark_mode_outlined,
              isSelected: false,
            ),
          ),
        ),
      );

      var animatedRotation = tester.widget<AnimatedRotation>(
        find.byType(AnimatedRotation),
      );
      expect(animatedRotation.turns, 0);

      // Update icon but keep isSelected false
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: ThemeIcon(
              icon: Icons.light_mode_outlined,
              isSelected: false,
            ),
          ),
        ),
      );

      animatedRotation = tester.widget<AnimatedRotation>(
        find.byType(AnimatedRotation),
      );
      expect(animatedRotation.turns, 0);
    });

    testWidgets('accumulates turns on multiple selections', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: ThemeIcon(
              icon: Icons.dark_mode_outlined,
              isSelected: false,
            ),
          ),
        ),
      );

      // First selection
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: ThemeIcon(
              icon: Icons.dark_mode_outlined,
              isSelected: true,
            ),
          ),
        ),
      );

      var animatedRotation = tester.widget<AnimatedRotation>(
        find.byType(AnimatedRotation),
      );
      expect(animatedRotation.turns, 1);

      // Deselect
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: ThemeIcon(
              icon: Icons.dark_mode_outlined,
              isSelected: false,
            ),
          ),
        ),
      );

      // Second selection
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: ThemeIcon(
              icon: Icons.light_mode_outlined,
              isSelected: true,
            ),
          ),
        ),
      );

      animatedRotation = tester.widget<AnimatedRotation>(
        find.byType(AnimatedRotation),
      );
      expect(animatedRotation.turns, 2);
    });

    testWidgets('animation duration is 600ms', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: ThemeIcon(
              icon: Icons.dark_mode_outlined,
              isSelected: false,
            ),
          ),
        ),
      );

      final animatedRotation = tester.widget<AnimatedRotation>(
        find.byType(AnimatedRotation),
      );

      expect(animatedRotation.duration, const Duration(milliseconds: 600));
    });
  });

  group('DarkThemeScreen.themeIcon', () {
    test('returns correct icon for off preference', () {
      const screen = DarkThemeScreen();
      expect(
          screen.themeIcon(DarkThemePreference.off), Icons.light_mode_outlined);
    });

    test('returns correct icon for on preference', () {
      const screen = DarkThemeScreen();
      expect(
          screen.themeIcon(DarkThemePreference.on), Icons.dark_mode_outlined);
    });

    test('returns correct icon for System default preference', () {
      const screen = DarkThemeScreen();
      expect(screen.themeIcon(DarkThemePreference.followSystem),
          Icons.settings_outlined);
    });

    test('returns settings icon for unknown preference', () {
      const screen = DarkThemeScreen();
      expect(screen.themeIcon(999), Icons.settings_outlined);
    });
  });
}

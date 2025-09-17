import 'package:flutter_bloc_app_template/bloc/theme/app_theme.dart';
import 'package:flutter_bloc_app_template/data/theme_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  group('ThemeStorage', () {
    late ThemeStorage themeStorage;
    late SharedPreferences sharedPreferences;

    setUp(() async {
      SharedPreferences.setMockInitialValues({});
      sharedPreferences = await SharedPreferences.getInstance();
      themeStorage = SharedPreferencesThemeStorage(sharedPreferences);
    });

    group('saveTheme', () {
      test('stores the selected theme index in SharedPreferences', () async {
        final theme = AppTheme.dark;
        await themeStorage.saveTheme(theme);

        final storedIndex = sharedPreferences.getInt('app_theme');
        expect(storedIndex, equals(theme.index));
      });
    });

    group('getTheme', () {
      test('returns the stored theme when available', () async {
        final theme = AppTheme.light;
        await sharedPreferences.setInt('app_theme', theme.index);

        final result = await themeStorage.getTheme();

        expect(result, equals(theme));
      });

      test('returns default theme when no value is stored', () async {
        final result = await themeStorage.getTheme();

        expect(result, equals(AppTheme.light));
      });
    });

    group('saveDarkTheme', () {
      test('stores value when dark theme is set to ON', () async {
        const value = DarkThemePreference.on;
        final pref = DarkThemePreference(darkThemeValue: value);

        await themeStorage.saveDarkTheme(pref);

        expect(sharedPreferences.getInt('dark_theme'), equals(value));
      });

      test('stores value when dark theme is set to OFF', () async {
        const value = DarkThemePreference.off;
        final pref = DarkThemePreference(darkThemeValue: value);

        await themeStorage.saveDarkTheme(pref);

        expect(sharedPreferences.getInt('dark_theme'), equals(value));
      });

      test('stores value when dark theme is set to FOLLOW_SYSTEM', () async {
        const value = DarkThemePreference.followSystem;
        final pref = DarkThemePreference(darkThemeValue: value);

        await themeStorage.saveDarkTheme(pref);

        expect(sharedPreferences.getInt('dark_theme'), equals(value));
      });

      test(
        'saveDarkTheme stores ON value and high contrast mode as enabled',
        () async {
          const darkThemeValue = DarkThemePreference.on;
          const isHighContrastEnabled = true;

          final pref = DarkThemePreference(
            darkThemeValue: darkThemeValue,
            isHighContrastModeEnabled: isHighContrastEnabled,
          );

          await themeStorage.saveDarkTheme(pref);

          expect(
              sharedPreferences.getInt('dark_theme'), equals(darkThemeValue));
          expect(
            sharedPreferences.getBool('is_high_contrast_mode_enabled'),
            equals(isHighContrastEnabled),
          );
        },
      );
    });

    group('getDarkTheme', () {
      setUp(() async {
        SharedPreferences.setMockInitialValues({});
        sharedPreferences = await SharedPreferences.getInstance();
        themeStorage = SharedPreferencesThemeStorage(sharedPreferences);
      });

      test(
        'returns stored dark theme value and high contrast setting',
        () async {
          const expectedThemeValue = DarkThemePreference.on;
          const expectedHighContrast = true;

          await sharedPreferences.setInt('dark_theme', expectedThemeValue);
          await sharedPreferences.setBool(
            'is_high_contrast_mode_enabled',
            expectedHighContrast,
          );

          final result = await themeStorage.getDarkTheme();

          expect(result.darkThemeValue, equals(expectedThemeValue));
          expect(
              result.isHighContrastModeEnabled, equals(expectedHighContrast));
        },
      );

      test(
        'returns default values when nothing is stored',
        () async {
          final result = await themeStorage.getDarkTheme();

          expect(
              result.darkThemeValue, equals(DarkThemePreference.followSystem));
          expect(result.isHighContrastModeEnabled, isFalse);
        },
      );

      test(
        'returns stored dark theme with default high contrast as false',
        () async {
          await sharedPreferences.setInt('dark_theme', DarkThemePreference.off);

          final result = await themeStorage.getDarkTheme();

          expect(result.darkThemeValue, equals(DarkThemePreference.off));
          expect(result.isHighContrastModeEnabled, isFalse);
        },
      );

      test(
        'returns default dark theme with stored high contrast mode',
        () async {
          await sharedPreferences.setBool(
              'is_high_contrast_mode_enabled', true);

          final result = await themeStorage.getDarkTheme();

          expect(
              result.darkThemeValue, equals(DarkThemePreference.followSystem));
          expect(result.isHighContrastModeEnabled, isTrue);
        },
      );
    });
  });
}

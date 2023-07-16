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

    test('saveTheme should store the theme index', () async {
      final theme = AppTheme.dark;

      await themeStorage.saveTheme(theme);

      final storedThemeIndex = sharedPreferences.getInt('app_theme');
      expect(storedThemeIndex, equals(theme.index));
    });

    test('getTheme should return the stored theme', () async {
      final theme = AppTheme.light;
      await sharedPreferences.setInt('app_theme', theme.index);

      final storedTheme = await themeStorage.getTheme();

      expect(storedTheme, equals(theme));
    });

    test('getTheme should return the default theme if no theme is stored',
        () async {
      final defaultTheme = AppTheme.light;

      final storedTheme = await themeStorage.getTheme();

      expect(storedTheme, equals(defaultTheme));
    });
  });
}

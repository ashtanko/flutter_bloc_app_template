import 'package:flutter_bloc_app_template/bloc/theme/app_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class ThemeStorage {
  Future<void> saveTheme(AppTheme theme);

  Future<void> saveDarkTheme(DarkThemePreference pref);

  Future<AppTheme> getTheme();

  Future<DarkThemePreference> getDarkTheme();
}

class SharedPreferencesThemeStorage implements ThemeStorage {
  SharedPreferencesThemeStorage(this.sharedPreferences);

  static const String _themeKey = 'app_theme';
  static const String _darkThemeKey = 'dark_theme';
  static const String _isHighContrastModeEnabledKey =
      'is_high_contrast_mode_enabled';

  final SharedPreferences sharedPreferences;

  @override
  Future<AppTheme> getTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final themeIndex = prefs.getInt(_themeKey) ?? 0;
    return AppTheme.values[themeIndex];
  }

  @override
  Future<void> saveTheme(AppTheme theme) async {
    await sharedPreferences.setInt(_themeKey, theme.index);
  }

  @override
  Future<void> saveDarkTheme(DarkThemePreference pref) async {
    await sharedPreferences.setInt(_darkThemeKey, pref.darkThemeValue);
    await sharedPreferences.setBool(
        _isHighContrastModeEnabledKey, pref.isHighContrastModeEnabled);
  }

  @override
  Future<DarkThemePreference> getDarkTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final darkThemeValue =
        prefs.getInt(_darkThemeKey) ?? DarkThemePreference.followSystem;
    final isHighContrastModeEnabled =
        prefs.getBool(_isHighContrastModeEnabledKey) ?? false;
    return DarkThemePreference(
      darkThemeValue: darkThemeValue,
      isHighContrastModeEnabled: isHighContrastModeEnabled,
    );
  }
}

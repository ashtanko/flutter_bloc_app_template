import 'package:flutter_bloc_app_template/bloc/theme/app_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class ThemeStorage {
  Future<void> saveTheme(AppTheme theme);

  Future<AppTheme> getTheme();
}

class SharedPreferencesThemeStorage implements ThemeStorage {
  SharedPreferencesThemeStorage(this.sharedPreferences);

  static const String _themeKey = 'app_theme';

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
}

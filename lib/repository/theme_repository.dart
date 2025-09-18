import 'package:flutter_bloc_app_template/bloc/theme/app_theme.dart';
import 'package:flutter_bloc_app_template/data/theme_storage.dart';

abstract class ThemeRepository {
  Future<void> saveTheme(AppTheme theme);

  Future<void> saveDarkTheme(DarkThemePreference pref);

  Future<AppThemeSettings> getTheme();

  Future<DarkThemePreference> getDarkTheme();
}

class ThemeRepositoryImpl implements ThemeRepository {
  ThemeRepositoryImpl(this.themeStorage);

  final ThemeStorage themeStorage;

  @override
  Future<void> saveTheme(AppTheme theme) async {
    await themeStorage.saveTheme(theme);
  }

  @override
  Future<AppThemeSettings> getTheme() async {
    final appTheme = await themeStorage.getTheme();
    final darkTheme = await themeStorage.getDarkTheme();
    return AppThemeSettings(
      darkTheme: darkTheme,
      appTheme: appTheme,
    );
  }

  @override
  Future<DarkThemePreference> getDarkTheme() {
    return themeStorage.getDarkTheme();
  }

  @override
  Future<void> saveDarkTheme(DarkThemePreference pref) async {
    await themeStorage.saveDarkTheme(pref);
  }
}

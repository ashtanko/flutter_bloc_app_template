import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/bloc/theme/app_theme.dart';
import 'package:flutter_bloc_app_template/index.dart';
import 'package:flutter_bloc_app_template/repository/theme_repository.dart';

Map<AppTheme, ThemeData> getThemeData(MaterialTheme theme) {
  final themeData = <AppTheme, ThemeData>{
    AppTheme.system: theme.yellowLight(),
    AppTheme.light: theme.yellowLight(),
    AppTheme.lightGold: theme.orangeLight(),
    AppTheme.lightMint: theme.yellowLightMediumContrast(),
    AppTheme.dark: theme.yellowDark(),
    AppTheme.darkGold: theme.orangeDark(),
    AppTheme.darkMint: theme.yellowDarkMediumContrast(),
    AppTheme.experimental: theme.yellowDarkMediumContrast(),
  };

  return themeData;
}

/// Saves and loads information regarding the theme setting.
class ThemeCubit extends Cubit<AppThemeSettings> {
  ThemeCubit(this.themeRepository) : super(defaultTheme);

  final ThemeRepository themeRepository;

  static var defaultTheme = AppThemeSettings(
    darkTheme: DarkThemePreference(
      darkThemeValue: DarkThemePreference.followSystem,
    ),
    appTheme: AppTheme.system,
  );

  Future<void> loadTheme() async {
    final savedTheme = await themeRepository.getTheme();
    emit(savedTheme);
  }

  AppThemeSettings get theme => state;

  set setTheme(AppThemeSettings theme) {
    themeRepository.saveTheme(theme.appTheme);
    emit(theme);
  }

  void updateTheme(AppThemeSettings value) => setTheme = value;

  /// Returns appropriate theme mode
  ThemeMode get themeMode {
    switch (state.darkTheme.darkThemeValue) {
      case DarkThemePreference.on:
        return ThemeMode.dark;
      case DarkThemePreference.off:
        return ThemeMode.light;
      case DarkThemePreference.followSystem:
      default:
        return ThemeMode.system;
    }
  }

  /// Default theme
  ThemeData getDefaultTheme(MaterialTheme theme) {
    final themeData = getThemeData(theme);
    switch (state.appTheme) {
      case AppTheme.light:
        return themeData[AppTheme.light] ?? theme.yellowLight();
      case AppTheme.lightGold:
        return themeData[AppTheme.lightGold] ?? theme.yellowLight();
      case AppTheme.lightMint:
        return themeData[AppTheme.lightMint] ?? theme.yellowLight();
      case AppTheme.dark:
        return themeData[AppTheme.dark] ?? theme.yellowDark();
      case AppTheme.darkGold:
        return themeData[AppTheme.darkGold] ?? theme.yellowDark();
      case AppTheme.darkMint:
        return themeData[AppTheme.darkMint] ?? theme.yellowDark();
      case AppTheme.system:
        return themeData[AppTheme.system] ?? theme.yellowLight();
      case AppTheme.experimental:
        return themeData[AppTheme.experimental] ?? theme.yellowLight();
    }
  }
}

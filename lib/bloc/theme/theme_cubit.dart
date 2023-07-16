import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/bloc/theme/app_theme.dart';
import 'package:flutter_bloc_app_template/index.dart';
import 'package:flutter_bloc_app_template/repository/theme_repository.dart';

final Map<AppTheme, ThemeData> _themeData = {
  AppTheme.light: Style.light,
  AppTheme.dark: Style.dark,
  AppTheme.yellow: Style.yellow,
  AppTheme.experimental: Style.experimental,
};

/// Saves and loads information regarding the theme setting.
class ThemeCubit extends Cubit<AppTheme> {
  ThemeCubit(this.themeRepository) : super(defaultTheme);

  final ThemeRepository themeRepository;

  static const defaultTheme = AppTheme.system;

  Future<void> loadTheme() async {
    final savedTheme = await themeRepository.getTheme();
    emit(savedTheme);
  }

  AppTheme get theme => state;

  set setTheme(AppTheme theme) {
    themeRepository.saveTheme(theme);
    emit(theme);
  }

  void updateTheme(AppTheme value) => setTheme = value;

  /// Returns appropriate theme mode
  ThemeMode get themeMode {
    switch (state) {
      case AppTheme.experimental:
      case AppTheme.light:
      case AppTheme.yellow:
        return ThemeMode.light;
      case AppTheme.dark:
        return ThemeMode.dark;
      default:
        return ThemeMode.system;
    }
  }

  /// Default theme
  ThemeData getDefaultTheme() {
    switch (state) {
      case AppTheme.light:
        return _themeData[AppTheme.light] ?? Style.light;
      case AppTheme.dark:
        return _themeData[AppTheme.dark] ?? Style.dark;
      case AppTheme.yellow:
        return _themeData[AppTheme.yellow] ?? Style.light;
      case AppTheme.system:
        return _themeData[AppTheme.system] ?? Style.light;
      case AppTheme.experimental:
        return _themeData[AppTheme.experimental] ?? Style.light;
    }
  }

  /// Default dark theme
  ThemeData get darkTheme => _themeData[AppTheme.dark] ?? Style.dark;
}

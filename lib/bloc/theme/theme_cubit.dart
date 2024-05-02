import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/bloc/theme/app_theme.dart';
import 'package:flutter_bloc_app_template/index.dart';
import 'package:flutter_bloc_app_template/repository/theme_repository.dart';

final Map<AppTheme, ThemeData> themeData = {
  AppTheme.system: Style.light,
  AppTheme.light: Style.light,
  AppTheme.lightGold: Style.lightGoldTheme,
  AppTheme.lightMint: Style.lightMintTheme,
  AppTheme.dark: Style.dark,
  AppTheme.darkGold: Style.darkGoldTheme,
  AppTheme.darkMint: Style.darkMintTheme,
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
      case AppTheme.lightGold:
      case AppTheme.lightMint:
        return ThemeMode.light;
      case AppTheme.dark:
      case AppTheme.darkGold:
      case AppTheme.darkMint:
        return ThemeMode.dark;
      default:
        return ThemeMode.system;
    }
  }

  /// Default theme
  ThemeData getDefaultTheme() {
    switch (state) {
      case AppTheme.light:
        return themeData[AppTheme.light] ?? Style.light;
      case AppTheme.lightGold:
        return themeData[AppTheme.lightGold] ?? Style.light;
      case AppTheme.lightMint:
        return themeData[AppTheme.lightMint] ?? Style.light;
      case AppTheme.dark:
        return themeData[AppTheme.dark] ?? Style.dark;
      case AppTheme.darkGold:
        return themeData[AppTheme.darkGold] ?? Style.dark;
      case AppTheme.darkMint:
        return themeData[AppTheme.darkMint] ?? Style.dark;
      case AppTheme.system:
        return themeData[AppTheme.system] ?? Style.light;
      case AppTheme.experimental:
        return themeData[AppTheme.experimental] ?? Style.light;
    }
  }

  /// Default dark theme
  ThemeData get darkTheme => themeData[AppTheme.dark] ?? Style.dark;
}

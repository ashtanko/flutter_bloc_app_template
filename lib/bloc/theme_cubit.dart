import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/index.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

enum ThemeState { light, dark, yellow, system, experimental }

final Map<ThemeState, ThemeData> _themeData = {
  ThemeState.light: Style.light,
  ThemeState.dark: Style.dark,
  ThemeState.yellow: Style.yellow,
  ThemeState.experimental: Style.experimental,
};

/// Saves and loads information regarding the theme setting.
@injectable
class ThemeCubit extends HydratedCubit<ThemeState> {
  ThemeCubit() : super(defaultTheme);

  static const defaultTheme = ThemeState.system;

  @override
  ThemeState fromJson(Map<String, dynamic> json) {
    return ThemeState.values[json['value'] as int];
  }

  @override
  Map<String, int> toJson(ThemeState state) {
    return {
      'value': state.index,
    };
  }

  ThemeState get theme => state;

  set theme(ThemeState themeState) => emit(themeState);

  void updateTheme(ThemeState value) => theme = value;

  /// Returns appropriate theme mode
  ThemeMode get themeMode {
    switch (state) {
      case ThemeState.experimental:
      case ThemeState.light:
      case ThemeState.yellow:
        return ThemeMode.light;
      case ThemeState.dark:
        return ThemeMode.dark;
      default:
        return ThemeMode.system;
    }
  }

  /// Default theme
  ThemeData getDefaultTheme() {
    switch (state) {
      case ThemeState.light:
        return _themeData[ThemeState.light] ?? Style.light;
      case ThemeState.dark:
        return _themeData[ThemeState.dark] ?? Style.dark;
      case ThemeState.yellow:
        return _themeData[ThemeState.yellow] ?? Style.light;
      case ThemeState.system:
        return _themeData[ThemeState.system] ?? Style.light;
      case ThemeState.experimental:
        return _themeData[ThemeState.experimental] ?? Style.light;
    }
  }

  /// Default dark theme
  ThemeData get darkTheme => _themeData[ThemeState.dark] ?? Style.dark;
}

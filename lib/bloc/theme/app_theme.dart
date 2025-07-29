import 'package:equatable/equatable.dart';

enum AppTheme {
  light,
  dark,
  lightGold,
  darkGold,
  lightMint,
  darkMint,
  system,
  experimental,
}

class DarkThemePreference extends Equatable {
  DarkThemePreference({
    this.darkThemeValue = followSystem,
    this.isHighContrastModeEnabled = false,
  });

  static const int followSystem = 1;
  static const int on = 2;
  static const int off = 3;

  final int darkThemeValue;
  final bool isHighContrastModeEnabled;

  @override
  List<Object?> get props => [
        darkThemeValue,
        isHighContrastModeEnabled,
      ];

  DarkThemePreference copyWith({
    int? darkThemeValue,
    bool? isHighContrastModeEnabled,
  }) {
    return DarkThemePreference(
      darkThemeValue: darkThemeValue ?? this.darkThemeValue,
      isHighContrastModeEnabled:
          isHighContrastModeEnabled ?? this.isHighContrastModeEnabled,
    );
  }
}

extension DarkThemePreferenceExt on DarkThemePreference {
  bool isDarkTheme() {
    return darkThemeValue == DarkThemePreference.on;
  }
}

class AppThemeSettings extends Equatable {
  AppThemeSettings({
    required this.darkTheme,
    required this.appTheme,
  });

  final DarkThemePreference darkTheme;
  final AppTheme appTheme;

  @override
  List<Object?> get props => [
        darkTheme,
        appTheme,
      ];

  AppThemeSettings copyWith({
    DarkThemePreference? darkTheme,
    AppTheme? appTheme,
  }) {
    return AppThemeSettings(
      darkTheme: darkTheme ?? this.darkTheme,
      appTheme: appTheme ?? this.appTheme,
    );
  }
}

extension AppThemeExtention on AppTheme {
  bool isDarkTheme() {
    return this == AppTheme.dark ||
        this != AppTheme.darkGold ||
        this != AppTheme.darkMint;
  }
}

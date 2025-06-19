import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/theme/brown/brown_theme.dart';
import 'package:flutter_bloc_app_template/theme/extended_color.dart';
import 'package:flutter_bloc_app_template/theme/orange/orange_theme.dart';
import 'package:flutter_bloc_app_template/theme/yellow/yellow_theme.dart';

class MaterialTheme {
  const MaterialTheme(this.textTheme);

  final TextTheme textTheme;

  ThemeData yellowLight() {
    return theme(YellowTheme.yellowLightScheme());
  }

  ThemeData yellowDark() {
    return theme(YellowTheme.yellowDarkScheme());
  }

  ThemeData orangeLight() {
    return theme(OrangeTheme.orangeLightScheme());
  }

  ThemeData orangeDark() {
    return theme(OrangeTheme.orangeDarkScheme());
  }

  ThemeData brownDark() {
    return theme(BrownTheme.darkScheme());
  }

  ThemeData brownLight() {
    return theme(BrownTheme.lightScheme());
  }

  //BrownTheme

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.surface,
        canvasColor: colorScheme.surface,
      );

  List<ExtendedColor> get extendedColors => [];
}

import 'package:flutter/material.dart';

class MaterialTheme {
  const MaterialTheme(this.textTheme);

  final TextTheme textTheme;

  static ColorScheme yellowLightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff6d5e0f),
      surfaceTint: Color(0xff6d5e0f),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xfff8e287),
      onPrimaryContainer: Color(0xff534600),
      secondary: Color(0xff665e40),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffeee2bc),
      onSecondaryContainer: Color(0xff4e472a),
      tertiary: Color(0xff43664e),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffc5ecce),
      onTertiaryContainer: Color(0xff2c4e38),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfffff9ee),
      onSurface: Color(0xff1e1b13),
      onSurfaceVariant: Color(0xff4b4739),
      outline: Color(0xff7c7767),
      outlineVariant: Color(0xffcdc6b4),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff333027),
      inversePrimary: Color(0xffdbc66e),
      primaryFixed: Color(0xfff8e287),
      onPrimaryFixed: Color(0xff221b00),
      primaryFixedDim: Color(0xffdbc66e),
      onPrimaryFixedVariant: Color(0xff534600),
      secondaryFixed: Color(0xffeee2bc),
      onSecondaryFixed: Color(0xff211b04),
      secondaryFixedDim: Color(0xffd1c6a1),
      onSecondaryFixedVariant: Color(0xff4e472a),
      tertiaryFixed: Color(0xffc5ecce),
      onTertiaryFixed: Color(0xff00210f),
      tertiaryFixedDim: Color(0xffa9d0b3),
      onTertiaryFixedVariant: Color(0xff2c4e38),
      surfaceDim: Color(0xffe0d9cc),
      surfaceBright: Color(0xfffff9ee),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffaf3e5),
      surfaceContainer: Color(0xfff4eddf),
      surfaceContainerHigh: Color(0xffeee8da),
      surfaceContainerHighest: Color(0xffe8e2d4),
    );
  }

  ThemeData yellowLight() {
    return theme(yellowLightScheme());
  }

  static ColorScheme yellowLightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff403600),
      surfaceTint: Color(0xff6d5e0f),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff7d6c1e),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff3c361b),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff756d4e),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff1b3d28),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff52755d),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff9ee),
      onSurface: Color(0xff131109),
      onSurfaceVariant: Color(0xff3a3629),
      outline: Color(0xff575244),
      outlineVariant: Color(0xff726d5e),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff333027),
      inversePrimary: Color(0xffdbc66e),
      primaryFixed: Color(0xff7d6c1e),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff635403),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff756d4e),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff5c5537),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff52755d),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff3a5c45),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffccc6b9),
      surfaceBright: Color(0xfffff9ee),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffaf3e5),
      surfaceContainer: Color(0xffeee8da),
      surfaceContainerHigh: Color(0xffe3dccf),
      surfaceContainerHighest: Color(0xffd7d1c4),
    );
  }

  ThemeData yellowLightMediumContrast() {
    return theme(yellowLightMediumContrastScheme());
  }

  static ColorScheme yellowLightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff352c00),
      surfaceTint: Color(0xff6d5e0f),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff564800),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff322c12),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff50492d),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff10321f),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff2e503a),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff600004),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff98000a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff9ee),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff2f2c20),
      outlineVariant: Color(0xff4d493b),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff333027),
      inversePrimary: Color(0xffdbc66e),
      primaryFixed: Color(0xff564800),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff3c3200),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff50492d),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff393318),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff2e503a),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff173925),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffbeb8ab),
      surfaceBright: Color(0xfffff9ee),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff7f0e2),
      surfaceContainer: Color(0xffe8e2d4),
      surfaceContainerHigh: Color(0xffdad4c6),
      surfaceContainerHighest: Color(0xffccc6b9),
    );
  }

  ThemeData yellowLightHighContrast() {
    return theme(yellowLightHighContrastScheme());
  }

  static ColorScheme yellowDarkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffdbc66e),
      surfaceTint: Color(0xffdbc66e),
      onPrimary: Color(0xff3a3000),
      primaryContainer: Color(0xff534600),
      onPrimaryContainer: Color(0xfff8e287),
      secondary: Color(0xffd1c6a1),
      onSecondary: Color(0xff363016),
      secondaryContainer: Color(0xff4e472a),
      onSecondaryContainer: Color(0xffeee2bc),
      tertiary: Color(0xffa9d0b3),
      onTertiary: Color(0xff143723),
      tertiaryContainer: Color(0xff2c4e38),
      onTertiaryContainer: Color(0xffc5ecce),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff15130b),
      onSurface: Color(0xffe8e2d4),
      onSurfaceVariant: Color(0xffcdc6b4),
      outline: Color(0xff969080),
      outlineVariant: Color(0xff4b4739),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe8e2d4),
      inversePrimary: Color(0xff6d5e0f),
      primaryFixed: Color(0xfff8e287),
      onPrimaryFixed: Color(0xff221b00),
      primaryFixedDim: Color(0xffdbc66e),
      onPrimaryFixedVariant: Color(0xff534600),
      secondaryFixed: Color(0xffeee2bc),
      onSecondaryFixed: Color(0xff211b04),
      secondaryFixedDim: Color(0xffd1c6a1),
      onSecondaryFixedVariant: Color(0xff4e472a),
      tertiaryFixed: Color(0xffc5ecce),
      onTertiaryFixed: Color(0xff00210f),
      tertiaryFixedDim: Color(0xffa9d0b3),
      onTertiaryFixedVariant: Color(0xff2c4e38),
      surfaceDim: Color(0xff15130b),
      surfaceBright: Color(0xff3c3930),
      surfaceContainerLowest: Color(0xff100e07),
      surfaceContainerLow: Color(0xff1e1b13),
      surfaceContainer: Color(0xff222017),
      surfaceContainerHigh: Color(0xff2d2a21),
      surfaceContainerHighest: Color(0xff38352b),
    );
  }

  ThemeData yellowDark() {
    return theme(yellowDarkScheme());
  }

  static ColorScheme yellowDarkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfff2dc82),
      surfaceTint: Color(0xffdbc66e),
      onPrimary: Color(0xff2d2500),
      primaryContainer: Color(0xffa3903f),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffe8dcb6),
      onSecondary: Color(0xff2b250c),
      secondaryContainer: Color(0xff9a916f),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffbfe6c8),
      onTertiary: Color(0xff082c18),
      tertiaryContainer: Color(0xff75997f),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffd2cc),
      onError: Color(0xff540003),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff15130b),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffe3dcca),
      outline: Color(0xffb8b1a0),
      outlineVariant: Color(0xff969080),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe8e2d4),
      inversePrimary: Color(0xff554700),
      primaryFixed: Color(0xfff8e287),
      onPrimaryFixed: Color(0xff161100),
      primaryFixedDim: Color(0xffdbc66e),
      onPrimaryFixedVariant: Color(0xff403600),
      secondaryFixed: Color(0xffeee2bc),
      onSecondaryFixed: Color(0xff161100),
      secondaryFixedDim: Color(0xffd1c6a1),
      onSecondaryFixedVariant: Color(0xff3c361b),
      tertiaryFixed: Color(0xffc5ecce),
      onTertiaryFixed: Color(0xff001508),
      tertiaryFixedDim: Color(0xffa9d0b3),
      onTertiaryFixedVariant: Color(0xff1b3d28),
      surfaceDim: Color(0xff15130b),
      surfaceBright: Color(0xff48443a),
      surfaceContainerLowest: Color(0xff090703),
      surfaceContainerLow: Color(0xff201d15),
      surfaceContainer: Color(0xff2a281f),
      surfaceContainerHigh: Color(0xff353229),
      surfaceContainerHighest: Color(0xff413d34),
    );
  }

  ThemeData yellowDarkMediumContrast() {
    return theme(yellowDarkMediumContrastScheme());
  }

  static ColorScheme yellowDarkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffff0ba),
      surfaceTint: Color(0xffdbc66e),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffd7c26b),
      onPrimaryContainer: Color(0xff0f0b00),
      secondary: Color(0xfffcf0c9),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffcdc29e),
      onSecondaryContainer: Color(0xff0f0b00),
      tertiary: Color(0xffd2fadb),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffa5ccaf),
      onTertiaryContainer: Color(0xff000f05),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea4),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff15130b),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xfff7efdd),
      outlineVariant: Color(0xffc9c2b1),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe8e2d4),
      inversePrimary: Color(0xff554700),
      primaryFixed: Color(0xfff8e287),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffdbc66e),
      onPrimaryFixedVariant: Color(0xff161100),
      secondaryFixed: Color(0xffeee2bc),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffd1c6a1),
      onSecondaryFixedVariant: Color(0xff161100),
      tertiaryFixed: Color(0xffc5ecce),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffa9d0b3),
      onTertiaryFixedVariant: Color(0xff001508),
      surfaceDim: Color(0xff15130b),
      surfaceBright: Color(0xff535046),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff222017),
      surfaceContainer: Color(0xff333027),
      surfaceContainerHigh: Color(0xff3e3b32),
      surfaceContainerHighest: Color(0xff4a473d),
    );
  }

  ThemeData yellowDarkHighContrast() {
    return theme(yellowDarkHighContrastScheme());
  }

  static ColorScheme orangeLightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff8f4c38),
      surfaceTint: Color(0xff8f4c38),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffffdbd1),
      onPrimaryContainer: Color(0xff723523),
      secondary: Color(0xff77574e),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffffdbd1),
      onSecondaryContainer: Color(0xff5d4037),
      tertiary: Color(0xff6c5d2f),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xfff5e1a7),
      onTertiaryContainer: Color(0xff534619),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfffff8f6),
      onSurface: Color(0xff231917),
      onSurfaceVariant: Color(0xff53433f),
      outline: Color(0xff85736e),
      outlineVariant: Color(0xffd8c2bc),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff392e2b),
      inversePrimary: Color(0xffffb5a0),
      primaryFixed: Color(0xffffdbd1),
      onPrimaryFixed: Color(0xff3a0b01),
      primaryFixedDim: Color(0xffffb5a0),
      onPrimaryFixedVariant: Color(0xff723523),
      secondaryFixed: Color(0xffffdbd1),
      onSecondaryFixed: Color(0xff2c150f),
      secondaryFixedDim: Color(0xffe7bdb2),
      onSecondaryFixedVariant: Color(0xff5d4037),
      tertiaryFixed: Color(0xfff5e1a7),
      onTertiaryFixed: Color(0xff231b00),
      tertiaryFixedDim: Color(0xffd8c58d),
      onTertiaryFixedVariant: Color(0xff534619),
      surfaceDim: Color(0xffe8d6d2),
      surfaceBright: Color(0xfffff8f6),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff1ed),
      surfaceContainer: Color(0xfffceae5),
      surfaceContainerHigh: Color(0xfff7e4e0),
      surfaceContainerHighest: Color(0xfff1dfda),
    );
  }

  ThemeData orangeLight() {
    return theme(orangeLightScheme());
  }

  static ColorScheme orangeLightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff5d2514),
      surfaceTint: Color(0xff8f4c38),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffa15a45),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff4b2f28),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff87655c),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff41350a),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff7b6c3c),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f6),
      onSurface: Color(0xff180f0d),
      onSurfaceVariant: Color(0xff41332f),
      outline: Color(0xff5f4f4a),
      outlineVariant: Color(0xff7b6964),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff392e2b),
      inversePrimary: Color(0xffffb5a0),
      primaryFixed: Color(0xffa15a45),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff84422f),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff87655c),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff6d4d45),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff7b6c3c),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff615426),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd4c3be),
      surfaceBright: Color(0xfffff8f6),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff1ed),
      surfaceContainer: Color(0xfff7e4e0),
      surfaceContainerHigh: Color(0xffebd9d4),
      surfaceContainerHighest: Color(0xffdfcec9),
    );
  }

  ThemeData orangeLightMediumContrast() {
    return theme(orangeLightMediumContrastScheme());
  }

  static ColorScheme orangeLightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff501b0b),
      surfaceTint: Color(0xff8f4c38),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff753725),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff3f261e),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff60423a),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff362b02),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff55481c),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff600004),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff98000a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f6),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff372925),
      outlineVariant: Color(0xff554641),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff392e2b),
      inversePrimary: Color(0xffffb5a0),
      primaryFixed: Color(0xff753725),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff592111),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff60423a),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff472c24),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff55481c),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff3d3206),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffc6b5b1),
      surfaceBright: Color(0xfffff8f6),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffffede8),
      surfaceContainer: Color(0xfff1dfda),
      surfaceContainerHigh: Color(0xffe2d1cc),
      surfaceContainerHighest: Color(0xffd4c3be),
    );
  }

  ThemeData orangeLightHighContrast() {
    return theme(orangeLightHighContrastScheme());
  }

  static ColorScheme orangeDarkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffb5a0),
      surfaceTint: Color(0xffffb5a0),
      onPrimary: Color(0xff561f0f),
      primaryContainer: Color(0xff723523),
      onPrimaryContainer: Color(0xffffdbd1),
      secondary: Color(0xffe7bdb2),
      onSecondary: Color(0xff442a22),
      secondaryContainer: Color(0xff5d4037),
      onSecondaryContainer: Color(0xffffdbd1),
      tertiary: Color(0xffd8c58d),
      onTertiary: Color(0xff3b2f05),
      tertiaryContainer: Color(0xff534619),
      onTertiaryContainer: Color(0xfff5e1a7),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff1a110f),
      onSurface: Color(0xfff1dfda),
      onSurfaceVariant: Color(0xffd8c2bc),
      outline: Color(0xffa08c87),
      outlineVariant: Color(0xff53433f),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff1dfda),
      inversePrimary: Color(0xff8f4c38),
      primaryFixed: Color(0xffffdbd1),
      onPrimaryFixed: Color(0xff3a0b01),
      primaryFixedDim: Color(0xffffb5a0),
      onPrimaryFixedVariant: Color(0xff723523),
      secondaryFixed: Color(0xffffdbd1),
      onSecondaryFixed: Color(0xff2c150f),
      secondaryFixedDim: Color(0xffe7bdb2),
      onSecondaryFixedVariant: Color(0xff5d4037),
      tertiaryFixed: Color(0xfff5e1a7),
      onTertiaryFixed: Color(0xff231b00),
      tertiaryFixedDim: Color(0xffd8c58d),
      onTertiaryFixedVariant: Color(0xff534619),
      surfaceDim: Color(0xff1a110f),
      surfaceBright: Color(0xff423734),
      surfaceContainerLowest: Color(0xff140c0a),
      surfaceContainerLow: Color(0xff231917),
      surfaceContainer: Color(0xff271d1b),
      surfaceContainerHigh: Color(0xff322825),
      surfaceContainerHighest: Color(0xff3d322f),
    );
  }

  ThemeData orangeDark() {
    return theme(orangeDarkScheme());
  }

  static ColorScheme orangeDarkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffd2c6),
      surfaceTint: Color(0xffffb5a0),
      onPrimary: Color(0xff481506),
      primaryContainer: Color(0xffcb7c65),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffed3c7),
      onSecondary: Color(0xff381f18),
      secondaryContainer: Color(0xffae887e),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffefdba1),
      onTertiary: Color(0xff2f2500),
      tertiaryContainer: Color(0xffa0905c),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffd2cc),
      onError: Color(0xff540003),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff1a110f),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffeed7d1),
      outline: Color(0xffc2ada8),
      outlineVariant: Color(0xffa08c87),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff1dfda),
      inversePrimary: Color(0xff743624),
      primaryFixed: Color(0xffffdbd1),
      onPrimaryFixed: Color(0xff280500),
      primaryFixedDim: Color(0xffffb5a0),
      onPrimaryFixedVariant: Color(0xff5d2514),
      secondaryFixed: Color(0xffffdbd1),
      onSecondaryFixed: Color(0xff200b06),
      secondaryFixedDim: Color(0xffe7bdb2),
      onSecondaryFixedVariant: Color(0xff4b2f28),
      tertiaryFixed: Color(0xfff5e1a7),
      onTertiaryFixed: Color(0xff171100),
      tertiaryFixedDim: Color(0xffd8c58d),
      onTertiaryFixedVariant: Color(0xff41350a),
      surfaceDim: Color(0xff1a110f),
      surfaceBright: Color(0xff4e423f),
      surfaceContainerLowest: Color(0xff0d0604),
      surfaceContainerLow: Color(0xff251b19),
      surfaceContainer: Color(0xff302623),
      surfaceContainerHigh: Color(0xff3b302d),
      surfaceContainerHighest: Color(0xff463b38),
    );
  }

  ThemeData orangeDarkMediumContrast() {
    return theme(orangeDarkMediumContrastScheme());
  }

  static ColorScheme orangeDarkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffece7),
      surfaceTint: Color(0xffffb5a0),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffffaf98),
      onPrimaryContainer: Color(0xff1e0300),
      secondary: Color(0xffffece7),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffe3b9ae),
      onSecondaryContainer: Color(0xff190603),
      tertiary: Color(0xffffefc4),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffd4c289),
      onTertiaryContainer: Color(0xff100b00),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea4),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff1a110f),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xffffece7),
      outlineVariant: Color(0xffd4beb8),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff1dfda),
      inversePrimary: Color(0xff743624),
      primaryFixed: Color(0xffffdbd1),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffffb5a0),
      onPrimaryFixedVariant: Color(0xff280500),
      secondaryFixed: Color(0xffffdbd1),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffe7bdb2),
      onSecondaryFixedVariant: Color(0xff200b06),
      tertiaryFixed: Color(0xfff5e1a7),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffd8c58d),
      onTertiaryFixedVariant: Color(0xff171100),
      surfaceDim: Color(0xff1a110f),
      surfaceBright: Color(0xff5a4d4a),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff271d1b),
      surfaceContainer: Color(0xff392e2b),
      surfaceContainerHigh: Color(0xff443936),
      surfaceContainerHighest: Color(0xff504441),
    );
  }

  ThemeData orangeDarkHighContrast() {
    return theme(orangeDarkHighContrastScheme());
  }

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

class ExtendedColor {
  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });

  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc_app_template/constants/index.dart';
import 'package:flutter_bloc_app_template/generated/colors.gen.dart';
import 'package:google_fonts/google_fonts.dart';

/// Class that contains all the different styles of an app
class Style {
  /// Custom page transitions
  static const _pageTransitionsTheme = PageTransitionsTheme(
    builders: {
      TargetPlatform.android: ZoomPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    },
  );

  static TextStyle get elevatedButtonTextStyleDark {
    return const TextStyle(
      fontSize: 14,
      color: Colors.black,
    );
  }

  // ignore: unused_element
  static ElevatedButtonThemeData get _customElevatedButtonTheme {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF57FFAD),
        //onPrimary: Colors.green,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        textStyle: elevatedButtonTextStyleDark,
        shadowColor: Colors.transparent,
        elevation: 0,
      ),
    );
  }

  // ignore: unused_element
  static OutlinedButtonThemeData get _customOutlinedButtonTheme {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(
          color: Colors.transparent,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        elevation: 0,
        textStyle: const TextStyle(fontSize: 16),
      ),
    );
  }

  // ignore: unused_element
  static TextButtonThemeData get _customTextButtonTheme {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: const TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 13.0,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }

  // ignore: unused_element
  static InputDecorationTheme get _inputDecorationTheme {
    return InputDecorationTheme(
      prefixIconColor: const Color(0xff999999),
      suffixIconColor: const Color(0xff00a468),
      fillColor: const Color(0xffF8F8F8),
      filled: true,
      isDense: true,
      contentPadding: const EdgeInsets.all(16),
      hoverColor: Colors.blue.shade100,
      enabledBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
        borderSide: BorderSide(
          width: 0,
          style: BorderStyle.none,
          color: Colors.transparent,
        ),
      ),
      focusedBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
        borderSide: BorderSide(
          width: 0,
          style: BorderStyle.none,
          color: Colors.transparent,
        ),
      ),
      hintStyle: TextStyle(
        fontFamily: GoogleFonts.roboto().fontFamily,
        fontWeight: FontWeight.w300,
        fontSize: 14.0,
        color: const Color(0xff999999),
      ),
    );
  }

  /// Yellow style
  static ThemeData get experimental {
    const darkColorScheme = ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xFF66DBB2),
      onPrimary: Color(0xFF003829),
      primaryContainer: Color(0xFF00513C),
      onPrimaryContainer: Color(0xFF83F8CD),
      secondary: Color(0xFF51DBCD),
      onSecondary: Color(0xFF003733),
      secondaryContainer: Color(0xFF00504A),
      onSecondaryContainer: Color(0xFF72F7E9),
      tertiary: Color(0xFFA7CCE0),
      onTertiary: Color(0xFF0A3445),
      tertiaryContainer: Color(0xFF264B5C),
      onTertiaryContainer: Color(0xFFC2E8FD),
      error: Color(0xFFFFB4AB),
      errorContainer: Color(0xFF93000A),
      onError: Color(0xFF690005),
      onErrorContainer: Color(0xFFFFDAD6),
      surface: Color(0xFF191C1A),
      onSurface: Color(0xFFE1E3E0),
      surfaceContainerHighest: Color(0xFF404944),
      onSurfaceVariant: Color(0xFFBFC9C2),
      outline: Color(0xFF89938D),
      onInverseSurface: Color(0xFF191C1A),
      inverseSurface: Color(0xFFE1E3E0),
      inversePrimary: Color(0xFF006C51),
      shadow: Color(0xFF000000),
      surfaceTint: Color(0xFF66DBB2),
      outlineVariant: Color(0xFF404944),
      scrim: Color(0xFF000000),
    );

    return ThemeData(useMaterial3: true, colorScheme: darkColorScheme);
  }

  static ThemeData get lightGoldTheme {
    const lightColorScheme = ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFF8F4E00),
      onPrimary: Color(0xFFFFFFFF),
      primaryContainer: Color(0xFFFFDCC1),
      onPrimaryContainer: Color(0xFF2E1500),
      secondary: Color(0xFF745943),
      onSecondary: Color(0xFFFFFFFF),
      secondaryContainer: Color(0xFFFFDCC1),
      onSecondaryContainer: Color(0xFF2A1707),
      tertiary: Color(0xFF5B6237),
      onTertiary: Color(0xFFFFFFFF),
      tertiaryContainer: Color(0xFFDFE7B1),
      onTertiaryContainer: Color(0xFF181E00),
      error: Color(0xFFBA1A1A),
      errorContainer: Color(0xFFFFDAD6),
      onError: Color(0xFFFFFFFF),
      onErrorContainer: Color(0xFF410002),
      surface: Color(0xFFFFFBFF),
      onSurface: Color(0xFF201B17),
      surfaceContainerHighest: Color(0xFFF3DFD1),
      onSurfaceVariant: Color(0xFF51443B),
      outline: Color(0xFF837469),
      onInverseSurface: Color(0xFFFAEFE8),
      inverseSurface: Color(0xFF352F2B),
      inversePrimary: Color(0xFFFFB779),
      shadow: Color(0xFF000000),
      surfaceTint: Color(0xFF8F4E00),
      outlineVariant: Color(0xFFD6C3B6),
      scrim: Color(0xFF000000),
    );

    return ThemeData(useMaterial3: true, colorScheme: lightColorScheme);
  }

  static ThemeData get darkGoldTheme {
    const lightColorScheme = ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFF8F4E00),
      onPrimary: Color(0xFFFFFFFF),
      primaryContainer: Color(0xFFFFDCC1),
      onPrimaryContainer: Color(0xFF2E1500),
      secondary: Color(0xFF745943),
      onSecondary: Color(0xFFFFFFFF),
      secondaryContainer: Color(0xFFFFDCC1),
      onSecondaryContainer: Color(0xFF2A1707),
      tertiary: Color(0xFF5B6237),
      onTertiary: Color(0xFFFFFFFF),
      tertiaryContainer: Color(0xFFDFE7B1),
      onTertiaryContainer: Color(0xFF181E00),
      error: Color(0xFFBA1A1A),
      errorContainer: Color(0xFFFFDAD6),
      onError: Color(0xFFFFFFFF),
      onErrorContainer: Color(0xFF410002),
      surface: Color(0xFFFFFBFF),
      onSurface: Color(0xFF201B17),
      surfaceContainerHighest: Color(0xFFF3DFD1),
      onSurfaceVariant: Color(0xFF51443B),
      outline: Color(0xFF837469),
      onInverseSurface: Color(0xFFFAEFE8),
      inverseSurface: Color(0xFF352F2B),
      inversePrimary: Color(0xFFFFB779),
      shadow: Color(0xFF000000),
      surfaceTint: Color(0xFF8F4E00),
      outlineVariant: Color(0xFFD6C3B6),
      scrim: Color(0xFF000000),
    );

    return ThemeData(useMaterial3: true, colorScheme: lightColorScheme);
  }

  static ThemeData get lightMintTheme {
    const lightColorScheme = ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFF006B55),
      onPrimary: Color(0xFFFFFFFF),
      primaryContainer: Color(0xFF7FF8D3),
      onPrimaryContainer: Color(0xFF002018),
      secondary: Color(0xFF4B635A),
      onSecondary: Color(0xFFFFFFFF),
      secondaryContainer: Color(0xFFCEE9DD),
      onSecondaryContainer: Color(0xFF072019),
      tertiary: Color(0xFF406376),
      onTertiary: Color(0xFFFFFFFF),
      tertiaryContainer: Color(0xFFC4E7FF),
      onTertiaryContainer: Color(0xFF001E2C),
      error: Color(0xFFBA1A1A),
      errorContainer: Color(0xFFFFDAD6),
      onError: Color(0xFFFFFFFF),
      onErrorContainer: Color(0xFF410002),
      surface: Color(0xFFFBFDFA),
      onSurface: Color(0xFF191C1B),
      surfaceContainerHighest: Color(0xFFDBE5DF),
      onSurfaceVariant: Color(0xFF3F4945),
      outline: Color(0xFF6F7975),
      onInverseSurface: Color(0xFFEFF1EE),
      inverseSurface: Color(0xFF2E312F),
      inversePrimary: Color(0xFF60DBB8),
      shadow: Color(0xFF000000),
      surfaceTint: Color(0xFF006B55),
      outlineVariant: Color(0xFFBFC9C3),
      scrim: Color(0xFF000000),
    );

    return ThemeData(useMaterial3: true, colorScheme: lightColorScheme);
  }

  static ThemeData get darkMintTheme {
    const darkColorScheme = ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xFF60DBB8),
      onPrimary: Color(0xFF00382B),
      primaryContainer: Color(0xFF005140),
      onPrimaryContainer: Color(0xFF7FF8D3),
      secondary: Color(0xFFB2CCC1),
      onSecondary: Color(0xFF1E352D),
      secondaryContainer: Color(0xFF344C43),
      onSecondaryContainer: Color(0xFFCEE9DD),
      tertiary: Color(0xFFA8CBE2),
      onTertiary: Color(0xFF0D3446),
      tertiaryContainer: Color(0xFF284B5D),
      onTertiaryContainer: Color(0xFFC4E7FF),
      error: Color(0xFFFFB4AB),
      errorContainer: Color(0xFF93000A),
      onError: Color(0xFF690005),
      onErrorContainer: Color(0xFFFFDAD6),
      surface: Color(0xFF191C1B),
      onSurface: Color(0xFFE1E3E0),
      surfaceContainerHighest: Color(0xFF3F4945),
      onSurfaceVariant: Color(0xFFBFC9C3),
      outline: Color(0xFF89938E),
      onInverseSurface: Color(0xFF191C1B),
      inverseSurface: Color(0xFFE1E3E0),
      inversePrimary: Color(0xFF006B55),
      shadow: Color(0xFF000000),
      surfaceTint: Color(0xFF60DBB8),
      outlineVariant: Color(0xFF3F4945),
      scrim: Color(0xFF000000),
    );
    return ThemeData(useMaterial3: true, colorScheme: darkColorScheme);
  }

  /// Light style
  static ThemeData get light {
    final base = ThemeData.light();

    final textTheme = _buildTextTheme(base);

    return base.copyWith(
      brightness: Brightness.light,
      appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
        ),
      ),
      colorScheme: const ColorScheme.light().copyWith(
        primary: ColorName.accentLight,
        secondary: ColorName.accentLight,
        onSecondary: Colors.white,
      ),
      primaryColor: ColorName.primaryLight,
      scaffoldBackgroundColor: ColorName.backgroundLight,
      dividerColor: ColorName.dividerLight,
      pageTransitionsTheme: _pageTransitionsTheme,
      textTheme: GoogleFonts.robotoTextTheme(textTheme),
      popupMenuTheme: _buildPopupMenuThemeData(),
    );
  }

  /// Dark style
  static ThemeData get dark {
    final base = ThemeData.dark();
    final textTheme = _buildTextTheme(base);

    return base.copyWith(
      brightness: Brightness.dark,
      colorScheme: const ColorScheme.dark().copyWith(
        primary: ColorName.accentDark,
        secondary: ColorName.accentDark,
      ),
      primaryColor: ColorName.primaryDark,
      canvasColor: ColorName.canvasDark,
      scaffoldBackgroundColor: ColorName.backgroundDark,
      cardColor: ColorName.cardDark,
      dividerColor: ColorName.dividerDark,
      dialogTheme: const DialogTheme(
        backgroundColor: ColorName.cardDark,
      ),
      pageTransitionsTheme: _pageTransitionsTheme,
      textTheme: GoogleFonts.robotoTextTheme(textTheme),
      popupMenuTheme: _buildPopupMenuThemeData(),
    );
  }

  static PopupMenuThemeData _buildPopupMenuThemeData() {
    return PopupMenuThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(RadiusSize.popupMenuBorderRadius),
      ),
    );
  }

  static TextTheme _buildTextTheme(ThemeData base) {
    final textTheme = base.textTheme;

    return textTheme.copyWith(
      displayLarge: textTheme.displayLarge?.copyWith(
        fontSize: FontSizes.headline1,
      ),
      displaySmall:
          textTheme.displaySmall?.copyWith(fontSize: FontSizes.headline2),
      headlineMedium:
          textTheme.headlineMedium?.copyWith(fontSize: FontSizes.headline3),
      headlineSmall:
          textTheme.headlineSmall?.copyWith(fontSize: FontSizes.headline4),
      titleLarge: textTheme.titleLarge?.copyWith(fontSize: FontSizes.headline5),
      titleMedium:
          textTheme.titleMedium?.copyWith(fontSize: FontSizes.headline6),
    );
  }
}

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

  ThemeData light() {
    return theme(yellowLightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
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

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
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

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
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

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
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

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
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

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
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

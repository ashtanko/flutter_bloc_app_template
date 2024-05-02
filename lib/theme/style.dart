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
      background: Color(0xFF191C1A),
      onBackground: Color(0xFFE1E3E0),
      surface: Color(0xFF191C1A),
      onSurface: Color(0xFFE1E3E0),
      surfaceVariant: Color(0xFF404944),
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
      background: Color(0xFFFFFBFF),
      onBackground: Color(0xFF201B17),
      surface: Color(0xFFFFFBFF),
      onSurface: Color(0xFF201B17),
      surfaceVariant: Color(0xFFF3DFD1),
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
      background: Color(0xFFFFFBFF),
      onBackground: Color(0xFF201B17),
      surface: Color(0xFFFFFBFF),
      onSurface: Color(0xFF201B17),
      surfaceVariant: Color(0xFFF3DFD1),
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
      background: Color(0xFFFBFDFA),
      onBackground: Color(0xFF191C1B),
      surface: Color(0xFFFBFDFA),
      onSurface: Color(0xFF191C1B),
      surfaceVariant: Color(0xFFDBE5DF),
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
      background: Color(0xFF191C1B),
      onBackground: Color(0xFFE1E3E0),
      surface: Color(0xFF191C1B),
      onSurface: Color(0xFFE1E3E0),
      surfaceVariant: Color(0xFF3F4945),
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

    darkColorScheme.copyWith(
      
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
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
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
      dialogBackgroundColor: ColorName.cardDark,
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
      displayLarge:
          textTheme.displayLarge?.copyWith(fontSize: FontSizes.headline1),
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

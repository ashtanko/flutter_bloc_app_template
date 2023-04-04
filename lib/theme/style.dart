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
    final base = ThemeData.light();

    final textTheme = _buildTextTheme(base);

    return base.copyWith(
      brightness: Brightness.light,
      appBarTheme: AppBarTheme(
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
        titleTextStyle: textTheme.titleSmall,
        actionsIconTheme: const IconThemeData(size: 56.0, color: Colors.red),
      ),
      colorScheme: const ColorScheme.light().copyWith(
        primary: ColorName.accentExperimental,
        secondary: ColorName.accentExperimental,
        onSecondary: Colors.white,
      ),
      primaryColor: ColorName.primaryExperimental,
      scaffoldBackgroundColor: ColorName.backgroundExperimental,
      dividerColor: ColorName.dividerLight,
      pageTransitionsTheme: _pageTransitionsTheme,
      textTheme: GoogleFonts.robotoTextTheme(textTheme),
      popupMenuTheme: _buildPopupMenuThemeData(),
      elevatedButtonTheme: _customElevatedButtonTheme,
      outlinedButtonTheme: _customOutlinedButtonTheme,
      textButtonTheme: _customTextButtonTheme,
      inputDecorationTheme: _inputDecorationTheme,
    );
  }

  /// Yellow style
  static ThemeData get yellow {
    final base = ThemeData.light();

    final textTheme = _buildTextTheme(base);

    return base.copyWith(
      brightness: Brightness.light,
      appBarTheme: const AppBarTheme(
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
      ),
      colorScheme: const ColorScheme.light().copyWith(
        primary: ColorName.accentYellow,
        secondary: ColorName.accentYellow,
        onSecondary: Colors.white,
      ),
      primaryColor: ColorName.primaryYellow,
      scaffoldBackgroundColor: ColorName.backgroundYellow,
      dividerColor: ColorName.dividerLight,
      pageTransitionsTheme: _pageTransitionsTheme,
      textTheme: GoogleFonts.robotoTextTheme(textTheme),
      popupMenuTheme: _buildPopupMenuThemeData(),
    );
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

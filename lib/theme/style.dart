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

  static ElevatedButtonThemeData get _customElevatedButtonTheme {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        textStyle: const TextStyle(fontSize: 20),
        shadowColor: Colors.red,
        elevation: 20,
      ),
    );
  }

  static OutlinedButtonThemeData get _customOutlinedButtonTheme {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(
          color: Color(0xff00a468),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        elevation: 25,
        textStyle: const TextStyle(fontSize: 20),
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
      headline1: textTheme.headline1?.copyWith(fontSize: FontSizes.headline1),
      headline2: textTheme.headline2?.copyWith(fontSize: FontSizes.headline2),
      headline3: textTheme.headline3?.copyWith(fontSize: FontSizes.headline3),
      headline4: textTheme.headline4?.copyWith(fontSize: FontSizes.headline4),
      headline5: textTheme.headline5?.copyWith(fontSize: FontSizes.headline5),
      headline6: textTheme.headline6?.copyWith(fontSize: FontSizes.headline6),
    );
  }
}

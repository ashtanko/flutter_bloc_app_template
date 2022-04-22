import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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

  /// Yellow style
  static ThemeData get yellow {
    final base = ThemeData.light();

    final textTheme = _buildTextTheme(base);

    return base.copyWith(
      brightness: Brightness.light,
      appBarTheme: const AppBarTheme(
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
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
      popupMenuTheme: PopupMenuThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
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
      popupMenuTheme: PopupMenuThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
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
      popupMenuTheme: PopupMenuThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
    );
  }

  static TextTheme _buildTextTheme(ThemeData base) {
    final textTheme = base.textTheme;

    return textTheme.copyWith(
      headline1: textTheme.headline1?.copyWith(fontSize: 90.0),
      headline2: textTheme.headline2?.copyWith(fontSize: 60.0),
      headline3: textTheme.headline3?.copyWith(fontSize: 48.0),
      headline4: textTheme.headline4?.copyWith(fontSize: 34.0),
      headline5: textTheme.headline5?.copyWith(fontSize: 24.0),
      headline6: textTheme.headline6?.copyWith(fontSize: 20.0),
    );
  }
}

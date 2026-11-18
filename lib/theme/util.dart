import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const _defaultFontName = 'Rubik';

/// Builds the app [TextTheme] from the current theme, using [bodyFontString]
/// for body/label styles and [displayFontString] for display, headline and
/// title styles.
///
/// Styles are mapped one by one with [GoogleFonts.getFont] because
/// google_fonts 9 returns `material_ui` text themes, which are not
/// interchangeable with `package:flutter/material.dart`'s [TextTheme].
TextTheme createTextTheme({
  required BuildContext context,
  String bodyFontString = _defaultFontName,
  String displayFontString = _defaultFontName,
}) {
  final base = Theme.of(context).textTheme;

  TextStyle? body(TextStyle? style) => style == null
      ? null
      : GoogleFonts.getFont(bodyFontString, textStyle: style);

  TextStyle? display(TextStyle? style) => style == null
      ? null
      : GoogleFonts.getFont(displayFontString, textStyle: style);

  return base.copyWith(
    displayLarge: display(base.displayLarge),
    displayMedium: display(base.displayMedium),
    displaySmall: display(base.displaySmall),
    headlineLarge: display(base.headlineLarge),
    headlineMedium: display(base.headlineMedium),
    headlineSmall: display(base.headlineSmall),
    titleLarge: display(base.titleLarge),
    titleMedium: display(base.titleMedium),
    titleSmall: display(base.titleSmall),
    bodyLarge: body(base.bodyLarge),
    bodyMedium: body(base.bodyMedium),
    bodySmall: body(base.bodySmall),
    labelLarge: body(base.labelLarge),
    labelMedium: body(base.labelMedium),
    labelSmall: body(base.labelSmall),
  );
}

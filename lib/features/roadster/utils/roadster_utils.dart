import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension NumberFormatterEXt on double {
  String formatSpeed() {
    final formatter = NumberFormat('#,##0.00', 'en_US');
    return formatter.format(this);
  }

  String formatPeriod() {
    final formatter = NumberFormat('0.0', 'en_US');
    return formatter.format(this);
  }
}

extension RoadsterStringExt on String {
  String toFormattedDate({String locale = 'en_US'}) {
    try {
      final dateTime = DateTime.parse(this).toLocal();
      final formatter = DateFormat.yMMMd(locale);
      return formatter.format(dateTime);
    } catch (e) {
      return this; // fallback if parsing fails
    }
  }

  List<Text> toSplitTextWidgets({
    TextStyle? firstLineStyle,
    TextStyle? secondLineStyle,
    String delimiter = "'s ",
    String? suffixForFirstLine, // defaults to delimiter trimmed
  }) {
    final idx = indexOf(delimiter);
    if (idx < 0) {
      return [
        Text(
          this,
          style: secondLineStyle ?? const TextStyle(),
        ),
      ];
    }

    final first = substring(0, idx);
    final rest = substring(idx + delimiter.length);
    final suffix = suffixForFirstLine ?? delimiter.trimRight();

    return [
      Text(
        '$first$suffix',
        style: firstLineStyle ??
            const TextStyle(
              color: Colors.white70,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
      ),
      Text(
        rest,
        style: secondLineStyle ??
            const TextStyle(
              color: Colors.white,
              fontSize: 36,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
            ),
      ),
    ];
  }
}

extension DoublRoadsterExtension on double {
  /// Converts a double to a formatted string in Astronomical Units (AU)
  /// Example: 1.664332332453025 -> "1.664 AU"
  String toAuString({int fractionDigits = 3}) {
    return '${toStringAsFixed(fractionDigits)} AU';
  }

  /// Converts a double to a string with fixed decimal places
  /// Example: 0.2559348215918733 -> "0.256"
  String toFixedString({int fractionDigits = 3}) {
    return toStringAsFixed(fractionDigits);
  }

  /// Converts a double to degrees with a ° suffix
  /// Example: 1.075052357364693 -> "1.075°"
  /// Example: 316.9112133411523 -> "316.91°"
  String toDegreeString({int fractionDigits = 2}) {
    return '${toStringAsFixed(fractionDigits)}°';
  }
}

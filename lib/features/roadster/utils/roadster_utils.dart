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
  }) {
    final parts = split(delimiter);
    if (parts.length < 2) {
      return [
        Text(
          this,
          style: secondLineStyle ?? const TextStyle(),
        ),
      ];
    }
    return [
      Text(
        "${parts[0]}'s",
        style: firstLineStyle ??
            const TextStyle(
              color: Colors.white70,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
      ),
      Text(
        parts[1],
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

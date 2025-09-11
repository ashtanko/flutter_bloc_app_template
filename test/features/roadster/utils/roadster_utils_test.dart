import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/features/roadster/utils/roadster_utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('NumberFormatter', () {
    test('formats speed_kph correctly', () {
      var speed = 9520.88362029108;
      final formatted = speed.formatSpeed();
      expect(formatted, '9,520.88');
    });

    test('formats period_days correctly', () {
      var period = 557.1958197697352;
      final formatted = period.formatPeriod();
      expect(formatted, '557.2');
    });

    test('formats zero correctly', () {
      expect(0.0.formatSpeed(), '0.00');
      expect(0.0.formatPeriod(), '0.0');
    });

    test('formats large numbers correctly', () {
      var speed = 12345678.9012;
      final formatted = speed.formatSpeed();
      expect(formatted, '12,345,678.90');
    });

    test('formats negative numbers correctly', () {
      var speed = -9876.54321;
      final formatted = speed.formatSpeed();
      expect(formatted, '-9,876.54');
    });
  });

  group('DateFormatting extension', () {
    test('converts valid UTC date string to formatted date', () {
      const utcDate = '2018-02-06T20:45:00.000Z';
      final formatted = utcDate.toFormattedDate();
      expect(formatted, 'Feb 6, 2018');
    });

    test('returns original string if invalid date', () {
      const invalidDate = 'not-a-date';
      final formatted = invalidDate.toFormattedDate();
      expect(formatted, invalidDate);
    });

    test('converts another valid UTC date', () {
      const utcDate = '2025-09-10T01:23:45.000Z';
      final formatted = utcDate.toFormattedDate();
      expect(formatted, 'Sep 10, 2025');
    });
  });

  group('TextSplitExt', () {
    test('splits string with apostrophe correctly', () {
      const input = "Elon Musk's Tesla Roadster";
      final widgets = input.toSplitTextWidgets();

      expect(widgets.length, 2);

      final firstLine = widgets[0];
      final secondLine = widgets[1];

      expect(firstLine.data, "Elon Musk's");
      expect(secondLine.data, 'Tesla Roadster');

      expect(firstLine.style?.color, Colors.white70);
      expect(secondLine.style?.color, Colors.white);
      expect(secondLine.style?.fontSize, 36);
    });

    test('returns single Text if delimiter not found', () {
      const input = 'JustOneLine';
      final widgets = input.toSplitTextWidgets();

      expect(widgets.length, 1);

      final onlyLine = widgets[0];
      expect(onlyLine.data, 'JustOneLine');
    });

    test('works with custom styles', () {
      const input = "John Doe's SuperCar";
      final widgets = input.toSplitTextWidgets(
        firstLineStyle: const TextStyle(color: Colors.red),
        secondLineStyle: const TextStyle(color: Colors.green),
      );

      expect((widgets[0]).style?.color, Colors.red);
      expect((widgets[1]).style?.color, Colors.green);
    });
  });

  group('DoublRoadsterExtension:toAuString', () {
    test('formats to 3 decimals by default', () {
      const value = 1.664332332453025;
      expect(value.toAuString(), '1.664 AU');
    });

    test('rounds correctly with 2 decimals', () {
      const value = 1.664332332453025;
      expect(value.toAuString(fractionDigits: 2), '1.66 AU');
    });

    test('rounds correctly with 5 decimals', () {
      const value = 1.664332332453025;
      expect(value.toAuString(fractionDigits: 5), '1.66433 AU');
    });

    test('preserves trailing zeros', () {
      const value = 2.5;
      expect(value.toAuString(), '2.500 AU');
    });

    test('works with negative numbers', () {
      const value = -0.98765;
      expect(value.toAuString(fractionDigits: 3), '-0.988 AU');
    });
  });

  group('DoublRoadsterExtension:toFixedString', () {
    test('toAuString default 3 decimals', () {
      const value = 1.664332332453025;
      expect(value.toAuString(), '1.664 AU');
    });

    test('toAuString custom decimals', () {
      const value = 1.664332332453025;
      expect(value.toAuString(fractionDigits: 2), '1.66 AU');
    });

    test('toFixedString default 3 decimals', () {
      const value = 0.2559348215918733;
      expect(value.toFixedString(), '0.256');
    });

    test('toFixedString custom decimals', () {
      const value = 0.2559348215918733;
      expect(value.toFixedString(fractionDigits: 5), '0.25593');
    });

    test('toFixedString preserves trailing zeros', () {
      const value = 2.5;
      expect(value.toFixedString(), '2.500');
    });

    test('toFixedString works with negative numbers', () {
      const value = -0.98765;
      expect(value.toFixedString(fractionDigits: 2), '-0.99');
    });
  });

  group('DoublRoadsterExtension:toDegreeString', () {
    test('toDegreeString default 2 decimals', () {
      const value = 316.9112133411523;
      expect(value.toDegreeString(), '316.91°');
    });

    test('toDegreeString with 3 decimals', () {
      const value = 1.075052357364693;
      expect(value.toDegreeString(fractionDigits: 3), '1.075°');
    });

    test('toDegreeString preserves trailing zeros', () {
      const value = 45.5;
      expect(value.toDegreeString(fractionDigits: 2), '45.50°');
    });

    test('toDegreeString works with negative values', () {
      const value = -12.3456;
      expect(value.toDegreeString(fractionDigits: 1), '-12.3°');
    });
  });
}

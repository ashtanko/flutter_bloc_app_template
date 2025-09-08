import 'package:flutter_bloc_app_template/utils/rocket_utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('RocketUtils.toTonsString', () {
    const tonsLabel = 'tons';

    test('converts kg to tons with default fractionDigits', () {
      expect(1000.toTonsString(tonsLabel), '1 tons');
      expect(1500.toTonsString(tonsLabel), '2 tons'); // rounds up
      expect(0.toTonsString(tonsLabel), '0 tons');
    });

    test('converts kg to tons with fractionDigits = 1', () {
      expect(1500.toTonsString(tonsLabel, fractionDigits: 1), '1.5 tons');
      expect(1234.toTonsString(tonsLabel, fractionDigits: 1), '1.2 tons');
    });

    test('converts kg to tons with fractionDigits = 2', () {
      expect(1234.toTonsString(tonsLabel, fractionDigits: 2), '1.23 tons');
      expect(1500.toTonsString(tonsLabel, fractionDigits: 2), '1.50 tons');
    });

    test('handles null value as 0', () {
      num? nullValue;
      expect(nullValue.toTonsString(tonsLabel), '0 tons');
      expect(nullValue.toTonsString(tonsLabel, fractionDigits: 2), '0.00 tons');
    });

    test('handles very large numbers', () {
      expect(1e6.toTonsString(tonsLabel), '1000 tons');
      expect(2.5e6.toTonsString(tonsLabel, fractionDigits: 1), '2500.0 tons');
    });
  });
}

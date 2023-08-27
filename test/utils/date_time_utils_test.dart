import 'package:flutter_bloc_app_template/utils/date_time_utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DateFormatExtension Tests', () {
    test('Formatting DateTime for September 7', () {
      final dateTime = DateTime(2023, 9, 7);
      final formattedString = dateTime.toFormattedString();
      expect(formattedString, 'Sep 07');
    });

    test('Formatting DateTime for February 1', () {
      final dateTime = DateTime(2023, 2, 1);
      final formattedString = dateTime.toFormattedString();
      expect(formattedString, 'Feb 01');
    });

    test('Formatting DateTime for November 25', () {
      final dateTime = DateTime(2023, 11, 25);
      final formattedString = dateTime.toFormattedString();
      expect(formattedString, 'Nov 25');
    });
  });
}

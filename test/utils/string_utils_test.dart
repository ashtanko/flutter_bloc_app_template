import 'package:flutter_bloc_app_template/utils/string_utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DateFormatExtension Tests', () {
    test('Formatting non-empty name', () {
      final formattedName = 'John Doe'.getFormattedName();
      expect(formattedName, 'JD');
    });

    test('Formatting single-word name', () {
      final formattedName = 'Alice'.getFormattedName();
      expect(formattedName, 'A');
    });

    test('Formatting empty name', () {
      final formattedName = ''.getFormattedName();
      expect(formattedName, 'N/A');
    });

    test('Formatting name with extra spaces', () {
      final formattedName = '  Bob    Smith  '.getFormattedName();
      expect(formattedName, 'BS');
    });

    test('Formatting name with hyphen', () {
      final formattedName = 'Mary-Jane Watson'.getFormattedName();
      expect(formattedName, 'MW');
    });
  });
}

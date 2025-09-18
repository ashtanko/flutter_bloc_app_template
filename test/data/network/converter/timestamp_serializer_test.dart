import 'package:flutter_bloc_app_template/data/network/converter/timestamp_serializer.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const serializer = TimestampSerializer();

  group('TimestampSerializer', () {
    test('fromJson parses ISO 8601 string', () {
      final json = '2024-07-30T12:34:56Z';
      final result = serializer.fromJson(json);

      expect(result, DateTime.utc(2024, 7, 30, 12, 34, 56));
    });

    test('fromJson parses milliseconds since epoch', () {
      final timestamp = 1722346496000; // Equivalent to 2024-07-30T12:34:56Z
      final result = serializer.fromJson(timestamp);

      expect(result, DateTime.utc(2024, 7, 30, 13, 34, 56));
    });

    test('fromJson returns null for unsupported type', () {
      final result = serializer.fromJson(3.14);
      expect(result, isNull);
    });

    test('toJson returns ISO 8601 string in UTC', () {
      final date = DateTime.utc(2024, 7, 30, 12, 34, 56);
      final result = serializer.toJson(date);

      expect(result, '2024-07-30T12:34:56.000Z');
    });

    test('toJson returns null for null input', () {
      final result = serializer.toJson(null);
      expect(result, isNull);
    });
  });
}

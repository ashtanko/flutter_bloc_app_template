import 'package:flutter_bloc_app_template/utils/pair.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Pair', () {
    test('should store and expose first and second values', () {
      const pair = Pair<int, String>(1, 'one');

      expect(pair.first, 1);
      expect(pair.second, 'one');
    });

    test('should have correct toString representation', () {
      const pair = Pair<int, String>(1, 'one');

      expect(pair.toString(), 'Pair(1, one)');
    });

    test('should compare equal for identical values', () {
      const a = Pair<int, String>(1, 'one');
      const b = Pair<int, String>(1, 'one');

      expect(a, equals(b));
      expect(a.hashCode, equals(b.hashCode));
    });

    test('should not be equal if first or second values differ', () {
      const a = Pair<int, String>(1, 'one');
      const b = Pair<int, String>(2, 'one');
      const c = Pair<int, String>(1, 'two');

      expect(a == b, isFalse);
      expect(a == c, isFalse);
    });

    test('should be equal if identical (same instance)', () {
      const pair = Pair(1, 'one');

      expect(pair == pair, isTrue);
    });

    test('should not be equal to unrelated types', () {
      const pair = Pair(1, 'one');

      expect(pair, isNot(equals('Pair(1, one)')));
    });
  });
}

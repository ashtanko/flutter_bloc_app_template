import 'package:flutter_bloc_app_template/features/roadster/model/mission.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Mission', () {
    test('two objects with same values should be equal', () {
      final m1 = Mission(name: 'Apollo 11', isPrimary: true);
      final m2 = Mission(name: 'Apollo 11', isPrimary: true);

      expect(m1, equals(m2));
      expect(m1.hashCode, equals(m2.hashCode));
    });

    test('objects with different name should not be equal', () {
      final m1 = Mission(name: 'Apollo 11', isPrimary: true);
      final m2 = Mission(name: 'Apollo 12', isPrimary: true);

      expect(m1, isNot(equals(m2)));
    });

    test('objects with different isPrimary should not be equal', () {
      final m1 = Mission(name: 'Apollo 11', isPrimary: true);
      final m2 = Mission(name: 'Apollo 11', isPrimary: false);

      expect(m1, isNot(equals(m2)));
    });

    test('props should contain name and isPrimary', () {
      final mission = Mission(name: 'Apollo 11', isPrimary: true);

      expect(mission.props, containsAll(['Apollo 11', true]));
    });
  });
}

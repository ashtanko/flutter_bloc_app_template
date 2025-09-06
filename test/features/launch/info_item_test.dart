import 'package:flutter/widgets.dart';
import 'package:flutter_bloc_app_template/features/launch/info_item.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('InfoItem', () {
    test('supports value equality', () {
      final item1 = InfoItem('Label', 'Value', const Key('testKey'));
      final item2 = InfoItem('Label', 'Value', const Key('testKey'));

      expect(item1, equals(item2));
      expect(item1.hashCode, equals(item2.hashCode));
    });

    test('detects inequality when fields differ', () {
      final base = InfoItem('Label', 'Value', const Key('testKey'));

      final differentLabel =
          InfoItem('OtherLabel', 'Value', const Key('testKey'));
      final differentValue =
          InfoItem('Label', 'OtherValue', const Key('testKey'));
      final differentKey = InfoItem('Label', 'Value', const Key('otherKey'));

      expect(base, isNot(equals(differentLabel)));
      expect(base, isNot(equals(differentValue)));
      expect(base, isNot(equals(differentKey)));
    });

    test('props should contain label, value, key', () {
      final item = InfoItem('Label', 'Value', const Key('testKey'));

      expect(item.props, equals(['Label', 'Value', const Key('testKey')]));
    });
  });
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/features/roadster/model/orbital_data.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OrbitalData', () {
    test('two objects with same values should be equal', () {
      final data1 = OrbitalData(
        label: 'Aphelion',
        value: '152.1 million km',
        icon: Icons.public,
      );
      final data2 = OrbitalData(
        label: 'Aphelion',
        value: '152.1 million km',
        icon: Icons.public,
      );

      expect(data1, equals(data2));
      expect(data1.hashCode, equals(data2.hashCode));
    });

    test('objects with different label should not be equal', () {
      final data1 = OrbitalData(
        label: 'Aphelion',
        value: '152.1 million km',
        icon: Icons.public,
      );
      final data2 = OrbitalData(
        label: 'Perihelion',
        value: '152.1 million km',
        icon: Icons.public,
      );

      expect(data1, isNot(equals(data2)));
    });

    test('objects with different value should not be equal', () {
      final data1 = OrbitalData(
        label: 'Aphelion',
        value: '152.1 million km',
        icon: Icons.public,
      );
      final data2 = OrbitalData(
        label: 'Aphelion',
        value: '147.1 million km',
        icon: Icons.public,
      );

      expect(data1, isNot(equals(data2)));
    });

    test('objects with different icon should not be equal', () {
      final data1 = OrbitalData(
        label: 'Aphelion',
        value: '152.1 million km',
        icon: Icons.public,
      );
      final data2 = OrbitalData(
        label: 'Aphelion',
        value: '152.1 million km',
        icon: Icons.star,
      );

      expect(data1, isNot(equals(data2)));
    });

    test('props should contain label, value and icon', () {
      final data = OrbitalData(
        label: 'Aphelion',
        value: '152.1 million km',
        icon: Icons.public,
      );

      expect(data.props,
          containsAll(['Aphelion', '152.1 million km', Icons.public]));
    });
  });
}

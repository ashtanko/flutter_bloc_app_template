import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

String _fixture(String name, String path) =>
    File('$path$name').readAsStringSync();

extension Fixture on String {
  List<dynamic> toFixture({String path = 'test/data/network/fixtures/'}) =>
      json.decode(_fixture(this, path)) as List<dynamic>;

  Map<String, dynamic> toFixtureObject(
          {String path = 'test/data/network/fixtures/'}) =>
      json.decode(_fixture(this, path)) as Map<String, dynamic>;
}

void main() {
  group('Fixture Extension', () {
    test('reads JSON list correctly', () {
      final list = 'sample_list.json'.toFixture();
      expect(list, isA<List<dynamic>>());
      expect(list.length, equals(2));
      expect(list.first['name'], equals('Item 1'));
    });

    test('reads JSON object correctly', () {
      final obj = 'sample_object.json'.toFixtureObject();
      expect(obj, isA<Map<String, dynamic>>());
      expect(obj['id'], equals(42));
      expect(obj['title'], equals('Answer'));
    });
  });

  group('_fixture function', () {
    test('reads raw JSON string from file', () {
      final content =
          _fixture('sample_object.json', 'test/data/network/fixtures/');
      expect(content, contains('"id": 42'));
      expect(content, contains('"title": "Answer"'));
    });
  });
}

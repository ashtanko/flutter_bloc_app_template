import 'dart:convert';
import 'dart:io';

String _fixture(String name, String path) =>
    File('$path$name').readAsStringSync();

extension Fixture on String {
  List<dynamic> toFixture({String path = 'test/data/network/fixtures/'}) =>
      json.decode(_fixture(this, path)) as List<dynamic>;
}

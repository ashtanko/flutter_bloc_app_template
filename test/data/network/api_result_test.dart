import 'dart:ffi';

import 'package:flutter_bloc_app_template/data/network/api_result.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ApiResult', () {
    test('success should contain correct data', () {
      final result = const ApiResult.success('Test Data');

      expect(result, isA<Success<String>>());
      expect((result as Success<String>).data, 'Test Data');
    });

    test('error should contain correct message', () {
      final result = const ApiResult<String>.error('Test Error');

      expect(result, isA<Error<String>>());
      expect((result as Error<String>).message, 'Test Error');
    });

    test('loading should be of type Loading', () {
      final result = const ApiResult<Void>.loading();

      expect(result, isA<Loading<Void>>());
    });
  });
}

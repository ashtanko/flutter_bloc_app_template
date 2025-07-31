import 'package:flutter_bloc_app_template/data/network/api_result.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ApiResult', () {
    test('should return success result with correct data', () {
      const result = ApiResult.success(42);

      final output = ApiResultWhen(result).when(
        success: (data) => 'Success with $data',
        error: (message) => 'Error: $message',
        loading: () => 'Loading...',
      );

      expect(output, 'Success with 42');
    });

    test('should return error result with correct message', () {
      const result = ApiResult<String>.error('Something went wrong');

      final output = ApiResultWhen(result).when(
        success: (data) => 'Success with $data',
        error: (message) => 'Error: $message',
        loading: () => 'Loading...',
      );

      expect(output, 'Error: Something went wrong');
    });

    test('should return loading result', () {
      const result = ApiResult<String>.loading();

      final output = ApiResultWhen(result).when(
        success: (data) => 'Success with $data',
        error: (message) => 'Error: $message',
        loading: () => 'Loading...',
      );

      expect(output, 'Loading...');
    });

    test('should throw assertion error for unknown type', () {
      final invalid = const _InvalidApiResult<int>();

      expect(
        () => ApiResultWhen(invalid).when(
          success: (data) => 'Success with $data',
          error: (message) => 'Error: $message',
          loading: () => 'Loading...',
        ),
        throwsA(isA<AssertionError>()),
      );
    });
  });
}

/// A fake invalid implementation to test the fallback case in `when`
class _InvalidApiResult<T> implements ApiResult<T> {
  const _InvalidApiResult();
}

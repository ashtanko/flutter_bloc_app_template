import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_result.freezed.dart';

@freezed
abstract class ApiResult<T> with _$ApiResult<T> {
  const factory ApiResult.success(T data) = Success<T>;

  const factory ApiResult.error(String message) = Error<T>;

  const factory ApiResult.loading() = Loading<T>;
}

extension ApiResultWhen<T> on ApiResult<T> {
  R when<R>({
    required R Function(T data) success,
    required R Function(String message) error,
    required R Function() loading,
  }) {
    if (this is Success<T>) {
      return success((this as Success<T>).data);
    } else if (this is Error<T>) {
      return error((this as Error<T>).message);
    } else if (this is Loading<T>) {
      return loading();
    }
    throw AssertionError('Unexpected type: $this');
  }
}

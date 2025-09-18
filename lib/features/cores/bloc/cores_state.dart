part of 'cores_bloc.dart';

@Freezed()
abstract class CoresState with _$CoresState {
  const factory CoresState.loading() = CoresLoadingState;

  const factory CoresState.success({
    @Default([]) List<CoreResource> cores,
    List<CoreResource>? filteredCores,
    @Default('') String? searchQuery,
    CoreFilterStatus? statusFilter,
  }) = CoresSuccessState;

  const factory CoresState.error(String message) = CoresErrorState;

  const factory CoresState.empty() = CoresEmptyState;

  const factory CoresState.notFound({
    @Default('') String searchQuery,
  }) = CoresNotFoundState;
}

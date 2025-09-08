part of 'cores_bloc.dart';

@Freezed()
abstract class CoresState with _$CoresState {
  const factory CoresState.loading() = CoresLoadingState;

  const factory CoresState.success({
    @Default([]) List<CoreResource> cores,
    List<CoreResource>? filteredCores,
    @Default('') String? searchQuery,
    String? statusFilter,
  }) = CoresSuccessState;

  const factory CoresState.error() = CoresErrorState;

  const factory CoresState.empty() = CoresEmptyState;
}

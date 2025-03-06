part of 'launches_bloc.dart';

@Freezed()
abstract class LaunchesState with _$LaunchesState {
  const factory LaunchesState.loading() = LaunchesLoadingState;

  const factory LaunchesState.success({
    @Default([]) List<LaunchResource> launches,
  }) = LaunchesSuccessState;

  const factory LaunchesState.error() = LaunchesErrorState;

  const factory LaunchesState.empty() = LaunchesEmptyState;
}

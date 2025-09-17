part of 'launch_bloc.dart';

@Freezed()
abstract class LaunchState with _$LaunchState {
  const factory LaunchState.loading() = LaunchLoadingState;

  const factory LaunchState.success({
    required LaunchFullResource launch,
  }) = LaunchSuccessState;

  const factory LaunchState.error() = LaunchErrorState;
}

part of 'roadster_bloc.dart';

@Freezed()
abstract class RoadsterState with _$RoadsterState {
  const factory RoadsterState.loading() = RoadsterLoadingState;

  const factory RoadsterState.success({
    required RoadsterResource roadster,
  }) = RoadsterSuccessState;

  const factory RoadsterState.error() = RoadsterErrorState;
}

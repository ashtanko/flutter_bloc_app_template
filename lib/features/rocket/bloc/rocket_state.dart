part of 'rocket_bloc.dart';

@Freezed()
abstract class RocketState with _$RocketState {
  const factory RocketState.loading() = RocketLoadingState;

  const factory RocketState.success({
    required RocketResource rocket,
  }) = RocketSuccessState;

  const factory RocketState.error() = RocketErrorState;
}

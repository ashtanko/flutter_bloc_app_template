part of 'rockets_bloc.dart';

@Freezed()
abstract class RocketsState with _$RocketsState {
  const factory RocketsState.loading() = RocketsLoadingState;

  const factory RocketsState.success({
    @Default([]) List<RocketResource> rockets,
  }) = RocketsSuccessState;

  const factory RocketsState.error() = RocketsErrorState;

  const factory RocketsState.empty() = RocketsEmptyState;
}

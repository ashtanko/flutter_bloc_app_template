part of 'launches_bloc.dart';

@Freezed()
abstract class LaunchesEvent with _$LaunchesEvent {
  const factory LaunchesEvent.load({
    @Default(false) bool reload,
    LaunchesFilter? filter,
  }) = LaunchesLoadEvent;

  const factory LaunchesEvent.refresh() = _LaunchesRefreshEvent;
}

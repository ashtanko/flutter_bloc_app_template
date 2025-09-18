part of 'launch_bloc.dart';

@Freezed()
abstract class LaunchEvent with _$LaunchEvent {
  const factory LaunchEvent.load({
    @Default(-1) int flightNumber,
  }) = LaunchLoadEvent;
}

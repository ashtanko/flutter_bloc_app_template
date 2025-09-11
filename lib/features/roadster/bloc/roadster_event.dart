part of 'roadster_bloc.dart';

@Freezed()
abstract class RoadsterEvent with _$RoadsterEvent {
  const factory RoadsterEvent.load() = RoadsterLoadEvent;
}

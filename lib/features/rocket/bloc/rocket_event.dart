part of 'rocket_bloc.dart';

@Freezed()
abstract class RocketEvent with _$RocketEvent {
  const factory RocketEvent.load({
    @Default('falcon1') String rocketId,
  }) = RocketLoadEvent;
}

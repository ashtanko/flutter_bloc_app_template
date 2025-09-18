part of 'rockets_bloc.dart';

@Freezed()
abstract class RocketsEvent with _$RocketsEvent {
  const factory RocketsEvent.load({
    @Default(false) bool reload,
  }) = RocketsLoadEvent;

  const factory RocketsEvent.refresh() = _RocketsRefreshEvent;
}

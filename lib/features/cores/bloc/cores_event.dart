part of 'cores_bloc.dart';

@Freezed()
abstract class CoresEvent with _$CoresEvent {
  const factory CoresEvent.load({
    @Default(false) bool reload,
  }) = CoresLoadEvent;

  const factory CoresEvent.refresh() = CoresRefreshEvent;
}

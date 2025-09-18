import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_app_template/models/launch/launch_full_resource.dart';
import 'package:flutter_bloc_app_template/repository/launches_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'launch_bloc.freezed.dart';
part 'launch_event.dart';
part 'launch_state.dart';

class LaunchBloc extends Bloc<LaunchEvent, LaunchState> {
  LaunchBloc(this._repository) : super(const LaunchState.loading()) {
    on<LaunchLoadEvent>((event, emit) async {
      emit(const LaunchState.loading());
      try {
        final launch = await _repository.getLaunch(event.flightNumber);
        emit(LaunchState.success(launch: launch));
      } catch (e) {
        emit(const LaunchState.error());
      }
    });
  }

  final LaunchesRepository _repository;
}

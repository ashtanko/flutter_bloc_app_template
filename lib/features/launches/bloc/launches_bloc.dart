import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_app_template/models/launch.dart';
import 'package:flutter_bloc_app_template/models/launches_filter.dart';
import 'package:flutter_bloc_app_template/repository/launches_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'launches_bloc.freezed.dart';
part 'launches_event.dart';
part 'launches_state.dart';

class LaunchesBloc extends Bloc<LaunchesEvent, LaunchesState> {
  LaunchesBloc(this._repository) : super(const LaunchesState.loading()) {
    on<LaunchesLoadEvent>((event, emit) async {
      emit(const LaunchesState.loading());
      try {
        final launches = await _repository.getLaunches(
          order: event.filter?.order?.value,
        );
        if (launches.isEmpty) {
          emit(const LaunchesState.empty());
        } else {
          emit(LaunchesState.success(launches: launches));
        }
      } catch (e) {
        emit(const LaunchesState.error());
      }
    });
  }

  final LaunchesRepository _repository;
}

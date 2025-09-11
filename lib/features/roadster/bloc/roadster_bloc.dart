import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_app_template/models/roadster/roadster_resource.dart';
import 'package:flutter_bloc_app_template/repository/roadster_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'roadster_bloc.freezed.dart';
part 'roadster_event.dart';
part 'roadster_state.dart';

class RoadsterBloc extends Bloc<RoadsterEvent, RoadsterState> {
  RoadsterBloc(this._repository) : super(const RoadsterState.loading()) {
    on<RoadsterLoadEvent>((event, emit) async {
      emit(const RoadsterState.loading());
      try {
        final roadster = await _repository.getRoadster();
        emit(RoadsterState.success(roadster: roadster));
      } catch (e) {
        emit(const RoadsterState.error());
      }
    });
  }

  final RoadsterRepository _repository;
}

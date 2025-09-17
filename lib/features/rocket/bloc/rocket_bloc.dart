import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_app_template/index.dart';
import 'package:flutter_bloc_app_template/repository/rocket_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rocket_bloc.freezed.dart';
part 'rocket_event.dart';
part 'rocket_state.dart';

class RocketBloc extends Bloc<RocketEvent, RocketState> {
  RocketBloc(this._repository) : super(const RocketState.loading()) {
    on<RocketLoadEvent>((event, emit) async {
      emit(const RocketState.loading());
      try {
        final rocket = await _repository.getRocket(event.rocketId);
        emit(RocketState.success(rocket: rocket));
      } catch (e) {
        emit(const RocketState.error());
      }
    });
  }

  final RocketRepository _repository;
}

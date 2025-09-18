import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_app_template/index.dart';
import 'package:flutter_bloc_app_template/repository/rocket_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rockets_bloc.freezed.dart';
part 'rockets_event.dart';
part 'rockets_state.dart';

class RocketsBloc extends Bloc<RocketsEvent, RocketsState> {
  RocketsBloc(this._repository) : super(const RocketsState.loading()) {
    on<RocketsLoadEvent>((event, emit) async {
      emit(const RocketsState.loading());
      try {
        final rockets = await _repository.getRockets();
        if (rockets.isEmpty) {
          emit(const RocketsState.empty());
        } else {
          emit(RocketsState.success(rockets: rockets));
        }
      } catch (e) {
        emit(const RocketsState.error());
      }
    });
  }

  final RocketRepository _repository;
}

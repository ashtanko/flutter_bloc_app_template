import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_app_template/models/core/core_resource.dart';
import 'package:flutter_bloc_app_template/repository/cores_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cores_bloc.freezed.dart';
part 'cores_event.dart';
part 'cores_state.dart';

class CoresBloc extends Bloc<CoresEvent, CoresState> {
  CoresBloc(this._repository) : super(const CoresState.loading()) {
    on<CoresLoadEvent>((event, emit) async {
      emit(const CoresState.loading());
      try {
        final cores = await _repository.getCores(
          hasId: true,
          limit: null,
          offset: null,
        );
        allCores = cores;

        if (cores.isEmpty) {
          emit(const CoresState.empty());
        } else {
          emit(CoresState.success(cores: cores));
        }
      } catch (e) {
        emit(const CoresState.error());
      }
    });

    on<CoresFilterEvent>((event, emit) async {
      if (allCores.isEmpty) return;

      final filtered = allCores.where((core) {
        if(core.coreSerial == null) return false;
        if(core.missions == null) return false;

        final matchesSearch = event.searchQuery.isEmpty ||
            core.coreSerial!
                .toLowerCase()
                .contains(event.searchQuery.toLowerCase()) ||
            core.missions!.any((m) => m.name!
                .toLowerCase()
                .contains(event.searchQuery.toLowerCase()));

        final matchesStatus = event.statusFilter == null ||
            event.statusFilter == 'All' ||
            core.status == event.statusFilter;

        return matchesSearch && matchesStatus;
      }).toList();

      emit(CoresState.success(cores: filtered));
    });

    on<CoresRefreshEvent>((event, emit) async {
      emit(const CoresState.loading());
      try {
        final cores = await _repository.getCores(
          hasId: true,
          limit: null,
          offset: null,
        );
        allCores = cores;

        if (cores.isEmpty) {
          emit(const CoresState.empty());
        } else {
          emit(CoresState.success(cores: cores));
        }
      } catch (e) {
        emit(const CoresState.error());
      }
    });
  }

  final CoresRepository _repository;
  List<CoreResource> allCores = [];
}

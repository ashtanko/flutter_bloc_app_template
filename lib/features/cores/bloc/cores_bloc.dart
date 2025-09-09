import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_app_template/features/cores/model/core_filter_status.dart';
import 'package:flutter_bloc_app_template/features/cores/utils/cores_ext.dart';
import 'package:flutter_bloc_app_template/models/core/core_resource.dart';
import 'package:flutter_bloc_app_template/repository/cores_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cores_bloc.freezed.dart';
part 'cores_event.dart';
part 'cores_state.dart';

class CoresBloc extends Bloc<CoresEvent, CoresState> {
  CoresBloc(this._repository) : super(const CoresState.loading()) {
    on<CoresLoadEvent>(_onLoad);
    on<CoresRefreshEvent>(_onRefresh);
    on<CoresFilterEvent>(_onFilter);
  }

  final CoresRepository _repository;
  List<CoreResource> allCores = [];

  Future<void> _onLoad(
    CoresLoadEvent event,
    Emitter<CoresState> emit,
  ) async {
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
        emit(CoresState.success(cores: cores, filteredCores: cores));
      }
    } catch (e) {
      emit(CoresState.error(e.toString()));
    }
  }

  Future<void> _onRefresh(
    CoresRefreshEvent event,
    Emitter<CoresState> emit,
  ) async {
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
        emit(CoresState.success(cores: cores, filteredCores: cores));
      }
    } catch (e) {
      emit(CoresState.error(e.toString()));
    }
  }

  void _onFilter(
    CoresFilterEvent event,
    Emitter<CoresState> emit,
  ) {
    if (allCores.isEmpty) {
      emit(const CoresState.empty());
      return;
    }

    final filtered = allCores.where((core) {
      final matchesSearch = event.searchQuery.isEmpty ||
          (core.coreSerial
                  ?.toLowerCase()
                  .contains(event.searchQuery.toLowerCase()) ??
              false) ||
          (core.missions?.any((m) =>
                  m.name
                      ?.toLowerCase()
                      .contains(event.searchQuery.toLowerCase()) ??
                  false) ??
              false);

      final matchesStatus = event.statusFilter == null ||
          event.statusFilter == CoreFilterStatus.all ||
          core.status.toStatus() == event.statusFilter;

      return matchesSearch && matchesStatus;
    }).toList();

    if (filtered.isEmpty) {
      emit(CoresState.notFound(searchQuery: event.searchQuery));
    } else {
      emit(CoresState.success(
        cores: allCores,
        filteredCores: filtered,
        searchQuery: event.searchQuery,
        statusFilter: event.statusFilter,
      ));
    }
  }
}

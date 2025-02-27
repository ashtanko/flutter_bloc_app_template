import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc_app_template/models/launch.dart';
import 'package:flutter_bloc_app_template/repository/launches_repository.dart';

class LaunchesBloc extends Bloc<LaunchesEvent, LaunchesState> {
  LaunchesBloc({required this.repository}) : super(LaunchesInitial()) {
    on<LaunchesFetched>(_onStarted);
  }

  final LaunchesRepository repository;

  void _onStarted(LaunchesFetched event, Emitter<LaunchesState> emit) async {
    emit(LaunchesLoading());
    try {
      final items = await repository.getLaunches();

      if (items.isEmpty) {
        emit(LaunchesEmpty());
      } else {
        emit(LaunchesLoaded(items));
      }
    } catch (_) {
      emit(LaunchesLoadFailure());
    }
  }
}

abstract class LaunchesState extends Equatable {
  @override
  List<Object> get props => [];
}

class LaunchesInitial extends LaunchesState {}

class LaunchesLoading extends LaunchesState {}

class LaunchesLoaded extends LaunchesState {
  LaunchesLoaded(this.launches);

  final List<LaunchResource> launches;

  @override
  List<Object> get props => [launches];
}

class LaunchesEmpty extends LaunchesState {}

class LaunchesLoadFailure extends LaunchesState {}

class LaunchesEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class LaunchesFetched extends LaunchesEvent {}

part of 'init_bloc.dart';

abstract class InitState extends Equatable {
  const InitState();

  @override
  List<Object> get props => [];
}

class Initial extends InitState {}

class OpenApp extends InitState {}

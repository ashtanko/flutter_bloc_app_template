part of 'email_list_bloc.dart';

abstract class EmailListEvent extends Equatable {
  const EmailListEvent();

  @override
  List<Object?> get props => [];
}

class EmailListFetched extends EmailListEvent {}

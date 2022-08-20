part of 'email_list_bloc.dart';

abstract class EmailListState extends Equatable {
  const EmailListState();

  @override
  List<Object> get props => [];
}

class EmailListInitial extends EmailListState {}

class EmailListLoading extends EmailListState {}

class EmailListLoaded extends EmailListState {
  EmailListLoaded(this.messages);

  final List<Email> messages;

  @override
  List<Object> get props => [messages];
}

class EmailListEmpty extends EmailListState {}

class EmailListLoadFailure extends EmailListState {}

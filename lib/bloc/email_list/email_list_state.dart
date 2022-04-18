part of 'email_list_bloc.dart';

abstract class EmailListState extends Equatable {
  const EmailListState();
}

class EmailListInitial extends EmailListState {
  @override
  List<Object> get props => [];
}

class EmailListLoading extends EmailListState {
  @override
  List<Object> get props => [];
}

class EmailListLoaded extends EmailListState {
  EmailListLoaded(this.messages);

  final List<Email> messages;

  @override
  List<Object> get props => [messages];
}

class EmailListEmpty extends EmailListState {
  @override
  List<Object> get props => [];
}

class EmailListLoadFailure extends EmailListState {
  @override
  List<Object> get props => [];
}

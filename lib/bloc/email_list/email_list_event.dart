part of 'email_list_bloc.dart';

abstract class EmailListEvent extends Equatable {
  const EmailListEvent();
}

class EmailListFetched extends EmailListEvent {
  @override
  List<Object?> get props => [];
}

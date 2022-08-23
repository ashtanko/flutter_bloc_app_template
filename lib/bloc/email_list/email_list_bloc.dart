import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_app_template/models/email.dart';
import 'package:flutter_bloc_app_template/repository/email_list_repository.dart';

part 'email_list_event.dart';

part 'email_list_state.dart';

class EmailListBloc extends Bloc<EmailListEvent, EmailListState> {
  EmailListBloc({required this.messagesRepository})
      : super(EmailListInitial()) {
    on<EmailListFetched>(_onStarted);
  }

  final EmailListRepository messagesRepository;

  void _onStarted(EmailListFetched event, Emitter<EmailListState> emit) async {
    emit(EmailListLoading());
    try {
      final items = await messagesRepository.loadData();

      if (items.isEmpty) {
        emit(EmailListEmpty());
      } else {
        emit(EmailListLoaded(items));
      }
    } catch (_) {
      emit(EmailListLoadFailure());
    }
  }
}

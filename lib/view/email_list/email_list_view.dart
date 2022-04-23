import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart';
import 'package:flutter_bloc_app_template/index.dart';

class EmailListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EmailListBloc, EmailListState>(
      builder: (context, state) {
        if (state is EmailListInitial) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state is EmailListLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state is EmailListEmpty) {
          return Center(
            child: Text(S.of(context).emptyList),
          );
        }

        if (state is EmailListLoaded) {
          var messages = state.messages;

          return ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            primary: false,
            itemBuilder: (context, index) => EmailListItem(
              email: messages[index],
              onTap: () {
                print('click');
              },
            ),
            itemCount: messages.length,
          );
        }

        if (state is EmailListLoadFailure) {
          return ErrorScreen();
        }

        return EmptyWidget();
      },
    );
  }
}

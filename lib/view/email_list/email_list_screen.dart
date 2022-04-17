import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart';
import 'package:flutter_bloc_app_template/index.dart';

class EmailListScreen extends StatelessWidget {
  const EmailListScreen({
    Key? key,
  }) : super(key: key);

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).messagesTitle),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.restorablePushNamed(context, Settings.routeName);
            },
          ),
        ],
      ),
      body: Scaffold(
        body: Container(
          height: double.infinity,
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: _EmailListView(),
          ),
        ),
      ),
    );
  }
}

class _EmailListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EmailListBloc, EmailListState>(
      builder: (context, state) {
        if (state is EmailListLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state is EmailListLoaded) {
          var messages = state.messages;

          return ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            primary: false,
            itemBuilder: (context, index) => EmailListItem(
              message: messages[index],
              onTap: () {
                print('click');
              },
            ),
            itemCount: messages.length,
          );
        }

        if (state is EmailListLoadFailure) {
          return const Text('Error');
        }

        return EmptyWidget();
      },
    );
  }
}

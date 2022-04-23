import 'package:flutter/material.dart';
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
            icon: const Icon(AppIcons.toolbarSettings),
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
            child: EmailListView(),
          ),
        ),
      ),
    );
  }
}

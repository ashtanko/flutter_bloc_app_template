import 'package:flutter_bloc_app_template/index.dart';
import 'package:material_ui/material_ui.dart';

class EmailListScreen extends StatelessWidget {
  const EmailListScreen({
    super.key,
  });

  static const routeName = '/';

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(context.emailsTitle),
        ),
        body: RefreshIndicator(
          onRefresh: () async {
            await Future<void>.delayed(const Duration(seconds: 1));
          },
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: EmailListView(),
          ),
        ),
      );
}

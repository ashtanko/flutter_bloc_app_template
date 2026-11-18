import 'package:flutter_bloc_app_template/generated/l10n.dart';
import 'package:material_ui/material_ui.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  static const routeName = '/news';

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white30,
        appBar: AppBar(
          title: Text(S.of(context).newsScreen),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(),
        ),
      );
}

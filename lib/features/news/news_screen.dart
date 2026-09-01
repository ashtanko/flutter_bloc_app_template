import 'package:flutter/material.dart';
import 'package:flutter_bloc_app_template/l10n/app_localizations.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  static const routeName = '/news';

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white30,
        appBar: AppBar(
          title: Text(AppLocalizations.of(context).newsScreen),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(),
        ),
      );
}

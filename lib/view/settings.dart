import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart';
import 'package:flutter_bloc_app_template/index.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  static const routeName = '/settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).settingsTitle),
      ),
      body: ListView(
        children: <Widget>[
          BlocConsumer<ThemeCubit, ThemeState>(
            builder: (context, state) => SettingCell.icon(
              icon: AppIcons.settingsTheme,
              title: S.of(context).themeTitle,
              onTap: () async => showBottomSheetDialog(
                context: context,
                padding: EdgeInsets.zero,
                children: [
                  ThemeDialogCell<ThemeState>(
                    title: S.of(context).darkThemeTitle,
                    groupValue: state,
                    value: ThemeState.dark,
                    onChanged: (value) => updateTheme(context, value),
                  ),
                  ThemeDialogCell<ThemeState>(
                    title: S.of(context).lightThemeTitle,
                    groupValue: state,
                    value: ThemeState.light,
                    onChanged: (value) => updateTheme(context, value),
                  ),
                  ThemeDialogCell<ThemeState>(
                    title: S.of(context).yellowThemeTitle,
                    groupValue: state,
                    value: ThemeState.yellow,
                    onChanged: (value) => updateTheme(context, value),
                  ),
                  ThemeDialogCell<ThemeState>(
                    title: S.of(context).systemThemeTitle,
                    groupValue: state,
                    value: ThemeState.system,
                    onChanged: (value) => updateTheme(context, value),
                  ),
                ],
              ),
            ),
            listener: (context, state) => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }

  void updateTheme(BuildContext context, ThemeState value) =>
      context.read<ThemeCubit>().updateTheme(value);
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_app_template/bloc/theme/app_theme.dart';
import 'package:flutter_bloc_app_template/generated/l10n.dart';
import 'package:flutter_bloc_app_template/index.dart';

import 'settings.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  static const routeName = '/settings';

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(S.of(context).settingsTitle),
        ),
        body: ListView(
          children: <Widget>[
            BlocConsumer<ThemeCubit, AppTheme>(
              builder: (context, state) => SettingCell.icon(
                icon: AppIcons.settingsTheme,
                title: S.of(context).themeTitle,
                onTap: () async => showBottomSheetDialog(
                  context: context,
                  padding: EdgeInsets.zero,
                  children: [
                    ThemeDialogCell<AppTheme>(
                      title: S.of(context).darkThemeTitle,
                      groupValue: state,
                      value: AppTheme.dark,
                      onChanged: (value) => updateTheme(context, value),
                    ),
                    ThemeDialogCell<AppTheme>(
                      title: S.of(context).lightThemeTitle,
                      groupValue: state,
                      value: AppTheme.light,
                      onChanged: (value) => updateTheme(context, value),
                    ),
                    ThemeDialogCell<AppTheme>(
                      title: S.of(context).lightGoldThemeTitle,
                      groupValue: state,
                      value: AppTheme.lightGold,
                      onChanged: (value) => updateTheme(context, value),
                    ),
                    ThemeDialogCell<AppTheme>(
                      title: S.of(context).lightMintThemeTitle,
                      groupValue: state,
                      value: AppTheme.lightMint,
                      onChanged: (value) => updateTheme(context, value),
                    ),
                    ThemeDialogCell<AppTheme>(
                      title: S.of(context).darkGoldThemeTitle,
                      groupValue: state,
                      value: AppTheme.darkGold,
                      onChanged: (value) => updateTheme(context, value),
                    ),
                    ThemeDialogCell<AppTheme>(
                      title: S.of(context).darkMintThemeTitle,
                      groupValue: state,
                      value: AppTheme.darkMint,
                      onChanged: (value) => updateTheme(context, value),
                    ),
                    ThemeDialogCell<AppTheme>(
                      title: S.of(context).systemThemeTitle,
                      groupValue: state,
                      value: AppTheme.system,
                      onChanged: (value) => updateTheme(context, value),
                    ),
                    ThemeDialogCell<AppTheme>(
                      title: S.of(context).experimentalThemeTitle,
                      groupValue: state,
                      value: AppTheme.experimental,
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

  void updateTheme(BuildContext context, AppTheme value) =>
      context.read<ThemeCubit>().updateTheme(value);
}

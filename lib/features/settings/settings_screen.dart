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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).settingsTitle),
      ),
      body: ListView(
        children: <Widget>[
          BlocConsumer<ThemeCubit, AppThemeSettings>(
            builder: (context, state) => SettingCell.icon(
              icon: AppIcons.settingsTheme,
              title: S.of(context).themeTitle,
              onTap: () async => showBottomSheetDialog(
                context: context,
                padding: EdgeInsets.zero,
                children: [
                  ThemeDialogCell<AppThemeSettings>(
                    title: S.of(context).darkThemeTitle,
                    groupValue: state,
                    value: AppThemeSettings(
                      darkTheme: DarkThemePreference(),
                      appTheme: AppTheme.dark,
                    ),
                    onChanged: (value) => updateTheme(context, value),
                  ),
                  ThemeDialogCell<AppThemeSettings>(
                    title: S.of(context).lightThemeTitle,
                    groupValue: state,
                    value: AppThemeSettings(
                      darkTheme: DarkThemePreference(),
                      appTheme: AppTheme.light,
                    ),
                    onChanged: (value) => updateTheme(context, value),
                  ),
                  ThemeDialogCell<AppThemeSettings>(
                    title: S.of(context).lightGoldThemeTitle,
                    groupValue: state,
                    value: AppThemeSettings(
                      darkTheme: DarkThemePreference(),
                      appTheme: AppTheme.lightGold,
                    ),
                    onChanged: (value) => updateTheme(context, value),
                  ),
                  ThemeDialogCell<AppThemeSettings>(
                    title: S.of(context).lightMintThemeTitle,
                    groupValue: state,
                    value: AppThemeSettings(
                      darkTheme: DarkThemePreference(),
                      appTheme: AppTheme.lightMint,
                    ),
                    onChanged: (value) => updateTheme(context, value),
                  ),
                  ThemeDialogCell<AppThemeSettings>(
                    title: S.of(context).darkGoldThemeTitle,
                    groupValue: state,
                    value: AppThemeSettings(
                      darkTheme: DarkThemePreference(),
                      appTheme: AppTheme.darkGold,
                    ),
                    onChanged: (value) => updateTheme(context, value),
                  ),
                  ThemeDialogCell<AppThemeSettings>(
                    title: S.of(context).darkMintThemeTitle,
                    groupValue: state,
                    value: AppThemeSettings(
                      darkTheme: DarkThemePreference(),
                      appTheme: AppTheme.darkMint,
                    ),
                    onChanged: (value) => updateTheme(context, value),
                  ),
                  ThemeDialogCell<AppThemeSettings>(
                    title: S.of(context).systemThemeTitle,
                    groupValue: state,
                    value: AppThemeSettings(
                      darkTheme: DarkThemePreference(),
                      appTheme: AppTheme.system,
                    ),
                    onChanged: (value) => updateTheme(context, value),
                  ),
                  ThemeDialogCell<AppThemeSettings>(
                    title: S.of(context).experimentalThemeTitle,
                    groupValue: state,
                    value: AppThemeSettings(
                      darkTheme: DarkThemePreference(),
                      appTheme: AppTheme.experimental,
                    ),
                    onChanged: (value) => updateTheme(context, value),
                  ),
                ],
              ),
            ),
            listener: (context, state) {
              // Navigator.of(context).pop();
            },
          ),
          SettingItem(
            key: const Key('appearance'),
            title: context.appearanceSettingsItem,
            description: context.appearanceSettingsItemDescription,
            icon: Icons.color_lens_outlined,
            onClick: () {
              NavigationService.of(context).navigateTo(Routes.appearance);
            },
          ),
          SettingItem(
            key: const Key('about'),
            title: context.aboutSettingsItem,
            description: context.aboutSettingsItemDescription,
            icon: Icons.info_outline,
            onClick: () {},
          ),
        ],
      ),
    );
  }

  void updateTheme(BuildContext context, AppThemeSettings value) =>
      context.read<ThemeCubit>().updateTheme(value);
}

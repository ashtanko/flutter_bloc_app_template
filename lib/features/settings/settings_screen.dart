import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_app_template/bloc/theme/app_theme.dart';
import 'package:flutter_bloc_app_template/index.dart';
import 'package:flutter_bloc_app_template/l10n/app_localizations.dart';

import 'settings.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  static const routeName = '/settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).settingsTitle),
      ),
      body: ListView(
        children: <Widget>[
          SettingCell.icon(
            icon: AppIcons.settingsTheme,
            title: AppLocalizations.of(context).themeTitle,
            onTap: () async => _showThemeSheet(context),
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
            key: const Key('roadster'),
            title: AppLocalizations.of(context).roadsterTitle,
            description: AppLocalizations.of(context).roadsterDescription,
            icon: Icons.rocket_launch,
            onClick: () {
              NavigationService.of(context).navigateTo(Routes.roadster);
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

  /// Opens the palette sheet.
  ///
  /// The sheet is its own route, so it gets an explicit [BlocProvider.value]
  /// rather than inheriting one: providers are route-scoped, and this screen
  /// should not depend on the cubit happening to sit above the navigator.
  /// The [BlocBuilder] is what keeps the tick following the selection instead
  /// of going stale until the sheet is closed and reopened.
  Future<void> _showThemeSheet(BuildContext context) {
    final themeCubit = context.read<ThemeCubit>();

    return showBottomSheetDialog(
      context: context,
      padding: EdgeInsets.zero,
      children: [
        BlocProvider<ThemeCubit>.value(
          value: themeCubit,
          child: BlocBuilder<ThemeCubit, AppThemeSettings>(
            builder: (context, state) => Column(
              mainAxisSize: MainAxisSize.min,
              children: _themeCells(context, state),
            ),
          ),
        ),
      ],
    );
  }

  /// The palette rows of the theme sheet.
  ///
  /// Each cell compares on [AppTheme] alone — comparing whole
  /// [AppThemeSettings] left every row unticked once the Appearance screen
  /// had changed the theme-mode preference.
  List<Widget> _themeCells(BuildContext context, AppThemeSettings state) {
    final l10n = AppLocalizations.of(context);

    return [
      _themeCell(context, state, l10n.darkThemeTitle, AppTheme.dark),
      _themeCell(context, state, l10n.lightThemeTitle, AppTheme.light),
      _themeCell(context, state, l10n.lightGoldThemeTitle, AppTheme.lightGold),
      _themeCell(context, state, l10n.lightMintThemeTitle, AppTheme.lightMint),
      _themeCell(context, state, l10n.darkGoldThemeTitle, AppTheme.darkGold),
      _themeCell(context, state, l10n.darkMintThemeTitle, AppTheme.darkMint),
      _themeCell(context, state, l10n.systemThemeTitle, AppTheme.system),
      _themeCell(
        context,
        state,
        l10n.experimentalThemeTitle,
        AppTheme.experimental,
      ),
    ];
  }

  Widget _themeCell(
    BuildContext context,
    AppThemeSettings state,
    String title,
    AppTheme theme,
  ) =>
      ThemeDialogCell<AppTheme>(
        title: title,
        groupValue: state.appTheme,
        value: theme,
        // copyWith keeps the theme-mode preference that the Appearance screen
        // owns; rebuilding AppThemeSettings from scratch silently reset it.
        onChanged: (value) =>
            updateTheme(context, state.copyWith(appTheme: value)),
      );

  void updateTheme(BuildContext context, AppThemeSettings value) =>
      context.read<ThemeCubit>().updateTheme(value);
}
